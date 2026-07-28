// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_parcel_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfflineParcelRead _$OfflineParcelReadFromJson(Map<String, dynamic> json) =>
    _OfflineParcelRead(
      trackingNumber: json['tracking_number'] as String,
      recipientName: json['recipient_name'] as String,
      recipientPhone: json['recipient_phone'] as String,
      destinationCity: json['destination_city'] as String,
      status: $enumDecodeNullable(_$Status62aEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$OfflineParcelReadToJson(_OfflineParcelRead instance) =>
    <String, dynamic>{
      'tracking_number': instance.trackingNumber,
      'recipient_name': instance.recipientName,
      'recipient_phone': instance.recipientPhone,
      'destination_city': instance.destinationCity,
      'status': _$Status62aEnumEnumMap[instance.status],
    };

const _$Status62aEnumEnumMap = {
  Status62aEnum.registered: 'registered',
  Status62aEnum.inTransit: 'in_transit',
  Status62aEnum.arrived: 'arrived',
  Status62aEnum.notified: 'notified',
  Status62aEnum.collected: 'collected',
};
