import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/sync/connectivity_provider.dart';
import '../domain/agent_dashboard.dart';
import 'agent_providers.dart';

/// Tableau de bord de l'agent.
final agentDashboardControllerProvider =
    AsyncNotifierProvider<AgentDashboardController, AgentDashboardSnapshot>(
      AgentDashboardController.new,
    );

class AgentDashboardController extends AsyncNotifier<AgentDashboardSnapshot> {
  @override
  Future<AgentDashboardSnapshot> build() {
    // Recharge à chaque bascule de connectivité : au retour du réseau l'agent
    // retrouve ses départs à jour sans y penser, et à la perte du réseau
    // l'écran bascule tout de suite sur le cache horodaté plutôt que de
    // laisser croire que les données sont fraîches (CLAUDE.md §6).
    ref.watch(isOnlineProvider);

    return ref.watch(agentDashboardRepositoryProvider).load();
  }

  /// Recharge à la demande — bouton « Réessayer », tirer pour rafraîchir.
  ///
  /// L'état précédent reste affiché pendant le rechargement : l'agent ne perd
  /// pas son programme parce qu'il a tiré sur la liste.
  Future<void> refresh() async {
    state = await AsyncValue.guard(
      () => ref.read(agentDashboardRepositoryProvider).load(),
    );
  }
}
