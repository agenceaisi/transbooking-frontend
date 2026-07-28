import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/features/agent/data/agent_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/data/agent_schedule_repository_impl.dart';

class _MockRemote extends Mock implements AgentRemoteDataSource {}

void main() {
  late _MockRemote remote;
  late LocalDatabase database;
  late AgentScheduleRepositoryImpl repository;

  final departureAt = DateTime.utc(2026, 7, 26, 8, 30);

  dto.TripRead buildTrip({int id = 12, String price = '6000.00'}) {
    return dto.TripRead(
      id: id,
      route: 1,
      routeLabel: 'Ouaga → Bobo',
      originCity: 'Ouagadougou',
      destinationCity: 'Bobo-Dioulasso',
      vehicle: 4,
      vehicleRegistration: 'BF-1234-A',
      departureTime: departureAt,
      price: price,
      status: dto.StatusF60Enum.scheduled,
      statusDisplay: 'Programmé',
      company: 1,
      companyName: 'Faso Express',
      companySigle: 'FE',
      companyRating: 4.5,
      isDirect: true,
      stopsCount: 0,
      durationMinutes: 300,
      createdAt: departureAt,
      updatedAt: departureAt,
    );
  }

  setUp(() {
    remote = _MockRemote();
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    repository = AgentScheduleRepositoryImpl(remote: remote, database: database);
  });

  tearDown(() => database.close());

  test('en ligne, porte le tarif du voyage', () async {
    when(remote.tripsToday).thenAnswer((_) async => [buildTrip()]);

    final snapshot = await repository.load();

    expect(snapshot.isFromCache, isFalse);
    expect(snapshot.trips.single.price, '6000.00');
  });

  test('hors ligne, relit le cache sans tarif (absent d\'OfflineTrip)', () async {
    when(remote.tripsToday).thenThrow(const NoConnectionFailure());
    await database
        .into(database.cachedTrips)
        .insert(
          CachedTripsCompanion.insert(
            id: const Value(12),
            originCity: 'Ouagadougou',
            destinationCity: 'Bobo-Dioulasso',
            departureTime: departureAt,
            vehicle: 'BF-1234-A',
            cachedAt: DateTime.utc(2026, 7, 26, 7),
          ),
        );

    final snapshot = await repository.load();

    expect(snapshot.isFromCache, isTrue);
    expect(snapshot.trips.single.price, isNull);
    expect(snapshot.trips.single.vehicleRegistration, 'BF-1234-A');
  });

  test('hors ligne sans cache, propage l\'échec réseau', () async {
    when(remote.tripsToday).thenThrow(const NoConnectionFailure());

    await expectLater(repository.load(), throwsA(isA<NoConnectionFailure>()));
  });

  group('recherche rapide de passagers', () {
    Future<void> insertCachedTrip({
      int id = 12,
      String destinationCity = 'Bobo-Dioulasso',
      String vehicle = 'BF-1234-A',
    }) {
      return database
          .into(database.cachedTrips)
          .insert(
            CachedTripsCompanion.insert(
              id: Value(id),
              originCity: 'Ouagadougou',
              destinationCity: destinationCity,
              departureTime: departureAt,
              vehicle: vehicle,
              cachedAt: DateTime.utc(2026, 7, 26, 7),
            ),
          );
    }

    Future<void> insertCachedBooking({
      String ticketNumber = 'BF2026000001',
      int tripId = 12,
      String passengerName = 'Traore Awa',
      String? seatNumber = '12',
    }) {
      return database
          .into(database.cachedBookings)
          .insert(
            CachedBookingsCompanion.insert(
              ticketNumber: ticketNumber,
              tripId: tripId,
              passengerName: passengerName,
              seatNumber: Value(seatNumber),
              cachedAt: DateTime.utc(2026, 7, 26, 7),
            ),
          );
    }

    test('combine réservations et voyages du paquet du matin', () async {
      await insertCachedTrip();
      await insertCachedBooking();

      final results = await repository.passengersToday();

      expect(results, hasLength(1));
      expect(results.single.passengerName, 'Traore Awa');
      expect(results.single.ticketNumber, 'BF2026000001');
      expect(results.single.destinationCity, 'Bobo-Dioulasso');
      expect(results.single.vehicleRegistration, 'BF-1234-A');
    });

    test('ignore une réservation dont le voyage est absent du cache', () async {
      await insertCachedBooking(tripId: 99);

      final results = await repository.passengersToday();

      expect(results, isEmpty);
    });

    test('vide sans réservation en cache', () async {
      await insertCachedTrip();

      final results = await repository.passengersToday();

      expect(results, isEmpty);
    });
  });
}
