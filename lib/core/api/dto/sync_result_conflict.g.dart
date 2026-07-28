// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_result_conflict.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncResultConflict _$SyncResultConflictFromJson(Map<String, dynamic> json) =>
    _SyncResultConflict(
      type: $enumDecode(_$TypeD05EnumEnumMap, json['type']),
      ticketNumber: json['ticket_number'] as String,
      originalSeat: json['original_seat'] as String,
      assignedSeat: json['assigned_seat'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$SyncResultConflictToJson(_SyncResultConflict instance) =>
    <String, dynamic>{
      'type': _$TypeD05EnumEnumMap[instance.type]!,
      'ticket_number': instance.ticketNumber,
      'original_seat': instance.originalSeat,
      'assigned_seat': instance.assignedSeat,
      'message': instance.message,
    };

const _$TypeD05EnumEnumMap = {
  TypeD05Enum.seatConflict: 'seat_conflict',
  TypeD05Enum.tripFull: 'trip_full',
  TypeD05Enum.tripUnavailable: 'trip_unavailable',
  TypeD05Enum.duplicate: 'duplicate',
  TypeD05Enum.invalid: 'invalid',
};
