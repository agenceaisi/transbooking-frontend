import 'package:drift/drift.dart' hide isNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/core/sync/outbox_writer.dart';
import 'package:transbooking_bf/features/agent/data/agent_boarding_repository_impl.dart';
import 'package:transbooking_bf/features/agent/data/agent_booking_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/data/agent_control_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/domain/agent_booking_repository.dart';
import 'package:transbooking_bf/features/agent/domain/agent_trip.dart';
import 'package:transbooking_bf/features/agent/domain/boarding_repository.dart';
import 'package:transbooking_bf/features/agent/domain/boarding_validation_summary.dart';
import 'package:transbooking_bf/features/agent/domain/passenger_registration.dart';

class _MockControlRemote extends Mock implements AgentControlRemoteDataSource {}

class _MockBookingRemote extends Mock implements AgentBookingRemoteDataSource {}

class _MockBookingRepository extends Mock implements AgentBookingRepository {}

void main() {
  late _MockControlRemote controlRemote;
  late _MockBookingRemote bookingRemote;
  late _MockBookingRepository bookingRepository;
  late LocalDatabase database;
  late AgentBoardingRepositoryImpl repository;

  final departureAt = DateTime.utc(2026, 7, 26, 8, 30);

  final trip = AgentTrip(
    id: 12,
    originCity: 'Ouagadougou',
    destinationCity: 'Bobo-Dioulasso',
    departureTime: departureAt,
    vehicleRegistration: 'BF-1234-A',
    availableSeats: 2,
    price: '6000.00',
  );

  dto.BookingRead buildBookingRead({
    required int id,
    required String ticketNumber,
    int tripId = 12,
  }) {
    return dto.BookingRead(
      id: id,
      ticketNumber: ticketNumber,
      trip: dto.TripSummary(
        id: tripId,
        originCity: 'Ouagadougou',
        destinationCity: 'Bobo-Dioulasso',
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
    controlRemote = _MockControlRemote();
    bookingRemote = _MockBookingRemote();
    bookingRepository = _MockBookingRepository();
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    repository = AgentBoardingRepositoryImpl(
      database: database,
      controlRemote: controlRemote,
      bookingRemote: bookingRemote,
      bookingRepository: bookingRepository,
      outbox: OutboxWriter(database),
    );
  });

  tearDown(() => database.close());

  Future<void> seedCachedBooking({
    required String ticketNumber,
    required String status,
  }) {
    return database
        .into(database.cachedBookings)
        .insert(
          CachedBookingsCompanion.insert(
            ticketNumber: ticketNumber,
            tripId: trip.id,
            passengerName: 'OUEDRAOGO Awa',
            phone: const Value('+22670000000'),
            seatNumber: const Value('12A'),
            status: Value(status),
            cachedAt: DateTime.utc(2026, 7, 26, 6),
          ),
        );
  }

  group('loadRoster', () {
    test(
      'fusionne le paquet du jour et les réservations hors ligne du jour, '
      'exclut annulés/remboursés, et calcule la capacité totale',
      () async {
        await seedCachedBooking(ticketNumber: 'BF2026000001', status: 'paid');
        await seedCachedBooking(
          ticketNumber: 'BF2026000002',
          status: 'pending',
        );
        await seedCachedBooking(
          ticketNumber: 'BF2026000003',
          status: 'cancelled',
        );
        await database
            .into(database.offlineBookings)
            .insert(
              OfflineBookingsCompanion.insert(
                ticketNumber: 'BF2026000099',
                tripId: trip.id,
                firstName: 'Issa',
                lastName: 'SAWADOGO',
                phone: '+22671111111',
                offlineCreatedAt: DateTime.utc(2026, 7, 26, 9),
              ),
            );
        await database
            .into(database.boardedTickets)
            .insert(
              BoardedTicketsCompanion.insert(
                ticketNumber: 'BF2026000001',
                method: LocalBoardingMethod.manual,
                boardedAt: DateTime.utc(2026, 7, 26, 9, 5),
              ),
            );

        final roster = await repository.loadRoster(trip);

        expect(roster.registeredCount, 3); // annulé exclu
        expect(roster.paidCount, 2); // le "paid" caché + l'hors ligne (payé)
        expect(roster.unpaidCount, 1);
        expect(roster.boardedCount, 1);
        expect(
          roster.byTicket('BF2026000099')?.fullName,
          'SAWADOGO Issa',
        );
        // trip.availableSeats (2) + inscrits (3) = capacité déduite.
        expect(roster.totalSeats, 5);
        expect(roster.isFromCache, isTrue);
        expect(roster.validated, isFalse);
      },
    );
  });

  group('confirmBoarding', () {
    test('en ligne : résout l\'id du billet puis embarque, journalise localement', () async {
      when(
        () => bookingRemote.findByTicketNumber('BF2026000001'),
      ).thenAnswer((_) async => buildBookingRead(id: 501, ticketNumber: 'BF2026000001'));
      when(
        () => controlRemote.boardOne(tripId: 12, bookingId: 501),
      ).thenAnswer((_) async {});

      await repository.confirmBoarding('BF2026000001');

      verify(() => controlRemote.boardOne(tripId: 12, bookingId: 501)).called(1);
      final boarded = await database.select(database.boardedTickets).getSingle();
      expect(boarded.ticketNumber, 'BF2026000001');
      expect(boarded.method, LocalBoardingMethod.manual);
      expect(boarded.isOffline, isFalse);
    });

    test(
      'hors ligne : met en file d\'attente (outbox) plutôt que d\'échouer',
      () async {
        when(
          () => bookingRemote.findByTicketNumber(any()),
        ).thenThrow(const NoConnectionFailure());

        await repository.confirmBoarding(
          'BF2026000002',
          method: BoardingConfirmMethod.scan,
        );

        final validations =
            await database.select(database.offlineValidations).get();
        expect(validations, hasLength(1));
        expect(validations.single.ticketNumber, 'BF2026000002');

        final outbox = await database.select(database.outboxEntries).get();
        expect(outbox, hasLength(1));
        expect(outbox.single.entity, OutboxEntity.validation);
        expect(outbox.single.reference, 'BF2026000002');

        final boarded =
            await database.select(database.boardedTickets).getSingle();
        expect(boarded.method, LocalBoardingMethod.scan);
        expect(boarded.isOffline, isTrue);
      },
    );

    test('idempotent : ne rappelle pas le serveur pour un billet déjà embarqué', () async {
      await database
          .into(database.boardedTickets)
          .insert(
            BoardedTicketsCompanion.insert(
              ticketNumber: 'BF2026000001',
              method: LocalBoardingMethod.manual,
              boardedAt: DateTime.utc(2026, 7, 26, 9),
            ),
          );

      await repository.confirmBoarding('BF2026000001');

      verifyNever(() => bookingRemote.findByTicketNumber(any()));
      verifyNever(() => controlRemote.boardOne(tripId: any(named: 'tripId'), bookingId: any(named: 'bookingId')));
    });
  });

  group('boardAllPaid', () {
    test('en ligne : un seul appel serveur, marque localement les restants', () async {
      final roster = await _rosterWith(database, trip, [
        ('BF2026000001', 'paid', false),
        ('BF2026000002', 'paid', true),
        ('BF2026000003', 'pending', false),
      ]);
      when(() => controlRemote.boardAll(12)).thenAnswer((_) async => 1);

      final count = await repository.boardAllPaid(trip, roster);

      expect(count, 1);
      verify(() => controlRemote.boardAll(12)).called(1);
      final boarded = await database.select(database.boardedTickets).get();
      expect(boarded.map((r) => r.ticketNumber), contains('BF2026000001'));
    });

    test('hors ligne : une écriture en file par passager restant', () async {
      final roster = await _rosterWith(database, trip, [
        ('BF2026000001', 'paid', false),
        ('BF2026000002', 'paid', false),
        ('BF2026000003', 'pending', false),
      ]);
      when(() => controlRemote.boardAll(12)).thenThrow(const NoConnectionFailure());

      final count = await repository.boardAllPaid(trip, roster);

      expect(count, 2);
      final outbox = await database.select(database.outboxEntries).get();
      expect(outbox, hasLength(2));
      expect(
        outbox.every((entry) => entry.entity == OutboxEntity.validation),
        isTrue,
      );
    });

    test('ne fait rien si tous les payés sont déjà embarqués', () async {
      final roster = await _rosterWith(database, trip, [
        ('BF2026000001', 'paid', true),
      ]);

      final count = await repository.boardAllPaid(trip, roster);

      expect(count, 0);
      verifyNever(() => controlRemote.boardAll(any()));
    });
  });

  group('validate', () {
    test('en ligne : verrouille côté serveur et journalise localement', () async {
      when(() => controlRemote.validate(12)).thenAnswer(
        (_) async => const BoardingValidationSummary(
          tripId: 12,
          totalPaid: 20,
          boarded: 18,
          notBoarded: 2,
          locked: true,
        ),
      );

      final summary = await repository.validate(trip);

      expect(summary.boarded, 18);
      expect(await repository.isValidated(12), isTrue);
    });

    test(
      'hors ligne : aucun repli — l\'échec remonte et rien n\'est persisté '
      '(SyncPayload ne porte aucune liste pour cette action)',
      () async {
        when(() => controlRemote.validate(12)).thenThrow(const NoConnectionFailure());

        await expectLater(
          repository.validate(trip),
          throwsA(isA<NoConnectionFailure>()),
        );
        expect(await repository.isValidated(12), isFalse);
      },
    );
  });

  group('addLastMinutePassenger', () {
    test('en ligne : rend le passager visible immédiatement dans la liste', () async {
      when(
        () => bookingRepository.registerPassenger(
          trip: trip,
          firstName: 'Issa',
          lastName: 'SAWADOGO',
          phone: '+22671111111',
          paymentMethodWire: 'cash',
          transactionRef: null,
        ),
      ).thenAnswer(
        (_) async => PassengerRegistration(
          ticketNumber: 'BF2026000501',
          firstName: 'Issa',
          lastName: 'SAWADOGO',
          phone: '+22671111111',
          originCity: trip.originCity,
          destinationCity: trip.destinationCity,
          departureTime: departureAt,
          isOffline: false,
          seatNumber: '20B',
        ),
      );

      final passenger = await repository.addLastMinutePassenger(
        trip: trip,
        firstName: 'Issa',
        lastName: 'SAWADOGO',
        phone: '+22671111111',
        paymentMethodWire: 'cash',
      );

      expect(passenger.ticketNumber, 'BF2026000501');
      expect(passenger.isPaid, isTrue);
      expect(passenger.isBoarded, isFalse);

      final cached = await (database.select(
        database.cachedBookings,
      )..where((row) => row.ticketNumber.equals('BF2026000501'))).getSingle();
      expect(cached.status, 'paid');
      expect(cached.tripId, trip.id);
    });

    test('hors ligne : ne touche pas au cache (déjà couvert par OfflineBookings)', () async {
      when(
        () => bookingRepository.registerPassenger(
          trip: trip,
          firstName: 'Issa',
          lastName: 'SAWADOGO',
          phone: '+22671111111',
          paymentMethodWire: 'cash',
          transactionRef: null,
        ),
      ).thenAnswer(
        (_) async => PassengerRegistration(
          ticketNumber: 'BF2026000502',
          firstName: 'Issa',
          lastName: 'SAWADOGO',
          phone: '+22671111111',
          originCity: trip.originCity,
          destinationCity: trip.destinationCity,
          departureTime: departureAt,
          isOffline: true,
        ),
      );

      await repository.addLastMinutePassenger(
        trip: trip,
        firstName: 'Issa',
        lastName: 'SAWADOGO',
        phone: '+22671111111',
        paymentMethodWire: 'cash',
      );

      final cached = await (database.select(
        database.cachedBookings,
      )..where((row) => row.ticketNumber.equals('BF2026000502'))).getSingleOrNull();
      expect(cached, isNull);
    });
  });
}

/// Reconstitue un `BoardingRoster` déterministe pour les tests
/// `boardAllPaid`, sans dépendre du calcul complet de `loadRoster`.
Future<dynamic> _rosterWith(
  LocalDatabase database,
  AgentTrip trip,
  List<(String, String, bool)> entries,
) async {
  for (final entry in entries) {
    await database
        .into(database.cachedBookings)
        .insert(
          CachedBookingsCompanion.insert(
            ticketNumber: entry.$1,
            tripId: trip.id,
            passengerName: 'OUEDRAOGO Awa',
            status: Value(entry.$2),
            cachedAt: DateTime.utc(2026, 7, 26, 6),
          ),
        );
    if (entry.$3) {
      await database
          .into(database.boardedTickets)
          .insert(
            BoardedTicketsCompanion.insert(
              ticketNumber: entry.$1,
              method: LocalBoardingMethod.manual,
              boardedAt: DateTime.utc(2026, 7, 26, 9),
            ),
          );
    }
  }

  final repo = AgentBoardingRepositoryImpl(
    database: database,
    controlRemote: _MockControlRemote(),
    bookingRemote: _MockBookingRemote(),
    bookingRepository: _MockBookingRepository(),
    outbox: OutboxWriter(database),
  );
  return repo.loadRoster(trip);
}
