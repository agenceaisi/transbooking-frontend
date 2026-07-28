// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParcelNotification _$ParcelNotificationFromJson(Map<String, dynamic> json) =>
    _ParcelNotification(
      id: (json['id'] as num).toInt(),
      method: $enumDecodeNullable(
        _$ParcelNotificationMethodEnumEnumMap,
        json['method'],
      ),
      methodDisplay: json['method_display'] as String,
      message: json['message'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ParcelNotificationToJson(_ParcelNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method': _$ParcelNotificationMethodEnumEnumMap[instance.method],
      'method_display': instance.methodDisplay,
      'message': instance.message,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$ParcelNotificationMethodEnumEnumMap = {
  ParcelNotificationMethodEnum.sms: 'sms',
  ParcelNotificationMethodEnum.call: 'call',
};
