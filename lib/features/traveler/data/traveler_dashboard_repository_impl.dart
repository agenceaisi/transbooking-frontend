import '../domain/traveler_dashboard_repository.dart';
import '../domain/traveler_dashboard_summary.dart';
import 'traveler_dashboard_remote_data_source.dart';
import 'traveler_mappers.dart';

/// Implémentation de [TravelerDashboardRepository].
class TravelerDashboardRepositoryImpl implements TravelerDashboardRepository {
  const TravelerDashboardRepositoryImpl(this._remote);

  final TravelerDashboardRemoteDataSource _remote;

  @override
  Future<TravelerDashboardSummary> dashboard() async {
    final dashboard = await _remote.dashboard();
    return dashboard.toEntity();
  }
}
