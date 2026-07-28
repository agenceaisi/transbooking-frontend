import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/sync/connectivity_provider.dart';
import '../domain/agent_schedule.dart';
import 'agent_providers.dart';

/// Programme du jour de l'agent.
final agentScheduleControllerProvider =
    AsyncNotifierProvider<AgentScheduleController, AgentScheduleSnapshot>(
      AgentScheduleController.new,
    );

class AgentScheduleController extends AsyncNotifier<AgentScheduleSnapshot> {
  @override
  Future<AgentScheduleSnapshot> build() {
    // Recharge au retour du réseau, comme le tableau de bord (phase 3).
    ref.watch(isOnlineProvider);
    return ref.watch(agentScheduleRepositoryProvider).load();
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(
      () => ref.read(agentScheduleRepositoryProvider).load(),
    );
  }
}
