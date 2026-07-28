// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_parcel_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentParcelCreate _$AgentParcelCreateFromJson(Map<String, dynamic> json) =>
    _AgentParcelCreate(
      originCity: (json['origin_city'] as num).toInt(),
      destinationCity: (json['destination_city'] as num).toInt(),
      destinationStation: (json['destination_station'] as num?)?.toInt(),
      trip: (json['trip'] as num?)?.toInt(),
      senderName: json['sender_name'] as String,
      senderPhone: json['sender_phone'] as String,
      recipientName: json['recipient_name'] as String,
      recipientPhone: json['recipient_phone'] as String,
      description: json['description'] as String?,
      weightKg: json['weight_kg'] as String,
      trackingNumber: json['tracking_number'] as String?,
      isOffline: json['is_offline'] as bool?,
      offlineCreatedAt: json['offline_created_at'] == null
          ? null
          : DateTime.parse(json['offline_created_at'] as String),
    );

Map<String, dynamic> _$AgentParcelCreateToJson(_AgentParcelCreate instance) =>
    <String, dynamic>{
      'origin_city': instance.originCity,
      'destination_city': instance.destinationCity,
      'destination_station': instance.destinationStation,
      'trip': instance.trip,
      'sender_name': instance.senderName,
      'sender_phone': instance.senderPhone,
      'recipient_name': instance.recipientName,
      'recipient_phone': instance.recipientPhone,
      'description': instance.description,
      'weight_kg': instance.weightKg,
      'tracking_number': instance.trackingNumber,
      'is_offline': instance.isOffline,
      'offline_created_at': instance.offlineCreatedAt?.toIso8601String(),
    };
