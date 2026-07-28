import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/core/sync/outbox_writer.dart';

void main() {
  late LocalDatabase database;
  late OutboxWriter writer;

  final offlineCreatedAt = DateTime.utc(2026, 7, 25, 8, 30);

  setUp(() {
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    writer = OutboxWriter(database);
  });

  tearDown(() => database.close());

  test('met en attente une réservation saisie hors ligne', () async {
    await writer.queueBooking(
      OfflineBookingsCompanion.insert(
        ticketNumber: 'BF2026000001',
        tripId: 12,
        firstName: 'Awa',
        lastName: 'Traore',
        phone: '+22670000000',
        offlineCreatedAt: offlineCreatedAt,
      ),
    );

    final booking = await database.select(database.offlineBookings).getSingle();
    expect(booking.ticketNumber, 'BF2026000001');

    final entry = await database.select(database.outboxEntries).getSingle();
    expect(entry.entity, OutboxEntity.booking);
    expect(entry.reference, 'BF2026000001');
    expect(entry.status, OutboxStatus.pending);
  });

  test('met en attente un colis saisi hors ligne', () async {
    await writer.queueParcel(
      OfflineParcelsCompanion.insert(
        trackingNumber: 'COL2026000001',
        originCity: 1,
        destinationCity: 2,
        senderName: 'Awa Traore',
        senderPhone: '+22670000000',
        recipientName: 'Issa Ouedraogo',
        recipientPhone: '+22671111111',
        weightKg: '5.0',
        offlineCreatedAt: offlineCreatedAt,
      ),
    );

    final entry = await database.select(database.outboxEntries).getSingle();
    expect(entry.entity, OutboxEntity.parcel);
    expect(entry.reference, 'COL2026000001');
  });

  test('met en attente un embarquement validé hors ligne', () async {
    await writer.queueValidation(
      OfflineValidationsCompanion.insert(
        ticketNumber: 'BF2026000002',
        offlineCreatedAt: offlineCreatedAt,
      ),
    );

    final entry = await database.select(database.outboxEntries).getSingle();
    expect(entry.entity, OutboxEntity.validation);
    expect(entry.reference, 'BF2026000002');
  });

  test(
    'rejouer la même référence ne crée pas une deuxième entrée de file',
    () async {
      Future<void> queue({String phone = '+22670000000'}) => writer.queueBooking(
        OfflineBookingsCompanion.insert(
          ticketNumber: 'BF2026000003',
          tripId: 12,
          firstName: 'Awa',
          lastName: 'Traore',
          phone: phone,
          offlineCreatedAt: offlineCreatedAt,
        ),
      );

      await queue();
      // Rejeu — par exemple un double appui sur « Enregistrer » — avec une
      // valeur modifiée pour vérifier que la donnée métier est mise à jour.
      await queue(phone: '+22679999999');

      final entries = await database.select(database.outboxEntries).get();
      expect(entries, hasLength(1));

      final booking = await database.select(database.offlineBookings).getSingle();
      expect(booking.phone, '+22679999999');
    },
  );

  test(
    'ne remet pas en file une écriture déjà envoyée',
    () async {
      await writer.queueValidation(
        OfflineValidationsCompanion.insert(
          ticketNumber: 'BF2026000004',
          offlineCreatedAt: offlineCreatedAt,
        ),
      );
      await (database.update(database.outboxEntries)..where(
            (row) => row.reference.equals('BF2026000004'),
          ))
          .write(const OutboxEntriesCompanion(status: Value(OutboxStatus.synced)));

      await writer.queueValidation(
        OfflineValidationsCompanion.insert(
          ticketNumber: 'BF2026000004',
          offlineCreatedAt: offlineCreatedAt,
        ),
      );

      final entries = await database.select(database.outboxEntries).get();
      expect(entries, hasLength(1));
      expect(entries.single.status, OutboxStatus.synced);
    },
  );
}
