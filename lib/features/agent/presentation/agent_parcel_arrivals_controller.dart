import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/arrived_parcel.dart';
import 'agent_providers.dart';

/// Colis arrivés, en attente de notification (guide §6.9).
final agentParcelArrivalsControllerProvider =
    AsyncNotifierProvider<
      AgentParcelArrivalsController,
      List<ArrivedParcel>
    >(AgentParcelArrivalsController.new);

class AgentParcelArrivalsController extends AsyncNotifier<List<ArrivedParcel>> {
  @override
  Future<List<ArrivedParcel>> build() {
    return ref.read(agentParcelRepositoryProvider).arrivals();
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(
      () => ref.read(agentParcelRepositoryProvider).arrivals(),
    );
  }

  /// SMS (toujours en ligne) ou appel manuel (« marquer prévenu », qui peut
  /// être mis en file hors ligne — cf. `AgentParcelRepository`).
  Future<void> notify({
    required int parcelId,
    required String trackingNumber,
    required bool bySms,
  }) async {
    await ref
        .read(agentParcelRepositoryProvider)
        .notify(parcelId: parcelId, trackingNumber: trackingNumber, bySms: bySms);

    if (bySms) {
      // Le colis passe « notifié » côté serveur : un rafraîchissement réseau
      // est fiable ici, l'appel qui précède vient de réussir en ligne.
      await refresh();
      return;
    }

    // L'appel manuel peut avoir été mis en file hors ligne : on retire
    // l'élément localement plutôt que de tenter un rafraîchissement réseau
    // qui échouerait hors ligne et effacerait la liste affichée.
    final current = state.value;
    if (current != null) {
      state = AsyncData(
        current.where((parcel) => parcel.id != parcelId).toList(),
      );
    }
  }
}
