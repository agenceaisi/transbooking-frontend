// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentDashboard _$AgentDashboardFromJson(Map<String, dynamic> json) =>
    _AgentDashboard(
      nextDepartures: (json['next_departures'] as List<dynamic>)
          .map((e) => AgentDeparture.fromJson(e as Map<String, dynamic>))
          .toList(),
      pendingAlerts: (json['pending_alerts'] as num).toInt(),
      connectionStatus: json['connection_status'] as String,
    );

Map<String, dynamic> _$AgentDashboardToJson(_AgentDashboard instance) =>
    <String, dynamic>{
      'next_departures': instance.nextDepartures,
      'pending_alerts': instance.pendingAlerts,
      'connection_status': instance.connectionStatus,
    };
