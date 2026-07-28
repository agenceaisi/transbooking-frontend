// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_activity.freezed.dart';
part 'agent_activity.g.dart';

@freezed
abstract class AgentActivity with _$AgentActivity {
  const factory AgentActivity({
    @JsonKey(name: 'agent_name')
    required String agentName,
    @JsonKey(name: 'bookings_today')
    required int bookingsToday,
    @JsonKey(name: 'parcels_today')
    required int parcelsToday,
  }) = _AgentActivity;

  factory AgentActivity.fromJson(Map<String, dynamic> json) =>
      _$AgentActivityFromJson(json);
}
