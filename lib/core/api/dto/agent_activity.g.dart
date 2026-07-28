// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentActivity _$AgentActivityFromJson(Map<String, dynamic> json) =>
    _AgentActivity(
      agentName: json['agent_name'] as String,
      bookingsToday: (json['bookings_today'] as num).toInt(),
      parcelsToday: (json['parcels_today'] as num).toInt(),
    );

Map<String, dynamic> _$AgentActivityToJson(_AgentActivity instance) =>
    <String, dynamic>{
      'agent_name': instance.agentName,
      'bookings_today': instance.bookingsToday,
      'parcels_today': instance.parcelsToday,
    };
