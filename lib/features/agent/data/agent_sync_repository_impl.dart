import 'dart:async';

import 'package:drift/drift.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/error/failure_messages.dart';
import '../../../core/localization/app_locales.dart';
import '../../../core/storage/local_database.dart';
import '../../../l10n/app_localizations.dart';
import '../domain/agent_sync_repository.dart';
import '../domain/seat_correction.dart';
import '../domain/sync_log_entry.dart';
import 'agent_offline_cache.dart';
import 'agent_sync_remote_data_source.dart';

/// Implémentation du moteur de synchronisation (CLAUDE.md §6).
///
/// Deux responsabilités : télécharger le paquet du jour, et pousser l'outbox.
/// La pose de statut (`syncing` → `synced`/`failed`/de retour à `pending`) se
/// fait toujours en base pour que `connectionSnapshotProvider` — qui observe
/// la même table — reflète l'état réel sans passer par cette classe.
class AgentSyncRepositoryImpl implements AgentSyncRepository {
  AgentSyncRepositoryImpl({required this.database, required this.remote});

  final LocalDatabase database;
  final AgentSyncRemoteDataSource remote;

  /// Garde de ré-entrance : un seul envoi à la fois (CLAUDE.md §6). Un appel
  /// pendant qu'un autre est en cours reçoit le même résultat plutôt que d'en
  /// déclencher un second.
  Future<void>? _inFlight;

  final StreamController<SeatCorrection> _seatCorrections =
      StreamController<SeatCorrection>.broadcast();

  @override
  Stream<SeatCorrection> get seatCorrections => _seatCorrections.stream;

  @override
  Future<void> downloadOfflineData() async {
    try {
      final payload = await remote.offlineData();
      await AgentOfflineCache(database).write(payload);
    } on Failure {
      // Hors réseau ou serveur indisponible : le cache du matin précédent
      // reste utilisable, rien à signaler pour un rafraîchissement silencieux.
    }
  }

  @override
  Future<void> runSync() {
    return _inFlight ??= _runSyncLocked().whenComplete(() {
      _inFlight = null;
    });
  }

  @override
  Future<void> retryFailed() async {
    await (database.update(
      database.outboxEntries,
    )..where((row) => row.status.equalsValue(OutboxStatus.failed))).write(
      const OutboxEntriesCompanion(status: Value(OutboxStatus.pending)),
    );
    await runSync();
  }

  Future<void> _runSyncLocked() async {
    final pending =
        await (database.select(database.outboxEntries)
              ..where((row) => row.status.equalsValue(OutboxStatus.pending)))
            .get();
    if (pending.isEmpty) return;

    await _markStatus(pending.map((row) => row.id), OutboxStatus.syncing);

    final payload = await _buildPayload(pending);

    try {
      final result = await remote.sync(payload);
      await _applyResult(pending, result);
    } on Failure catch (failure) {
      await _markStatus(pending.map((row) => row.id), OutboxStatus.pending);
      // Une perte de réseau en cours d'envoi n'est pas un échec de
      // synchronisation : le bandeau doit rester orange (hors ligne, en
      // attente), pas rouge — sinon il ment sur un état parfaitement normal
      // (CLAUDE.md §6). Seule une vraie erreur (serveur, délai, imprévu)
      // passe le bandeau au rouge.
      if (failure is! NoConnectionFailure) {
        await _setSyncError(await _messageFor(failure));
      }
    }
  }

  Future<dto.SyncPayload> _buildPayload(List<OutboxEntry> pending) async {
    final bookingRefs = _referencesOf(pending, OutboxEntity.booking);
    final parcelRefs = _referencesOf(pending, OutboxEntity.parcel);
    final validationRefs = _referencesOf(pending, OutboxEntity.validation);
    final notificationRefs = _referencesOf(
      pending,
      OutboxEntity.parcelNotification,
    );

    final bookings = bookingRefs.isEmpty
        ? const <OfflineBooking>[]
        : await (database.select(
            database.offlineBookings,
          )..where((row) => row.ticketNumber.isIn(bookingRefs))).get();
    final parcels = parcelRefs.isEmpty
        ? const <OfflineParcel>[]
        : await (database.select(
            database.offlineParcels,
          )..where((row) => row.trackingNumber.isIn(parcelRefs))).get();
    final validations = validationRefs.isEmpty
        ? const <OfflineValidation>[]
        : await (database.select(
            database.offlineValidations,
          )..where((row) => row.ticketNumber.isIn(validationRefs))).get();
    final notifications = notificationRefs.isEmpty
        ? const <OfflineParcelNotification>[]
        : await (database.select(
            database.offlineParcelNotifications,
          )..where((row) => row.trackingNumber.isIn(notificationRefs))).get();

    return dto.SyncPayload(
      bookings: bookings.map(_toDtoBooking).toList(growable: false),
      parcels: parcels.map(_toDtoParcel).toList(growable: false),
      validations: validations.map(_toDtoValidation).toList(growable: false),
      parcelNotifications: notifications
          .map(_toDtoParcelNotification)
          .toList(growable: false),
    );
  }

  Future<void> _applyResult(
    List<OutboxEntry> attempted,
    dto.SyncResult result,
  ) async {
    final now = DateTime.now().toUtc();

    // 🔴 Un élément rejeté (`errors[]` — voyage complet/indisponible, donnée
    // invalide) reste en échec, l'agent doit agir. `conflicts[]` ne porte que
    // des sièges réattribués, **toujours résolus** (backend, cf.
    // `SyncResultConflict` — corrigé le 2026-07-25 suite à
    // `api/backend_completion_requests_5a.md`) : tout le reste du lot part
    // synchronisé.
    final failedRefs = <String, String>{
      for (final error in result.errors) error.reference: error.message,
    };

    final seatUpdates = <String, String>{
      for (final conflict in result.conflicts)
        if (conflict.type == dto.TypeD05Enum.seatConflict)
          conflict.ticketNumber: conflict.assignedSeat,
    };

    await database.transaction(() async {
      for (final entry in attempted) {
        final error = failedRefs[entry.reference];
        if (error != null) {
          await (database.update(
            database.outboxEntries,
          )..where((row) => row.id.equals(entry.id))).write(
            OutboxEntriesCompanion(
              status: const Value(OutboxStatus.failed),
              lastError: Value(error),
              attempts: Value(entry.attempts + 1),
            ),
          );
          continue;
        }

        await (database.update(
          database.outboxEntries,
        )..where((row) => row.id.equals(entry.id))).write(
          OutboxEntriesCompanion(
            status: const Value(OutboxStatus.synced),
            syncedAt: Value(now),
          ),
        );

        // Siège réattribué : la réservation locale doit porter le nouveau
        // numéro pour que le guichet (5B) propose la réimpression du billet
        // corrigé plutôt que l'ancien siège.
        final assignedSeat = seatUpdates[entry.reference];
        if (assignedSeat != null && entry.entity == OutboxEntity.booking) {
          final bookingRow = await (database.select(
            database.offlineBookings,
          )..where((row) => row.ticketNumber.equals(entry.reference))).getSingleOrNull();

          await (database.update(
            database.offlineBookings,
          )..where((row) => row.ticketNumber.equals(entry.reference))).write(
            OfflineBookingsCompanion(seatNumber: Value(assignedSeat)),
          );

          if (bookingRow != null) {
            _seatCorrections.add(
              SeatCorrection(
                ticketNumber: entry.reference,
                passengerName:
                    '${bookingRow.lastName} ${bookingRow.firstName}',
                originalSeat: bookingRow.seatNumber,
                newSeat: assignedSeat,
              ),
            );
          }
        }
      }

      await (database.update(
        database.syncStateEntries,
      )..where((row) => row.id.equals(0))).write(
        SyncStateEntriesCompanion(
          lastSyncAt: Value(now),
          lastSyncError: const Value(null),
        ),
      );
    });
  }

  Future<void> _markStatus(Iterable<int> ids, OutboxStatus status) {
    return database.transaction(() async {
      for (final id in ids) {
        await (database.update(
          database.outboxEntries,
        )..where((row) => row.id.equals(id))).write(
          OutboxEntriesCompanion(status: Value(status)),
        );
      }
    });
  }

  Future<void> _setSyncError(String message) {
    return (database.update(
      database.syncStateEntries,
    )..where((row) => row.id.equals(0))).write(
      SyncStateEntriesCompanion(lastSyncError: Value(message)),
    );
  }

  @override
  Future<List<SyncLogEntry>> syncLogs() async {
    final logs = await remote.logs();
    return logs.map(_toSyncLogEntry).toList(growable: false);
  }

  static SyncLogEntry _toSyncLogEntry(dto.SyncLog log) => SyncLogEntry(
    id: log.id,
    bookingsSynced: log.bookingsSynced ?? 0,
    parcelsSynced: log.parcelsSynced ?? 0,
    validationsSynced: log.validationsSynced ?? 0,
    parcelNotificationsSynced: log.parcelNotificationsSynced ?? 0,
    conflictsCount: log.conflictsCount ?? 0,
    errorsCount: log.errorsCount ?? 0,
    createdAt: log.createdAt,
  );

  static Set<String> _referencesOf(
    List<OutboxEntry> entries,
    OutboxEntity entity,
  ) {
    return entries
        .where((entry) => entry.entity == entity)
        .map((entry) => entry.reference)
        .toSet();
  }

  static dto.OfflineBooking _toDtoBooking(OfflineBooking row) =>
      dto.OfflineBooking(
        ticketNumber: row.ticketNumber,
        tripId: row.tripId,
        firstName: row.firstName,
        lastName: row.lastName,
        phone: row.phone,
        seatNumber: row.seatNumber,
        amount: row.amount,
        paymentMethod: row.paymentMethod,
        transactionRef: row.transactionRef,
        offlineCreatedAt: row.offlineCreatedAt,
      );

  static dto.OfflineParcelNotification _toDtoParcelNotification(
    OfflineParcelNotification row,
  ) => dto.OfflineParcelNotification(
    trackingNumber: row.trackingNumber,
    method: dto.OfflineParcelNotificationMethodEnum.call,
    offlineCreatedAt: row.offlineCreatedAt,
  );

  static dto.OfflineParcel _toDtoParcel(OfflineParcel row) =>
      dto.OfflineParcel(
        trackingNumber: row.trackingNumber,
        originCity: row.originCity,
        destinationCity: row.destinationCity,
        destinationStation: row.destinationStation,
        trip: row.tripId,
        senderName: row.senderName,
        senderPhone: row.senderPhone,
        recipientName: row.recipientName,
        recipientPhone: row.recipientPhone,
        description: row.description,
        weightKg: row.weightKg,
        offlineCreatedAt: row.offlineCreatedAt,
      );

  static dto.OfflineValidation _toDtoValidation(OfflineValidation row) =>
      dto.OfflineValidation(
        ticketNumber: row.ticketNumber,
        offlineCreatedAt: row.offlineCreatedAt,
      );

  /// Message d'échec de synchronisation, en français, sans `BuildContext`.
  ///
  /// Le moteur tourne aussi en tâche de fond (retour de connectivité) : il
  /// charge les traductions directement plutôt que d'exiger un contexte de
  /// build (CLAUDE.md §9 — jamais de jargon ni de trace technique affichés).
  static Future<String> _messageFor(Failure failure) async {
    final l10n = await AppLocalizations.delegate.load(AppLocales.french);
    return failure.localizedMessage(l10n);
  }
}
