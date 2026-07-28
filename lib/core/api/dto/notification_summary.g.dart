// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSummary _$NotificationSummaryFromJson(Map<String, dynamic> json) =>
    _NotificationSummary(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
      isRead: json['is_read'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      type: $enumDecode(_$Type6f3EnumEnumMap, json['type']),
      typeDisplay: json['type_display'] as String?,
    );

Map<String, dynamic> _$NotificationSummaryToJson(
  _NotificationSummary instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'is_read': instance.isRead,
  'created_at': instance.createdAt.toIso8601String(),
  'type': _$Type6f3EnumEnumMap[instance.type]!,
  'type_display': instance.typeDisplay,
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
