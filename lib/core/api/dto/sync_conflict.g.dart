// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_conflict.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncConflict _$SyncConflictFromJson(Map<String, dynamic> json) =>
    _SyncConflict(
      id: (json['id'] as num).toInt(),
      entity: $enumDecodeNullable(_$EntityEnumEnumMap, json['entity']),
      conflictType: $enumDecode(
        _$ConflictTypeEnumEnumMap,
        json['conflict_type'],
      ),
      conflictTypeDisplay: json['conflict_type_display'] as String,
      reference: json['reference'] as String?,
      originalSeat: json['original_seat'] as String?,
      assignedSeat: json['assigned_seat'] as String?,
      resolution: json['resolution'] as String,
      resolved: json['resolved'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$SyncConflictToJson(_SyncConflict instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entity': _$EntityEnumEnumMap[instance.entity],
      'conflict_type': _$ConflictTypeEnumEnumMap[instance.conflictType]!,
      'conflict_type_display': instance.conflictTypeDisplay,
      'reference': instance.reference,
      'original_seat': instance.originalSeat,
      'assigned_seat': instance.assignedSeat,
      'resolution': instance.resolution,
      'resolved': instance.resolved,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$EntityEnumEnumMap = {
  EntityEnum.booking: 'booking',
  EntityEnum.parcel: 'parcel',
  EntityEnum.validation: 'validation',
};

const _$ConflictTypeEnumEnumMap = {
  ConflictTypeEnum.seatConflict: 'seat_conflict',
  ConflictTypeEnum.tripFull: 'trip_full',
  ConflictTypeEnum.tripUnavailable: 'trip_unavailable',
  ConflictTypeEnum.duplicate: 'duplicate',
  ConflictTypeEnum.invalid: 'invalid',
};
