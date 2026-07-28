import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_trip.dart';

part 'agent_schedule.freezed.dart';

/// Instantané du programme du jour (`GET /agent/trips/today/`).
@freezed
abstract class AgentScheduleSnapshot with _$AgentScheduleSnapshot {
  const factory AgentScheduleSnapshot({
    required List<AgentTrip> trips,

    /// Renseigné uniquement si les données viennent du cache local (paquet
    /// du matin, phase 5A) plutôt que du réseau.
    DateTime? cachedAt,
  }) = _AgentScheduleSnapshot;

  const AgentScheduleSnapshot._();

  bool get isFromCache => cachedAt != null;
}
