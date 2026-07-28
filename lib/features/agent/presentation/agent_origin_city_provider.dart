import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../public/domain/city_ref.dart';
import '../../public/presentation/public_providers.dart';
import 'agent_schedule_controller.dart';

/// Ville de départ de l'agent (gare/compagnie), pour l'enregistrement colis.
///
/// **Aucun champ d'API ne l'expose directement** — ni `users/me/`, ni
/// `agent/dashboard/` (mémoire du projet, phase 3, point 4) — alors que
/// `AgentParcelCreate.origin_city` l'exige (id). Elle est donc **déduite** :
/// le nom de ville des voyages du programme du jour (`agent/trips/today/`,
/// toujours la même gare pour un agent) est mis en correspondance avec
/// `GET /cities/` pour en tirer l'id. `null` tant que l'un des deux n'a pas
/// répondu, ou si aucun voyage n'est encore programmé aujourd'hui.
final agentOriginCityProvider = Provider<CityRef?>((ref) {
  final cities = ref.watch(citiesProvider).value;
  final schedule = ref.watch(agentScheduleControllerProvider).value;
  if (cities == null || schedule == null || schedule.trips.isEmpty) {
    return null;
  }

  final originName = schedule.trips.first.originCity;
  for (final city in cities) {
    if (city.name == originName) return city;
  }
  return null;
});
