// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'sync_result_conflict.dart';
import 'sync_result_error.dart';
import 'sync_synced_counts.dart';

part 'sync_result.freezed.dart';
part 'sync_result.g.dart';

/// Reponse de `POST /api/v1/agent/sync/` (cf. business_rules.md §6).
/// 
/// Attention : ``conflicts`` et ``errors`` decrivent les descripteurs
/// transitoires renvoyes par la synchronisation, PAS le schema du modele
/// ``SyncConflict`` (celui-ci est expose par `GET /agent/sync/conflicts/`).
@freezed
abstract class SyncResult with _$SyncResult {
  const factory SyncResult({
    required SyncSyncedCounts synced,
    required List<SyncResultConflict> conflicts,
    required List<SyncResultError> errors,
  }) = _SyncResult;

  factory SyncResult.fromJson(Map<String, dynamic> json) =>
      _$SyncResultFromJson(json);
}
