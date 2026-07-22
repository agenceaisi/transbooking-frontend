import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/network_providers.dart';
import '../../../core/storage/database_provider.dart';
import '../data/agent_dashboard_cache.dart';
import '../data/agent_dashboard_repository_impl.dart';
import '../data/agent_remote_data_source.dart';
import '../domain/agent_dashboard_repository.dart';

/// Source de données HTTP du module agent.
final agentRemoteDataSourceProvider = Provider<AgentRemoteDataSource>(
  (ref) => AgentRemoteDataSource(ref.watch(dioProvider)),
);

/// Cache local du tableau de bord (Drift).
final agentDashboardCacheProvider = Provider<AgentDashboardCache>(
  (ref) => AgentDashboardCache(ref.watch(localDatabaseProvider)),
);

/// Dépôt du tableau de bord — seul point d'entrée de la présentation.
final agentDashboardRepositoryProvider = Provider<AgentDashboardRepository>(
  (ref) => AgentDashboardRepositoryImpl(
    remote: ref.watch(agentRemoteDataSourceProvider),
    cache: ref.watch(agentDashboardCacheProvider),
  ),
);
