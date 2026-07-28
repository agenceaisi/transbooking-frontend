// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type_d05_enum.dart';

part 'sync_result_conflict.freezed.dart';
part 'sync_result_conflict.g.dart';

/// Conflit de siege resolu automatiquement, renvoye par `POST /agent/sync/`.
/// 
/// Seuls les conflits de siege reattribues apparaissent dans ``conflicts`` : ils
/// sont toujours resolus (le prochain siege libre a ete attribue). Les rejets
/// (voyage complet, voyage indisponible, donnee invalide) partent dans
/// ``errors`` (cf. business_rules.md §6).
@freezed
abstract class SyncResultConflict with _$SyncResultConflict {
  const factory SyncResultConflict({
    required TypeD05Enum type,
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    @JsonKey(name: 'original_seat')
    required String originalSeat,
    @JsonKey(name: 'assigned_seat')
    required String assignedSeat,
    required String message,
  }) = _SyncResultConflict;

  factory SyncResultConflict.fromJson(Map<String, dynamic> json) =>
      _$SyncResultConflictFromJson(json);
}
