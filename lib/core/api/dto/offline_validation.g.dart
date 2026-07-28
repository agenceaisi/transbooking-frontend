// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfflineValidation _$OfflineValidationFromJson(Map<String, dynamic> json) =>
    _OfflineValidation(
      ticketNumber: json['ticket_number'] as String,
      offlineCreatedAt: DateTime.parse(json['offline_created_at'] as String),
    );

Map<String, dynamic> _$OfflineValidationToJson(_OfflineValidation instance) =>
    <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'offline_created_at': instance.offlineCreatedAt.toIso8601String(),
    };
