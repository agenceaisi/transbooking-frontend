import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../domain/agent_dashboard.dart';
import '../domain/agent_dashboard_repository.dart';
import 'agent_dashboard_cache.dart';
import 'agent_remote_data_source.dart';

/// Implémentation de [AgentDashboardRepository].
///
/// Assemble trois réponses de l'API en un seul instantané du domaine :
///  - `agent/dashboard/` — **essentiel** : les départs et le compteur d'alertes ;
///  - `agent/trips/today/` — **complément** : immatriculation et statut du
///    voyage, que le tableau de bord ne porte pas ;
///  - `notifications/` — **complément** : le contenu des alertes récentes, le
///    tableau de bord n'en renvoyant que le nombre.
///
/// Les compléments dégradent en silence : un véhicule manquant ne doit pas
/// priver l'agent de son programme. L'essentiel, lui, décide — s'il échoue, on
/// bascule sur le cache local.
class AgentDashboardRepositoryImpl implements AgentDashboardRepository {
  const AgentDashboardRepositoryImpl({
    required this._remote,
    required this._cache,
  });

  final AgentRemoteDataSource _remote;
  final AgentDashboardCache _cache;

  @override
  Future<AgentDashboardSnapshot> load() async {
    try {
      // Les trois appels partent ensemble : sur un réseau de terrain, les
      // enchaîner tripleraient l'attente.
      final results = await Future.wait([
        _remote.dashboard(),
        _optional(_remote.tripsToday),
        _optional(_remote.recentNotifications),
      ]);

      final dashboard = results[0]! as dto.AgentDashboard;
      final trips = (results[1] as List<dto.TripRead>?) ?? const [];
      final notifications = (results[2] as List<dto.Notification>?) ?? const [];

      final snapshot = _merge(
        dashboard: dashboard,
        trips: trips,
        notifications: notifications,
      );
      await _cache.write(snapshot);
      return snapshot;
    } on NoConnectionFailure catch (failure) {
      return _fromCacheOr(failure);
    } on TimeoutFailure catch (failure) {
      return _fromCacheOr(failure);
    }
  }

  /// Assemble l'instantané du domaine à partir des trois réponses.
  AgentDashboardSnapshot _merge({
    required dto.AgentDashboard dashboard,
    required List<dto.TripRead> trips,
    required List<dto.Notification> notifications,
  }) {
    final tripsById = {for (final trip in trips) trip.id: trip};

    final departures =
        dashboard.nextDepartures
            .map((departure) {
              final trip = tripsById[departure.tripId];
              return AgentDeparture(
                tripId: departure.tripId,
                origin: departure.origin,
                destination: departure.destination,
                departureTime: departure.departureTime,
                availableSeats: departure.availableSeats,
                passengerCount: departure.passengerCount,
                vehicleRegistration: trip?.vehicleRegistration,
                status: TripStatus.fromWire(trip?.status?.wireValue),
              );
            })
            .toList(growable: false)
          // L'API ne garantit pas l'ordre : le prochain départ doit rester en
          // tête, c'est lui que l'agent traite.
          ..sort((a, b) => a.departureTime.compareTo(b.departureTime));

    final alerts = notifications
        .map(
          (notification) => AgentAlert(
            id: notification.id,
            title: notification.title,
            body: notification.body,
            kind: AgentAlertKind.fromWire(notification.type.wireValue),
            createdAt: notification.createdAt,
          ),
        )
        .toList(growable: false);

    return AgentDashboardSnapshot(
      departures: departures,
      alerts: alerts,
      pendingAlerts: dashboard.pendingAlerts,
    );
  }

  /// Dernier état connu, ou l'échec réseau si l'agent n'a jamais chargé
  /// l'écran sur cet appareil.
  Future<AgentDashboardSnapshot> _fromCacheOr(Failure failure) async {
    final cached = await _cache.read();
    if (cached == null) throw failure;
    return cached;
  }

  /// Exécute un appel complémentaire ; `null` si l'API le refuse.
  ///
  /// Toute `Failure` est absorbée : ces données enrichissent l'écran, elles ne
  /// le conditionnent pas.
  static Future<T?> _optional<T>(Future<T> Function() call) async {
    try {
      return await call();
    } on Failure {
      return null;
    }
  }
}
