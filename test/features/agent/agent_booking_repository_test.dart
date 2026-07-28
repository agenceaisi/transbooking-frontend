import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/core/sync/outbox_writer.dart';
import 'package:transbooking_bf/features/agent/data/agent_booking_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/data/agent_booking_repository_impl.dart';
import 'package:transbooking_bf/features/agent/domain/agent_trip.dart';

class _MockRemote extends Mock implements AgentBookingRemoteDataSource {}

void main() {
  late _MockRemote remote;
  late LocalDatabase database;
  late AgentBookingRepositoryImpl repository;

  final departureAt = DateTime.utc(2026, 7, 26, 8, 30);

  setUpAll(() {
    registerFallbackValue(
      const dto.AgentBookingCreate(
        trip: 1,
        firstName: 'x',
        lastName: 'x',
        phone: 'x',
        paymentMethod: 'cash',
      ),
    );
  });

  final trip = AgentTrip(
    id: 12,
    originCity: 'Ouagadougou',
    destinationCity: 'Bobo-Dioulasso',
    departureTime: departureAt,
    vehicleRegistration: 'BF-1234-A',
    availableSeats: 10,
    price: '6000.00',
  );

  dto.BookingRead buildBookingRead({String ticketNumber = 'BF2026000001'}) {
    return dto.BookingRead(
      id: 1,
      ticketNumber: ticketNumber,
      trip: dto.TripSummary(
        id: trip.id,
        originCity: trip.originCity,
        destinationCity: trip.destinationCity,
        companyName: 'Faso Express',
        companySigle: 'FE',
        departureTime: departureAt,
      ),
      firstName: 'Awa',
      lastName: 'OUEDRAOGO',
      passengerName: 'OUEDRAOGO Awa',
      phone: '+22670000000',
      seatNumber: '12A',
      amount: '6000.00',
      qrCode: 'data:image/png;base64,iVBORw0KGgo=',
      statusDisplay: 'Payé',
      isBoarded: false,
      baggage: const [],
      baggageTotalWeightKg: '0',
      createdAt: departureAt,
      updatedAt: departureAt,
    );
  }

  setUp(() {
    remote = _MockRemote();
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    repository = AgentBookingRepositoryImpl(
      remote: remote,
      outbox: OutboxWriter(database),
    );
  });

  tearDown(() => database.close());

  group('en ligne', () {
    test(
      'crée le billet puis relit BookingRead pour le siège et le QR',
      () async {
        when(() => remote.create(any())).thenAnswer((_) async {});
        when(
          () => remote.findByTicketNumber(any()),
        ).thenAnswer((_) async => buildBookingRead());

        final result = await repository.registerPassenger(
          trip: trip,
          firstName: 'Awa',
          lastName: 'OUEDRAOGO',
          phone: '+22670000000',
          paymentMethodWire: 'cash',
        );

        expect(result.isOffline, isFalse);
        expect(result.seatNumber, '12A');
        expect(result.qrCode, isNotNull);
        expect(result.amount, '6000.00');
        verify(() => remote.create(any())).called(1);
      },
    );

    test('transmet le montant du voyage et la référence générée', () async {
      when(() => remote.create(any())).thenAnswer((_) async {});
      when(
        () => remote.findByTicketNumber(any()),
      ).thenAnswer((_) async => buildBookingRead());

      await repository.registerPassenger(
        trip: trip,
        firstName: 'Awa',
        lastName: 'OUEDRAOGO',
        phone: '+22670000000',
        paymentMethodWire: 'orange_money',
        transactionRef: 'MP240912.1834.A45678',
      );

      final sent =
          verify(() => remote.create(captureAny())).captured.single
              as dto.AgentBookingCreate;
      expect(sent.amount, '6000.00');
      expect(sent.paymentMethod, 'orange_money');
      expect(sent.transactionRef, 'MP240912.1834.A45678');
      expect(sent.ticketNumber, isNotNull);
    });
  });

  group('hors ligne', () {
    test('met en file plutôt que d\'échouer sur une perte de réseau', () async {
      when(() => remote.create(any())).thenThrow(const NoConnectionFailure());

      final result = await repository.registerPassenger(
        trip: trip,
        firstName: 'Awa',
        lastName: 'OUEDRAOGO',
        phone: '+22670000000',
        paymentMethodWire: 'cash',
      );

      expect(result.isOffline, isTrue);
      expect(result.seatNumber, isNull);
      expect(result.qrCode, isNull);
      // Le tarif du voyage reste affiché : seule l'attribution serveur
      // (siège, QR) manque tant que ce n'est pas synchronisé.
      expect(result.amount, '6000.00');

      final queued = await database.select(database.offlineBookings).get();
      expect(queued, hasLength(1));
      expect(queued.single.ticketNumber, result.ticketNumber);

      final outboxEntries = await database.select(database.outboxEntries).get();
      expect(outboxEntries, hasLength(1));
      expect(outboxEntries.single.entity, OutboxEntity.booking);
    });

    test(
      'conserve la référence Mobile Money saisie hors ligne',
      () async {
        when(() => remote.create(any())).thenThrow(const NoConnectionFailure());

        await repository.registerPassenger(
          trip: trip,
          firstName: 'Awa',
          lastName: 'OUEDRAOGO',
          phone: '+22670000000',
          paymentMethodWire: 'orange_money',
          transactionRef: 'MP240912.1834.A45678',
        );

        final queued = await database.select(database.offlineBookings).getSingle();
        expect(queued.paymentMethod, 'orange_money');
        expect(queued.transactionRef, 'MP240912.1834.A45678');
      },
    );

    test('met aussi en file sur un délai dépassé', () async {
      when(() => remote.create(any())).thenThrow(const TimeoutFailure());

      final result = await repository.registerPassenger(
        trip: trip,
        firstName: 'Awa',
        lastName: 'OUEDRAOGO',
        phone: '+22670000000',
        paymentMethodWire: 'cash',
      );

      expect(result.isOffline, isTrue);
      final queued = await database.select(database.offlineBookings).get();
      expect(queued, hasLength(1));
    });

    test('propage une erreur qui n\'est pas un défaut de réseau', () async {
      when(() => remote.create(any())).thenThrow(const ServerFailure(statusCode: 500));

      await expectLater(
        repository.registerPassenger(
          trip: trip,
          firstName: 'Awa',
          lastName: 'OUEDRAOGO',
          phone: '+22670000000',
          paymentMethodWire: 'cash',
        ),
        throwsA(isA<ServerFailure>()),
      );

      final queued = await database.select(database.offlineBookings).get();
      expect(queued, isEmpty);
    });
  });

  group('impression', () {
    test('marque imprimé et renvoie le payload à jour', () async {
      when(() => remote.print(any())).thenAnswer(
        (_) async => dto.TicketPrint(
          ticketNumber: 'BF2026000001',
          passengerName: 'OUEDRAOGO Awa',
          phone: '+22670000000',
          seatNumber: '18B',
          amount: '6000.00',
          status: 'paid',
          companyName: 'Faso Express',
          originCity: 'Ouagadougou',
          destinationCity: 'Bobo-Dioulasso',
          departureTime: departureAt,
          qrCode: 'data:image/png;base64,iVBORw0KGgo=',
          printedAt: departureAt,
          printCount: 2,
        ),
      );

      final result = await repository.printTicket('BF2026000001');

      expect(result.seatNumber, '18B');
      expect(result.printCount, 2);
    });
  });
}
