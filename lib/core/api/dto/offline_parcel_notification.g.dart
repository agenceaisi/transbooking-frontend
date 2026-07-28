// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_parcel_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfflineParcelNotification _$OfflineParcelNotificationFromJson(
  Map<String, dynamic> json,
) => _OfflineParcelNotification(
  trackingNumber: json['tracking_number'] as String,
  method: $enumDecodeNullable(
    _$OfflineParcelNotificationMethodEnumEnumMap,
    json['method'],
  ),
  offlineCreatedAt: DateTime.parse(json['offline_created_at'] as String),
);

Map<String, dynamic> _$OfflineParcelNotificationToJson(
  _OfflineParcelNotification instance,
) => <String, dynamic>{
  'tracking_number': instance.trackingNumber,
  'method': _$OfflineParcelNotificationMethodEnumEnumMap[instance.method],
  'offline_created_at': instance.offlineCreatedAt.toIso8601String(),
};

const _$OfflineParcelNotificationMethodEnumEnumMap = {
  OfflineParcelNotificationMethodEnum.call: 'call',
};
