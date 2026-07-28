// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_synced_counts.freezed.dart';
part 'sync_synced_counts.g.dart';

/// Compteurs d'enregistrements integres a la synchronisation.
@freezed
abstract class SyncSyncedCounts with _$SyncSyncedCounts {
  const factory SyncSyncedCounts({
    required int bookings,
    required int parcels,
    required int validations,
    @JsonKey(name: 'parcel_notifications')
    required int parcelNotifications,
  }) = _SyncSyncedCounts;

  factory SyncSyncedCounts.fromJson(Map<String, dynamic> json) =>
      _$SyncSyncedCountsFromJson(json);
}
