// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_departure.dart';

part 'agent_dashboard.freezed.dart';
part 'agent_dashboard.g.dart';

@freezed
abstract class AgentDashboard with _$AgentDashboard {
  const factory AgentDashboard({
    @JsonKey(name: 'next_departures')
    required List<AgentDeparture> nextDepartures,
    @JsonKey(name: 'pending_alerts')
    required int pendingAlerts,
    @JsonKey(name: 'connection_status')
    required String connectionStatus,
  }) = _AgentDashboard;

  factory AgentDashboard.fromJson(Map<String, dynamic> json) =>
      _$AgentDashboardFromJson(json);
}
