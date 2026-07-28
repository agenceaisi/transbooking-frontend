// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParcelUpdate _$ParcelUpdateFromJson(Map<String, dynamic> json) =>
    _ParcelUpdate(
      recipientName: json['recipient_name'] as String,
      recipientPhone: json['recipient_phone'] as String,
      senderName: json['sender_name'] as String,
      senderPhone: json['sender_phone'] as String,
      description: json['description'] as String?,
      destinationStation: (json['destination_station'] as num?)?.toInt(),
      trip: (json['trip'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ParcelUpdateToJson(_ParcelUpdate instance) =>
    <String, dynamic>{
      'recipient_name': instance.recipientName,
      'recipient_phone': instance.recipientPhone,
      'sender_name': instance.senderName,
      'sender_phone': instance.senderPhone,
      'description': instance.description,
      'destination_station': instance.destinationStation,
      'trip': instance.trip,
    };
