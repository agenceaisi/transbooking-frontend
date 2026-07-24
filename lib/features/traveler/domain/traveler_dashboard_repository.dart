import 'traveler_dashboard_summary.dart';

/// Accueil personnalisé du voyageur (guide §6.16).
abstract interface class TravelerDashboardRepository {
  /// `GET /dashboard/traveler/` — synthèse voyages, colis et notifications.
  Future<TravelerDashboardSummary> dashboard();
}
