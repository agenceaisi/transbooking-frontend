import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_log_entry.freezed.dart';

/// Une ligne d'historique de synchronisation (`GET /agent/sync/logs/`).
@freezed
abstract class SyncLogEntry with _$SyncLogEntry {
  const factory SyncLogEntry({
    required int id,
    required int bookingsSynced,
    required int parcelsSynced,
    required int validationsSynced,
    required int parcelNotificationsSynced,
    required int conflictsCount,
    required int errorsCount,
    required DateTime createdAt,
  }) = _SyncLogEntry;
}
