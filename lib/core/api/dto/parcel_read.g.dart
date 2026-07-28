// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParcelRead _$ParcelReadFromJson(Map<String, dynamic> json) => _ParcelRead(
  id: (json['id'] as num).toInt(),
  trackingNumber: json['tracking_number'] as String,
  company: (json['company'] as num).toInt(),
  trip: (json['trip'] as num?)?.toInt(),
  originCity: json['origin_city'] as String,
  destinationCity: json['destination_city'] as String,
  originStation: (json['origin_station'] as num?)?.toInt(),
  destinationStation: (json['destination_station'] as num?)?.toInt(),
  senderName: json['sender_name'] as String,
  senderPhone: json['sender_phone'] as String,
  recipientName: json['recipient_name'] as String,
  recipientPhone: json['recipient_phone'] as String,
  description: json['description'] as String?,
  weightKg: json['weight_kg'] as String,
  tariff: json['tariff'] as String?,
  qrCode: json['qr_code'] as String?,
  status: $enumDecodeNullable(_$Status62aEnumEnumMap, json['status']),
  statusDisplay: json['status_display'] as String,
  collectedAt: json['collected_at'] == null
      ? null
      : DateTime.parse(json['collected_at'] as String),
  isOffline: json['is_offline'] as bool?,
  notifications: (json['notifications'] as List<dynamic>)
      .map((e) => ParcelNotification.fromJson(e as Map<String, dynamic>))
      .toList(),
  history: json['history'] as List<dynamic>,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ParcelReadToJson(_ParcelRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tracking_number': instance.trackingNumber,
      'company': instance.company,
      'trip': instance.trip,
      'origin_city': instance.originCity,
      'destination_city': instance.destinationCity,
      'origin_station': instance.originStation,
      'destination_station': instance.destinationStation,
      'sender_name': instance.senderName,
      'sender_phone': instance.senderPhone,
      'recipient_name': instance.recipientName,
      'recipient_phone': instance.recipientPhone,
      'description': instance.description,
      'weight_kg': instance.weightKg,
      'tariff': instance.tariff,
      'qr_code': instance.qrCode,
      'status': _$Status62aEnumEnumMap[instance.status],
      'status_display': instance.statusDisplay,
      'collected_at': instance.collectedAt?.toIso8601String(),
      'is_offline': instance.isOffline,
      'notifications': instance.notifications,
      'history': instance.history,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$Status62aEnumEnumMap = {
  Status62aEnum.registered: 'registered',
  Status62aEnum.inTransit: 'in_transit',
  Status62aEnum.arrived: 'arrived',
  Status62aEnum.notified: 'notified',
  Status62aEnum.collected: 'collected',
};
