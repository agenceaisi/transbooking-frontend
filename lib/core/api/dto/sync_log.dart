// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'sync_conflict.dart';

part 'sync_log.freezed.dart';
part 'sync_log.g.dart';

/// Lecture d'un journal de synchronisation avec ses conflits.
@freezed
abstract class SyncLog with _$SyncLog {
  const factory SyncLog({
    required int id,
    @JsonKey(name: 'bookings_synced')
    int? bookingsSynced,
    @JsonKey(name: 'parcels_synced')
    int? parcelsSynced,
    @JsonKey(name: 'validations_synced')
    int? validationsSynced,
    @JsonKey(name: 'parcel_notifications_synced')
    int? parcelNotificationsSynced,
    @JsonKey(name: 'conflicts_count')
    int? conflictsCount,
    @JsonKey(name: 'errors_count')
    int? errorsCount,
    required List<SyncConflict> conflicts,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SyncLog;

  factory SyncLog.fromJson(Map<String, dynamic> json) =>
      _$SyncLogFromJson(json);
}
