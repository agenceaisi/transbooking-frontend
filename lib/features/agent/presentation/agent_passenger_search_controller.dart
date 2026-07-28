import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/agent_passenger_search_result.dart';
import 'agent_providers.dart';

/// Passagers du programme du jour (paquet du matin), pour la recherche
/// rapide du tableau de bord — guichetier comme contrôleur.
final agentPassengerSearchControllerProvider =
    AsyncNotifierProvider<
      AgentPassengerSearchController,
      List<AgentPassengerSearchResult>
    >(AgentPassengerSearchController.new);

class AgentPassengerSearchController
    extends AsyncNotifier<List<AgentPassengerSearchResult>> {
  @override
  Future<List<AgentPassengerSearchResult>> build() {
    return ref.read(agentScheduleRepositoryProvider).passengersToday();
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(
      () => ref.read(agentScheduleRepositoryProvider).passengersToday(),
    );
  }
}
