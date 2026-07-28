// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityLog _$ActivityLogFromJson(Map<String, dynamic> json) => _ActivityLog(
  id: (json['id'] as num).toInt(),
  user: (json['user'] as num?)?.toInt(),
  userName: json['user_name'] as String,
  userRole: json['user_role'] as String?,
  action: json['action'] as String,
  entityType: json['entity_type'] as String?,
  entityId: (json['entity_id'] as num?)?.toInt(),
  details: json['details'],
  ipAddress: json['ip_address'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ActivityLogToJson(_ActivityLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'user_name': instance.userName,
      'user_role': instance.userRole,
      'action': instance.action,
      'entity_type': instance.entityType,
      'entity_id': instance.entityId,
      'details': instance.details,
      'ip_address': instance.ipAddress,
      'created_at': instance.createdAt.toIso8601String(),
    };
