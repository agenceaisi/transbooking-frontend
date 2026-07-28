import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/features/agent/data/agent_dashboard_cache.dart';
import 'package:transbooking_bf/features/agent/data/agent_dashboard_repository_impl.dart';
import 'package:transbooking_bf/features/agent/data/agent_remote_data_source.dart';
import 'package:transbooking_bf/features/agent/domain/agent_dashboard.dart';

class _MockRemote extends Mock implements AgentRemoteDataSource {}

void main() {
  late _MockRemote remote;
  late LocalDatabase database;
  late AgentDashboardCache cache;
  late AgentDashboardRepositoryImpl repository;

  final departureAt = DateTime.utc(2026, 7, 22, 8, 30);
  final laterDepartureAt = DateTime.utc(2026, 7, 22, 9, 15);

  dto.AgentDeparture buildDeparture({
    int tripId = 12,
    String destination = 'Bobo-Dioulasso',
    DateTime? at,
    int availableSeats = 12,
  }) {
    return dto.AgentDeparture(
      tripId: tripId,
      origin: 'Ouagadougou',
      destination: destination,
      departureTime: at ?? departureAt,
      availableSeats: availableSeats,
      passengerCount: 30,
    );
  }

  dto.TripRead buildTrip({
    int id = 12,
    String registration = 'BF-1234-A',
    dto.StatusF60Enum? status,
  }) {
    return dto.TripRead(
      id: id,
      route: 1,
      routeLabel: 'Ouaga → Bobo',
      originCity: 'Ouagadougou',
      destinationCity: 'Bobo-Dioulasso',
      vehicle: 4,
      vehicleRegistration: registration,
      departureTime: departureAt,
      price: '5000.00',
      status: status,
      statusDisplay: 'Programme',
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

  dto.Notification buildNotification() {
    return dto.Notification(
      id: 7,
      type: dto.Type6f3Enum.parcel,
      typeDisplay: 'Colis',
      title: 'Colis arrivé — à notifier',
      body: 'COL2026000123 est arrivé à Bobo.',
      isRead: false,
      referenceId: 3,
      referenceType: 'parcel',
      createdAt: DateTime.utc(2026, 7, 22, 8),
    );
  }

  void stubDashboard({
    List<dto.AgentDeparture>? departures,
    int pendingAlerts = 2,
  }) {
    when(remote.dashboard).thenAnswer(
      (_) async => dto.AgentDashboard(
        nextDepartures: departures ?? [buildDeparture()],
        pendingAlerts: pendingAlerts,
        connectionStatus: 'online',
      ),
    );
  }

  setUp(() {
    remote = _MockRemote();
    database = LocalDatabase.forTesting(NativeDatabase.memory());
    cache = AgentDashboardCache(database);
    repository = AgentDashboardRepositoryImpl(remote: remote, cache: cache);
  });

  tearDown(() => database.close());

  group('chargement en ligne', () {
    test('assemble les trois réponses en un instantané du domaine', () async {
      stubDashboard();
      when(remote.tripsToday).thenAnswer((_) async => [buildTrip()]);
      when(
        () => remote.recentNotifications(),
      ).thenAnswer((_) async => [buildNotification()]);

      final snapshot = await repository.load();

      expect(snapshot.isFromCache, isFalse);
      expect(snapshot.pendingAlerts, 2);
      expect(snapshot.departures, hasLength(1));
      // Le véhicule ne vient pas du tableau de bord : la jointure par trip_id
      // avec `agent/trips/today/` est ce qui le fournit.
      expect(snapshot.departures.single.vehicleRegistration, 'BF-1234-A');
      expect(snapshot.alerts.single.kind, AgentAlertKind.parcel);
    });

    test('reporte le retard signalé par le voyage du jour', () async {
      stubDashboard();
      when(
        remote.tripsToday,
      ).thenAnswer((_) async => [buildTrip(status: dto.StatusF60Enum.delayed)]);
      when(() => remote.recentNotifications()).thenAnswer((_) async => []);

      final snapshot = await repository.load();

      expect(snapshot.departures.single.isDelayed, isTrue);
    });

    test('range les départs par heure, le plus proche en tête', () async {
      stubDashboard(
        departures: [
          buildDeparture(
            tripId: 20,
            destination: 'Koudougou',
            at: laterDepartureAt,
          ),
          buildDeparture(),
        ],
      );
      when(remote.tripsToday).thenAnswer((_) async => []);
      when(() => remote.recentNotifications()).thenAnswer((_) async => []);

      final snapshot = await repository.load();

      expect(snapshot.nextDeparture?.tripId, 12);
    });

    test(
      'garde le tableau de bord quand les appels complémentaires échouent',
      () async {
        stubDashboard();
        when(remote.tripsToday).thenThrow(const ForbiddenFailure());
        when(
          () => remote.recentNotifications(),
        ).thenThrow(const ServerFailure(statusCode: 500));

        final snapshot = await repository.load();

        // L'essentiel est là ; l'accessoire manque, sans être inventé.
        expect(snapshot.departures, hasLength(1));
        expect(snapshot.departures.single.vehicleRegistration, isNull);
        expect(snapshot.alerts, isEmpty);
      },
    );

    test('propage une erreur qui n\'est pas un défaut de réseau', () async {
      when(remote.dashboard).thenThrow(const UnauthorizedFailure());
      when(remote.tripsToday).thenAnswer((_) async => []);
      when(() => remote.recentNotifications()).thenAnswer((_) async => []);

      await expectLater(repository.load(), throwsA(isA<UnauthorizedFailure>()));
    });
  });

  group('chargement hors réseau', () {
    test('rejoue le dernier instantané connu, horodaté', () async {
      stubDashboard();
      when(remote.tripsToday).thenAnswer((_) async => [buildTrip()]);
      when(
        () => remote.recentNotifications(),
      ).thenAnswer((_) async => [buildNotification()]);
      await repository.load();

      when(remote.dashboard).thenThrow(const NoConnectionFailure());
      when(remote.tripsToday).thenThrow(const NoConnectionFailure());
      when(
        () => remote.recentNotifications(),
      ).thenThrow(const NoConnectionFailure());

      final snapshot = await repository.load();

      expect(snapshot.isFromCache, isTrue);
      expect(snapshot.cachedAt, isNotNull);
      expect(snapshot.departures.single.tripId, 12);
      expect(snapshot.departures.single.vehicleRegistration, 'BF-1234-A');
      expect(snapshot.alerts.single.title, 'Colis arrivé — à notifier');
      // Le compteur du serveur n'est pas conservé : mieux vaut rien qu'un
      // chiffre périmé.
      expect(snapshot.pendingAlerts, isNull);
    });

    test('remplace le cache plutôt que de l\'empiler', () async {
      stubDashboard();
      when(remote.tripsToday).thenAnswer((_) async => []);
      when(() => remote.recentNotifications()).thenAnswer((_) async => []);
      await repository.load();

      stubDashboard(
        departures: [
          buildDeparture(
            tripId: 20,
            destination: 'Koudougou',
            at: laterDepartureAt,
          ),
        ],
      );
      await repository.load();

      when(remote.dashboard).thenThrow(const NoConnectionFailure());
      final snapshot = await repository.load();

      // Un départ parti ne doit pas ressurgir dans la vue hors ligne.
      expect(snapshot.departures.map((d) => d.tripId), [20]);
    });

    test('propage l\'échec réseau si aucun cache n\'existe', () async {
      when(remote.dashboard).thenThrow(const TimeoutFailure());
      when(remote.tripsToday).thenThrow(const TimeoutFailure());
      when(
        () => remote.recentNotifications(),
      ).thenThrow(const TimeoutFailure());

      await expectLater(repository.load(), throwsA(isA<TimeoutFailure>()));
    });
  });
}
