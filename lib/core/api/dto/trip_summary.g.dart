// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripSummary _$TripSummaryFromJson(Map<String, dynamic> json) => _TripSummary(
  id: (json['id'] as num).toInt(),
  originCity: json['origin_city'] as String,
  destinationCity: json['destination_city'] as String,
  companyName: json['company_name'] as String,
  companySigle: json['company_sigle'] as String,
  departureTime: DateTime.parse(json['departure_time'] as String),
  arrivalTime: json['arrival_time'] == null
      ? null
      : DateTime.parse(json['arrival_time'] as String),
  status: $enumDecodeNullable(_$StatusF60EnumEnumMap, json['status']),
);

Map<String, dynamic> _$TripSummaryToJson(_TripSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'origin_city': instance.originCity,
      'destination_city': instance.destinationCity,
      'company_name': instance.companyName,
      'company_sigle': instance.companySigle,
      'departure_time': instance.departureTime.toIso8601String(),
      'arrival_time': instance.arrivalTime?.toIso8601String(),
      'status': _$StatusF60EnumEnumMap[instance.status],
    };

const _$StatusF60EnumEnumMap = {
  StatusF60Enum.scheduled: 'scheduled',
  StatusF60Enum.inProgress: 'in_progress',
  StatusF60Enum.delayed: 'delayed',
  StatusF60Enum.cancelled: 'cancelled',
  StatusF60Enum.completed: 'completed',
};
