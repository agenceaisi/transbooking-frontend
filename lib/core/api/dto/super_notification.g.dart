// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuperNotification _$SuperNotificationFromJson(Map<String, dynamic> json) =>
    _SuperNotification(
      type: json['type'] as String,
      severity: json['severity'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      referenceType: json['reference_type'] as String,
      referenceId: (json['reference_id'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$SuperNotificationToJson(_SuperNotification instance) =>
    <String, dynamic>{
      'type': instance.type,
      'severity': instance.severity,
      'title': instance.title,
      'body': instance.body,
      'reference_type': instance.referenceType,
      'reference_id': instance.referenceId,
      'created_at': instance.createdAt.toIso8601String(),
    };
