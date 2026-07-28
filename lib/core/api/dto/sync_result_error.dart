// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity_enum.dart';
import 'type_d05_enum.dart';

part 'sync_result_error.freezed.dart';
part 'sync_result_error.g.dart';

/// Enregistrement rejete lors d'une synchronisation (`POST /agent/sync/`).
/// 
/// Un enregistrement est rejete lorsqu'il ne peut pas etre integre : voyage
/// complet/indisponible ou donnee invalide. L'ecriture locale correspondante
/// doit etre marquee en echec cote agent.
@freezed
abstract class SyncResultError with _$SyncResultError {
  const factory SyncResultError({
    required TypeD05Enum type,
    required EntityEnum entity,
    required String reference,
    required String message,
  }) = _SyncResultError;

  factory SyncResultError.fromJson(Map<String, dynamic> json) =>
      _$SyncResultErrorFromJson(json);
}
