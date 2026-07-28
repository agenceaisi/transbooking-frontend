import 'package:drift/drift.dart';

import '../storage/local_database.dart';

/// Écriture hors ligne : donnée métier + file d'attente, dans un seul geste.
///
/// Utilisé par les écrans qui saisissent au guichet ou au contrôle (phases 5B
/// et 5C) : ils n'écrivent jamais directement dans l'outbox, ils passent par
/// ici pour que les deux tables restent cohérentes.
///
/// 🔴 Idempotent (CLAUDE.md §6) : rejouer la même référence (même
/// `ticket_number` / `tracking_number` généré localement) ne crée jamais une
/// deuxième entrée de file — la donnée métier est mise à jour, l'envoi reste
/// unique.
class OutboxWriter {
  const OutboxWriter(this._db);

  final LocalDatabase _db;

  /// Met en file une réservation saisie hors ligne.
  Future<void> queueBooking(OfflineBookingsCompanion booking) => _enqueue(
    entity: OutboxEntity.booking,
    reference: booking.ticketNumber.value,
    write: () => _db.into(_db.offlineBookings).insertOnConflictUpdate(booking),
  );

  /// Met en file un colis saisi hors ligne.
  Future<void> queueParcel(OfflineParcelsCompanion parcel) => _enqueue(
    entity: OutboxEntity.parcel,
    reference: parcel.trackingNumber.value,
    write: () => _db.into(_db.offlineParcels).insertOnConflictUpdate(parcel),
  );

  /// Met en file un embarquement validé hors ligne.
  Future<void> queueValidation(OfflineValidationsCompanion validation) =>
      _enqueue(
        entity: OutboxEntity.validation,
        reference: validation.ticketNumber.value,
        write: () => _db
            .into(_db.offlineValidations)
            .insertOnConflictUpdate(validation),
      );

  /// Met en file un colis « marqué prévenu » (appel manuel) hors ligne.
  ///
  /// Jamais pour un SMS : un SMS ne peut pas partir hors ligne, l'app ne doit
  /// jamais laisser croire qu'il est parti (guide §6.9).
  Future<void> queueParcelNotification(
    OfflineParcelNotificationsCompanion notification,
  ) => _enqueue(
    entity: OutboxEntity.parcelNotification,
    reference: notification.trackingNumber.value,
    write: () => _db
        .into(_db.offlineParcelNotifications)
        .insertOnConflictUpdate(notification),
  );

  Future<void> _enqueue({
    required OutboxEntity entity,
    required String reference,
    required Future<void> Function() write,
  }) {
    return _db.transaction(() async {
      await write();

      final alreadyQueued =
          await (_db.select(_db.outboxEntries)..where(
                (row) =>
                    row.entity.equalsValue(entity) &
                    row.reference.equals(reference),
              ))
              .getSingleOrNull();
      if (alreadyQueued != null) return;

      await _db
          .into(_db.outboxEntries)
          .insert(
            OutboxEntriesCompanion.insert(
              entity: entity,
              reference: reference,
              createdAt: DateTime.now().toUtc(),
            ),
          );
    });
  }
}
