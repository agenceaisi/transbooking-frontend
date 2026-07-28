// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_synced_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncSyncedCounts _$SyncSyncedCountsFromJson(Map<String, dynamic> json) =>
    _SyncSyncedCounts(
      bookings: (json['bookings'] as num).toInt(),
      parcels: (json['parcels'] as num).toInt(),
      validations: (json['validations'] as num).toInt(),
      parcelNotifications: (json['parcel_notifications'] as num).toInt(),
    );

Map<String, dynamic> _$SyncSyncedCountsToJson(_SyncSyncedCounts instance) =>
    <String, dynamic>{
      'bookings': instance.bookings,
      'parcels': instance.parcels,
      'validations': instance.validations,
      'parcel_notifications': instance.parcelNotifications,
    };
