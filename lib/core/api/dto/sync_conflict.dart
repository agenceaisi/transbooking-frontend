// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'conflict_type_enum.dart';
import 'entity_enum.dart';

part 'sync_conflict.freezed.dart';
part 'sync_conflict.g.dart';

/// Lecture d'un conflit de synchronisation.
@freezed
abstract class SyncConflict with _$SyncConflict {
  const factory SyncConflict({
    required int id,
    EntityEnum? entity,
    @JsonKey(name: 'conflict_type')
    required ConflictTypeEnum conflictType,
    @JsonKey(name: 'conflict_type_display')
    required String conflictTypeDisplay,
    String? reference,
    @JsonKey(name: 'original_seat')
    String? originalSeat,
    @JsonKey(name: 'assigned_seat')
    String? assignedSeat,
    required String resolution,
    bool? resolved,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SyncConflict;

  factory SyncConflict.fromJson(Map<String, dynamic> json) =>
      _$SyncConflictFromJson(json);
}
