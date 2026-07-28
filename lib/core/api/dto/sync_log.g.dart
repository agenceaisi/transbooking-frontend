// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncLog _$SyncLogFromJson(Map<String, dynamic> json) => _SyncLog(
  id: (json['id'] as num).toInt(),
  bookingsSynced: (json['bookings_synced'] as num?)?.toInt(),
  parcelsSynced: (json['parcels_synced'] as num?)?.toInt(),
  validationsSynced: (json['validations_synced'] as num?)?.toInt(),
  parcelNotificationsSynced: (json['parcel_notifications_synced'] as num?)
      ?.toInt(),
  conflictsCount: (json['conflicts_count'] as num?)?.toInt(),
  errorsCount: (json['errors_count'] as num?)?.toInt(),
  conflicts: (json['conflicts'] as List<dynamic>)
      .map((e) => SyncConflict.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$SyncLogToJson(_SyncLog instance) => <String, dynamic>{
  'id': instance.id,
  'bookings_synced': instance.bookingsSynced,
  'parcels_synced': instance.parcelsSynced,
  'validations_synced': instance.validationsSynced,
  'parcel_notifications_synced': instance.parcelNotificationsSynced,
  'conflicts_count': instance.conflictsCount,
  'errors_count': instance.errorsCount,
  'conflicts': instance.conflicts,
  'created_at': instance.createdAt.toIso8601String(),
};
