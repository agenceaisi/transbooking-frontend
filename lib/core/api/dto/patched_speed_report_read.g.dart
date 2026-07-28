// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_speed_report_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedSpeedReportRead _$PatchedSpeedReportReadFromJson(
  Map<String, dynamic> json,
) => _PatchedSpeedReportRead(
  id: (json['id'] as num?)?.toInt(),
  company: (json['company'] as num?)?.toInt(),
  companyName: json['company_name'] as String?,
  trip: (json['trip'] as num?)?.toInt(),
  estimatedSpeed: (json['estimated_speed'] as num?)?.toInt(),
  severity: $enumDecodeNullable(_$SeverityEnumEnumMap, json['severity']),
  severityDisplay: json['severity_display'] as String?,
  description: json['description'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  reportedAt: json['reported_at'] == null
      ? null
      : DateTime.parse(json['reported_at'] as String),
  status: $enumDecodeNullable(
    _$SpeedReportReadStatusEnumEnumMap,
    json['status'],
  ),
  statusDisplay: json['status_display'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$PatchedSpeedReportReadToJson(
  _PatchedSpeedReportRead instance,
) => <String, dynamic>{
  'id': instance.id,
  'company': instance.company,
  'company_name': instance.companyName,
  'trip': instance.trip,
  'estimated_speed': instance.estimatedSpeed,
  'severity': _$SeverityEnumEnumMap[instance.severity],
  'severity_display': instance.severityDisplay,
  'description': instance.description,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'reported_at': instance.reportedAt?.toIso8601String(),
  'status': _$SpeedReportReadStatusEnumEnumMap[instance.status],
  'status_display': instance.statusDisplay,
  'created_at': instance.createdAt?.toIso8601String(),
};

const _$SeverityEnumEnumMap = {
  SeverityEnum.low: 'low',
  SeverityEnum.medium: 'medium',
  SeverityEnum.high: 'high',
};

const _$SpeedReportReadStatusEnumEnumMap = {
  SpeedReportReadStatusEnum.pending: 'pending',
  SpeedReportReadStatusEnum.reviewed: 'reviewed',
  SpeedReportReadStatusEnum.closed: 'closed',
};
