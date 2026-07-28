// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncResult _$SyncResultFromJson(Map<String, dynamic> json) => _SyncResult(
  synced: SyncSyncedCounts.fromJson(json['synced'] as Map<String, dynamic>),
  conflicts: (json['conflicts'] as List<dynamic>)
      .map((e) => SyncResultConflict.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: (json['errors'] as List<dynamic>)
      .map((e) => SyncResultError.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SyncResultToJson(_SyncResult instance) =>
    <String, dynamic>{
      'synced': instance.synced,
      'conflicts': instance.conflicts,
      'errors': instance.errors,
    };
