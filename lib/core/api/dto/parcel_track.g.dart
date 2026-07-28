// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParcelTrack _$ParcelTrackFromJson(Map<String, dynamic> json) => _ParcelTrack(
  trackingNumber: json['tracking_number'] as String,
  status: $enumDecodeNullable(_$Status62aEnumEnumMap, json['status']),
  statusDisplay: json['status_display'] as String,
  originCity: json['origin_city'] as String,
  destinationCity: json['destination_city'] as String,
  recipientName: json['recipient_name'] as String,
  recipientPhone: json['recipient_phone'] as String,
  currentLocation: json['current_location'] as String?,
  estimatedDelivery: json['estimated_delivery'] == null
      ? null
      : DateTime.parse(json['estimated_delivery'] as String),
  history: (json['history'] as List<dynamic>)
      .map((e) => ParcelHistoryEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ParcelTrackToJson(_ParcelTrack instance) =>
    <String, dynamic>{
      'tracking_number': instance.trackingNumber,
      'status': _$Status62aEnumEnumMap[instance.status],
      'status_display': instance.statusDisplay,
      'origin_city': instance.originCity,
      'destination_city': instance.destinationCity,
      'recipient_name': instance.recipientName,
      'recipient_phone': instance.recipientPhone,
      'current_location': instance.currentLocation,
      'estimated_delivery': instance.estimatedDelivery?.toIso8601String(),
      'history': instance.history,
    };

const _$Status62aEnumEnumMap = {
  Status62aEnum.registered: 'registered',
  Status62aEnum.inTransit: 'in_transit',
  Status62aEnum.arrived: 'arrived',
  Status62aEnum.notified: 'notified',
  Status62aEnum.collected: 'collected',
};
