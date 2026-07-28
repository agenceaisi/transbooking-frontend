import 'agent_passenger_search_result.dart';
import 'agent_schedule.dart';

/// Accès au programme du jour de l'agent.
///
/// API si elle répond, cache local (paquet du matin, `CachedTrips`) sinon —
/// même principe que [AgentDashboardRepository] (CLAUDE.md §3).
abstract interface class AgentScheduleRepository {
  /// Lève une `Failure` uniquement si le réseau **et** le cache sont vides :
  /// un agent hors réseau avant tout téléchargement matinal doit le savoir.
  Future<AgentScheduleSnapshot> load();

  /// Passagers du programme du jour, pour la recherche rapide du tableau de
  /// bord — relit le paquet du matin (`CachedBookings` + `CachedTrips`),
  /// jamais d'appel réseau : aucun endpoint ne cherche un passager par nom
  /// sur l'ensemble du programme (CLAUDE.md §0), et ceci reste utilisable
  /// hors ligne.
  Future<List<AgentPassengerSearchResult>> passengersToday();
}
