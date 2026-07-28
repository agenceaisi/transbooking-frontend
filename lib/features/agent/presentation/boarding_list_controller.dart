import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/sync/connectivity_provider.dart';
import '../domain/agent_trip.dart';
import '../domain/boarding_roster.dart';
import '../domain/boarding_validation_summary.dart';
import 'agent_providers.dart';
import 'agent_schedule_controller.dart';

/// Liste des passagers et embarquement d'un voyage donné (maquette « Liste
/// passagers & Embarquement », phase 5C).
final boardingListControllerProvider = AsyncNotifierProvider.autoDispose
    .family<BoardingListController, BoardingRoster, int>(
      BoardingListController.new,
    );

class BoardingListController extends AsyncNotifier<BoardingRoster> {
  BoardingListController(this.tripId);

  final int tripId;

  late AgentTrip _trip;

  /// Trajet résolu au dernier chargement — pour l'en-tête de l'écran.
  AgentTrip get trip => _trip;

  @override
  Future<BoardingRoster> build() async {
    ref.watch(isOnlineProvider);
    final schedule = await ref.watch(agentScheduleControllerProvider.future);

    AgentTrip? found;
    for (final trip in schedule.trips) {
      if (trip.id == tripId) {
        found = trip;
        break;
      }
    }
    if (found == null) throw const NotFoundFailure();
    _trip = found;

    return ref.watch(boardingRepositoryProvider).loadRoster(_trip);
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(
      () => ref.read(boardingRepositoryProvider).loadRoster(_trip),
    );
  }

  /// Coche un passager — case à cocher manuelle. Ne fait rien si déjà
  /// embarqué ou si la liste est verrouillée.
  Future<void> confirmBoarding(String ticketNumber) async {
    final roster = state.value;
    if (roster == null || roster.validated) return;
    await ref.read(boardingRepositoryProvider).confirmBoarding(ticketNumber);
    await refresh();
  }

  /// « Tout embarquer » — renvoie le nombre de passagers embarqués.
  Future<int> boardAllPaid() async {
    final roster = state.value;
    if (roster == null || roster.validated) return 0;
    final count = await ref
        .read(boardingRepositoryProvider)
        .boardAllPaid(_trip, roster);
    await refresh();
    return count;
  }

  /// Verrouille l'embarquement. Propage l'échec (ex. hors ligne) tel quel :
  /// l'écran désactive déjà le bouton, un appel malgré tout doit rester une
  /// vraie erreur affichée.
  Future<BoardingValidationSummary> validate() async {
    final summary = await ref.read(boardingRepositoryProvider).validate(_trip);
    await refresh();
    return summary;
  }

  Future<void> addLastMinutePassenger({
    required String firstName,
    required String lastName,
    required String phone,
    required String paymentMethodWire,
    String? transactionRef,
  }) async {
    await ref
        .read(boardingRepositoryProvider)
        .addLastMinutePassenger(
          trip: _trip,
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          paymentMethodWire: paymentMethodWire,
          transactionRef: transactionRef,
        );
    await refresh();
  }
}
