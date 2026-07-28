// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_result_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncResultError _$SyncResultErrorFromJson(Map<String, dynamic> json) =>
    _SyncResultError(
      type: $enumDecode(_$TypeD05EnumEnumMap, json['type']),
      entity: $enumDecode(_$EntityEnumEnumMap, json['entity']),
      reference: json['reference'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$SyncResultErrorToJson(_SyncResultError instance) =>
    <String, dynamic>{
      'type': _$TypeD05EnumEnumMap[instance.type]!,
      'entity': _$EntityEnumEnumMap[instance.entity]!,
      'reference': instance.reference,
      'message': instance.message,
    };

const _$TypeD05EnumEnumMap = {
  TypeD05Enum.seatConflict: 'seat_conflict',
  TypeD05Enum.tripFull: 'trip_full',
  TypeD05Enum.tripUnavailable: 'trip_unavailable',
  TypeD05Enum.duplicate: 'duplicate',
  TypeD05Enum.invalid: 'invalid',
};

const _$EntityEnumEnumMap = {
  EntityEnum.booking: 'booking',
  EntityEnum.parcel: 'parcel',
  EntityEnum.validation: 'validation',
};
