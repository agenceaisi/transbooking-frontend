// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$Type6f3EnumEnumMap, json['type']),
      typeDisplay: json['type_display'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      isRead: json['is_read'] as bool,
      referenceId: (json['reference_id'] as num?)?.toInt(),
      referenceType: json['reference_type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$Type6f3EnumEnumMap[instance.type]!,
      'type_display': instance.typeDisplay,
      'title': instance.title,
      'body': instance.body,
      'is_read': instance.isRead,
      'reference_id': instance.referenceId,
      'reference_type': instance.referenceType,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$Type6f3EnumEnumMap = {
  Type6f3Enum.booking: 'booking',
  Type6f3Enum.payment: 'payment',
  Type6f3Enum.parcel: 'parcel',
  Type6f3Enum.claim: 'claim',
  Type6f3Enum.review: 'review',
  Type6f3Enum.trip: 'trip',
  Type6f3Enum.message: 'message',
  Type6f3Enum.system: 'system',
};
