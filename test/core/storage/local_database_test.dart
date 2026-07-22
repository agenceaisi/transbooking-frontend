import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';

void main() {
  late LocalDatabase database;

  setUp(() {
    database = LocalDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() => database.close());

  test(
    'crée le schéma et la ligne unique d\'état de synchronisation',
    () async {
      final state = await database
          .select(database.syncStateEntries)
          .getSingle();

      expect(state.id, 0);
      expect(state.lastSyncAt, isNull);
      expect(state.lastSyncError, isNull);
    },
  );

  test(
    'conserve une réservation saisie hors ligne avec son horodatage',
    () async {
      final createdAt = DateTime.utc(2026, 7, 21, 8, 30);

      await database
          .into(database.offlineBookings)
          .insert(
            OfflineBookingsCompanion.insert(
              ticketNumber: 'BF2026000123',
              tripId: 12,
              firstName: 'Awa',
              lastName: 'Traore',
              phone: '+22670000000',
              offlineCreatedAt: createdAt,
            ),
          );

      final booking = await database
          .select(database.offlineBookings)
          .getSingle();

      expect(booking.ticketNumber, 'BF2026000123');
      expect(booking.offlineCreatedAt, createdAt);
      // Le montant reste en texte : aucune conversion flottante des tarifs.
      expect(booking.amount, isNull);
    },
  );

  test('refuse deux entrées de file pour la même référence', () async {
    Future<void> enqueue() => database
        .into(database.outboxEntries)
        .insert(
          OutboxEntriesCompanion.insert(
            entity: OutboxEntity.booking,
            reference: 'BF2026000123',
            createdAt: DateTime.utc(2026, 7, 21, 8, 30),
          ),
        );

    await enqueue();

    // L'idempotence tient au niveau du schéma, pas seulement du moteur de
    // synchronisation : un doublon ne peut pas entrer dans la file.
    await expectLater(enqueue(), throwsA(isA<Exception>()));
  });

  test(
    'applique le statut « pending » par défaut à une entrée de file',
    () async {
      await database
          .into(database.outboxEntries)
          .insert(
            OutboxEntriesCompanion.insert(
              entity: OutboxEntity.validation,
              reference: 'BF2026000999',
              createdAt: DateTime.utc(2026, 7, 21, 9),
            ),
          );

      final entry = await database.select(database.outboxEntries).getSingle();

      expect(entry.status, OutboxStatus.pending);
      expect(entry.attempts, 0);
      expect(entry.syncedAt, isNull);
    },
  );
}
