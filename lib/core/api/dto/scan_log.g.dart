// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScanLog _$ScanLogFromJson(Map<String, dynamic> json) => _ScanLog(
  id: (json['id'] as num).toInt(),
  ticketNumber: json['ticket_number'] as String,
  result: $enumDecode(_$ResultEnumEnumMap, json['result']),
  resultDisplay: json['result_display'] as String,
  passengerName: json['passenger_name'] as String?,
  seatNumber: json['seat_number'] as String?,
  scannedAt: DateTime.parse(json['scanned_at'] as String),
);

Map<String, dynamic> _$ScanLogToJson(_ScanLog instance) => <String, dynamic>{
  'id': instance.id,
  'ticket_number': instance.ticketNumber,
  'result': _$ResultEnumEnumMap[instance.result]!,
  'result_display': instance.resultDisplay,
  'passenger_name': instance.passengerName,
  'seat_number': instance.seatNumber,
  'scanned_at': instance.scannedAt.toIso8601String(),
};

const _$ResultEnumEnumMap = {
  ResultEnum.valid: 'valid',
  ResultEnum.unpaid: 'unpaid',
  ResultEnum.cancelled: 'cancelled',
  ResultEnum.refunded: 'refunded',
  ResultEnum.alreadyBoarded: 'already_boarded',
  ResultEnum.invalid: 'invalid',
  ResultEnum.notFound: 'not_found',
};
