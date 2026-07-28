// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BoardingValidation _$BoardingValidationFromJson(Map<String, dynamic> json) =>
    _BoardingValidation(
      id: (json['id'] as num).toInt(),
      ticketNumber: json['ticket_number'] as String,
      passengerName: json['passenger_name'] as String,
      method: $enumDecodeNullable(
        _$BoardingValidationMethodEnumEnumMap,
        json['method'],
      ),
      methodDisplay: json['method_display'] as String,
      boardedAt: DateTime.parse(json['boarded_at'] as String),
      isOffline: json['is_offline'] as bool?,
    );

Map<String, dynamic> _$BoardingValidationToJson(_BoardingValidation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket_number': instance.ticketNumber,
      'passenger_name': instance.passengerName,
      'method': _$BoardingValidationMethodEnumEnumMap[instance.method],
      'method_display': instance.methodDisplay,
      'boarded_at': instance.boardedAt.toIso8601String(),
      'is_offline': instance.isOffline,
    };

const _$BoardingValidationMethodEnumEnumMap = {
  BoardingValidationMethodEnum.scan: 'scan',
  BoardingValidationMethodEnum.manual: 'manual',
};
