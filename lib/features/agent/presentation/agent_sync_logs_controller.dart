import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/sync_log_entry.dart';
import 'agent_providers.dart';

/// Historique des synchronisations (`GET /agent/sync/logs/`, guide §6.15).
final agentSyncLogsControllerProvider =
    AsyncNotifierProvider<AgentSyncLogsController, List<SyncLogEntry>>(
      AgentSyncLogsController.new,
    );

class AgentSyncLogsController extends AsyncNotifier<List<SyncLogEntry>> {
  @override
  Future<List<SyncLogEntry>> build() {
    return ref.read(agentSyncRepositoryProvider).syncLogs();
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(
      () => ref.read(agentSyncRepositoryProvider).syncLogs(),
    );
  }
}
