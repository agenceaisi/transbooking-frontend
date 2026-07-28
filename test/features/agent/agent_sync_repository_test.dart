import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/features/agent/data/agent_sync_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/data/agent_sync_repository_impl.dart';

class _MockRemote extends Mock implements AgentSyncRemoteDataSource {}

void main() {
  late _MockRemote remote;
  late LocalDatabase database;
  late AgentSyncRepositoryImpl repository;

  final offlineCreatedAt = DateTime.utc(2026, 7, 25, 8, 30);

  setUpAll(() {
    registerFallbackValue(const dto.SyncPayload());
  });

  setUp(() {
    remote = _MockRemote();
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    repository = AgentSyncRepositoryImpl(database: database, remote: remote);
  });

  tearDown(() => database.close());

  Future<void> insertBooking({
    String ticketNumber = 'BF2026000001',
    String seatNumber = '12',
    String? transactionRef,
  }) {
    return database
        .into(database.offlineBookings)
        .insert(
          OfflineBookingsCompanion.insert(
            ticketNumber: ticketNumber,
            tripId: 12,
            firstName: 'Awa',
            lastName: 'Traore',
            phone: '+22670000000',
            seatNumber: Value(seatNumber),
            transactionRef: Value(transactionRef),
            offlineCreatedAt: offlineCreatedAt,
          ),
        );
  }

  Future<void> insertParcelNotification({
    String trackingNumber = 'COL2026000001',
  }) {
    return database
        .into(database.offlineParcelNotifications)
        .insert(
          OfflineParcelNotificationsCompanion.insert(
            trackingNumber: trackingNumber,
            offlineCreatedAt: offlineCreatedAt,
          ),
        );
  }

  Future<void> enqueue({
    required OutboxEntity entity,
    required String reference,
    OutboxStatus status = OutboxStatus.pending,
  }) {
    return database
        .into(database.outboxEntries)
        .insert(
          OutboxEntriesCompanion.insert(
            entity: entity,
            reference: reference,
            status: Value(status),
            createdAt: offlineCreatedAt,
          ),
        );
  }

  dto.SyncResult successResult({
    List<dto.SyncResultConflict> conflicts = const [],
    List<dto.SyncResultError> errors = const [],
  }) {
    return dto.SyncResult(
      synced: const dto.SyncSyncedCounts(
        bookings: 1,
        parcels: 0,
        validations: 0,
        parcelNotifications: 0,
      ),
      conflicts: conflicts,
      errors: errors,
    );
  }

  dto.SyncResultConflict seatConflict({
    required String ticketNumber,
    String originalSeat = '12',
    String assignedSeat = '14',
  }) {
    return dto.SyncResultConflict(
      type: dto.TypeD05Enum.seatConflict,
      ticketNumber: ticketNumber,
      originalSeat: originalSeat,
      assignedSeat: assignedSeat,
      message: 'Siège réattribué automatiquement.',
    );
  }

  dto.SyncResultError rejection({
    required String reference,
    dto.TypeD05Enum type = dto.TypeD05Enum.tripFull,
    dto.EntityEnum entity = dto.EntityEnum.booking,
    String message = 'Voyage complet.',
  }) {
    return dto.SyncResultError(
      type: type,
      entity: entity,
      reference: reference,
      message: message,
    );
  }

  group('téléchargement matinal', () {
    test('remplace le cache local par le paquet du jour', () async {
      when(remote.offlineData).thenAnswer(
        (_) async => const dto.AgentOfflineData(
          trips: [],
          bookings: [
            dto.OfflineBookingRead(
              ticketNumber: 'BF2026000099',
              tripId: 9,
              passengerName: 'Issa Ouedraogo',
              phone: '+22671111111',
              seatNumber: '4',
            ),
          ],
          parcelArrivals: [],
        ),
      );

      await repository.downloadOfflineData();

      final cached = await database.select(database.cachedBookings).get();
      expect(cached, hasLength(1));
      expect(cached.single.ticketNumber, 'BF2026000099');

      final state = await database
          .select(database.syncStateEntries)
          .getSingle();
      expect(state.lastOfflineDataAt, isNotNull);
    });

    test('reste silencieux hors réseau, cache existant conservé', () async {
      when(remote.offlineData).thenAnswer(
        (_) async => const dto.AgentOfflineData(
          trips: [],
          bookings: [
            dto.OfflineBookingRead(
              ticketNumber: 'BF2026000099',
              tripId: 9,
              passengerName: 'Issa Ouedraogo',
              phone: '+22671111111',
              seatNumber: '4',
            ),
          ],
          parcelArrivals: [],
        ),
      );
      await repository.downloadOfflineData();

      when(remote.offlineData).thenThrow(const NoConnectionFailure());
      await repository.downloadOfflineData();

      final cached = await database.select(database.cachedBookings).get();
      expect(cached, hasLength(1));
    });
  });

  group('envoi de l\'outbox', () {
    test('ne fait rien s\'il n\'y a rien en attente', () async {
      await repository.runSync();

      verifyNever(() => remote.sync(any()));
    });

    test('envoie les écritures en attente et les marque envoyées', () async {
      await insertBooking();
      await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
      when(() => remote.sync(any())).thenAnswer((_) async => successResult());

      await repository.runSync();

      final entry = await database.select(database.outboxEntries).getSingle();
      expect(entry.status, OutboxStatus.synced);
      expect(entry.syncedAt, isNotNull);

      final state = await database
          .select(database.syncStateEntries)
          .getSingle();
      expect(state.lastSyncAt, isNotNull);
      expect(state.lastSyncError, isNull);
    });

    test(
      'transmet la référence de transaction Mobile Money saisie hors ligne',
      () async {
        await insertBooking(transactionRef: 'MP240912.1834.A45678');
        await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
        when(() => remote.sync(any())).thenAnswer((_) async => successResult());

        await repository.runSync();

        final sent =
            verify(() => remote.sync(captureAny())).captured.single
                as dto.SyncPayload;
        expect(sent.bookings!.single.transactionRef, 'MP240912.1834.A45678');
      },
    );

    test(
      'envoie un « marquer prévenu » colis en attente et le marque synchronisé',
      () async {
        await insertParcelNotification();
        await enqueue(
          entity: OutboxEntity.parcelNotification,
          reference: 'COL2026000001',
        );
        when(() => remote.sync(any())).thenAnswer((_) async => successResult());

        await repository.runSync();

        final sent =
            verify(() => remote.sync(captureAny())).captured.single
                as dto.SyncPayload;
        expect(sent.parcelNotifications!.single.trackingNumber, 'COL2026000001');

        final entry = await database.select(database.outboxEntries).getSingle();
        expect(entry.status, OutboxStatus.synced);
      },
    );

    test('rejeu après succès : plus rien à envoyer, aucun appel', () async {
      await insertBooking();
      await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
      when(() => remote.sync(any())).thenAnswer((_) async => successResult());
      await repository.runSync();

      await repository.runSync();

      verify(() => remote.sync(any())).called(1);
    });

    test(
      'un élément rejeté (errors[]) reste en échec, le reste part synchronisé',
      () async {
        await insertBooking(ticketNumber: 'BF2026000001');
        await insertBooking(ticketNumber: 'BF2026000002');
        await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
        await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000002');
        when(() => remote.sync(any())).thenAnswer(
          (_) async => successResult(
            errors: [
              rejection(
                reference: 'BF2026000002',
                message: 'Voyage complet.',
              ),
            ],
          ),
        );

        await repository.runSync();

        final entries = {
          for (final row in await database.select(database.outboxEntries).get())
            row.reference: row,
        };
        expect(entries['BF2026000001']!.status, OutboxStatus.synced);
        expect(entries['BF2026000002']!.status, OutboxStatus.failed);
        expect(entries['BF2026000002']!.lastError, 'Voyage complet.');
        expect(entries['BF2026000002']!.attempts, 1);
      },
    );

    test(
      'un siège réattribué (conflicts[]) met à jour la réservation locale '
      'et part synchronisé',
      () async {
        await insertBooking(ticketNumber: 'BF2026000001', seatNumber: '12');
        await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
        when(() => remote.sync(any())).thenAnswer(
          (_) async => successResult(
            conflicts: [
              seatConflict(ticketNumber: 'BF2026000001', assignedSeat: '18'),
            ],
          ),
        );

        await repository.runSync();

        final entry = await database.select(database.outboxEntries).getSingle();
        expect(entry.status, OutboxStatus.synced);

        final booking = await database
            .select(database.offlineBookings)
            .getSingle();
        expect(booking.seatNumber, '18');
      },
    );

    test(
      'un siège réattribué émet une correction sur seatCorrections '
      '(modale « billet corrigé »)',
      () async {
        await insertBooking(
          ticketNumber: 'BF2026000001',
          seatNumber: '12',
        );
        await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
        when(() => remote.sync(any())).thenAnswer(
          (_) async => successResult(
            conflicts: [
              seatConflict(ticketNumber: 'BF2026000001', assignedSeat: '18'),
            ],
          ),
        );

        final correctionFuture = repository.seatCorrections.first;
        await repository.runSync();
        final correction = await correctionFuture;

        expect(correction.ticketNumber, 'BF2026000001');
        expect(correction.originalSeat, '12');
        expect(correction.newSeat, '18');
        expect(correction.passengerName, 'Traore Awa');
      },
    );

    test(
      'une perte de réseau remet l\'écriture en attente sans rougir le bandeau',
      () async {
        await insertBooking();
        await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
        when(() => remote.sync(any())).thenThrow(const NoConnectionFailure());

        await repository.runSync();

        final entry = await database.select(database.outboxEntries).getSingle();
        expect(entry.status, OutboxStatus.pending);

        final state = await database
            .select(database.syncStateEntries)
            .getSingle();
        expect(state.lastSyncError, isNull);
      },
    );

    test(
      'une vraie erreur serveur remet en attente et rougit le bandeau',
      () async {
        await insertBooking();
        await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
        when(
          () => remote.sync(any()),
        ).thenThrow(const ServerFailure(statusCode: 500));

        await repository.runSync();

        final entry = await database.select(database.outboxEntries).getSingle();
        expect(entry.status, OutboxStatus.pending);

        final state = await database
            .select(database.syncStateEntries)
            .getSingle();
        expect(state.lastSyncError, isNotNull);
      },
    );

    test('un seul envoi à la fois : les appels concurrents se rejoignent', () async {
      await insertBooking();
      await enqueue(entity: OutboxEntity.booking, reference: 'BF2026000001');
      when(() => remote.sync(any())).thenAnswer((_) async {
        await Future<void>.delayed(const Duration(milliseconds: 20));
        return successResult();
      });

      await Future.wait([repository.runSync(), repository.runSync()]);

      verify(() => remote.sync(any())).called(1);
    });
  });

  group('relance manuelle', () {
    test('repasse les échecs en attente puis relance l\'envoi', () async {
      await insertBooking();
      await enqueue(
        entity: OutboxEntity.booking,
        reference: 'BF2026000001',
        status: OutboxStatus.failed,
      );
      when(() => remote.sync(any())).thenAnswer((_) async => successResult());

      await repository.retryFailed();

      final entry = await database.select(database.outboxEntries).getSingle();
      expect(entry.status, OutboxStatus.synced);
      verify(() => remote.sync(any())).called(1);
    });
  });

  group('historique de synchronisation', () {
    test('mappe les journaux du serveur vers le domaine', () async {
      when(remote.logs).thenAnswer(
        (_) async => [
          dto.SyncLog(
            id: 1,
            bookingsSynced: 3,
            parcelsSynced: 1,
            validationsSynced: 0,
            parcelNotificationsSynced: 2,
            conflictsCount: 1,
            errorsCount: 0,
            conflicts: const [],
            createdAt: DateTime.utc(2026, 7, 27, 18, 5),
          ),
        ],
      );

      final logs = await repository.syncLogs();

      expect(logs, hasLength(1));
      expect(logs.single.bookingsSynced, 3);
      expect(logs.single.parcelsSynced, 1);
      expect(logs.single.parcelNotificationsSynced, 2);
      expect(logs.single.conflictsCount, 1);
      expect(logs.single.errorsCount, 0);
      expect(logs.single.createdAt, DateTime.utc(2026, 7, 27, 18, 5));
    });

    test('remplace les compteurs absents par zéro', () async {
      when(remote.logs).thenAnswer(
        (_) async => [
          dto.SyncLog(
            id: 2,
            conflicts: const [],
            createdAt: DateTime.utc(2026, 7, 27, 8, 0),
          ),
        ],
      );

      final logs = await repository.syncLogs();

      expect(logs.single.bookingsSynced, 0);
      expect(logs.single.errorsCount, 0);
    });
  });
}
