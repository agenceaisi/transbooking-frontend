// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speed_report_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpeedReportCreate _$SpeedReportCreateFromJson(Map<String, dynamic> json) =>
    _SpeedReportCreate(
      company: (json['company'] as num?)?.toInt(),
      trip: (json['trip'] as num?)?.toInt(),
      estimatedSpeed: (json['estimated_speed'] as num?)?.toInt(),
      severity: $enumDecodeNullable(_$SeverityEnumEnumMap, json['severity']),
      description: json['description'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      reportedAt: json['reported_at'] == null
          ? null
          : DateTime.parse(json['reported_at'] as String),
    );

Map<String, dynamic> _$SpeedReportCreateToJson(_SpeedReportCreate instance) =>
    <String, dynamic>{
      'company': instance.company,
      'trip': instance.trip,
      'estimated_speed': instance.estimatedSpeed,
      'severity': _$SeverityEnumEnumMap[instance.severity],
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'reported_at': instance.reportedAt?.toIso8601String(),
    };

const _$SeverityEnumEnumMap = {
  SeverityEnum.low: 'low',
  SeverityEnum.medium: 'medium',
  SeverityEnum.high: 'high',
};
