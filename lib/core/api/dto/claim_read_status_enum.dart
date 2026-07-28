// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `submitted` - Soumise
/// * `in_progress` - En traitement
/// * `resolved` - Resolue
/// * `closed` - Cloturee
/// * `escalated` - Escaladee
enum ClaimReadStatusEnum {
  @JsonValue('submitted')
  submitted('submitted'),
  @JsonValue('in_progress')
  inProgress('in_progress'),
  @JsonValue('resolved')
  resolved('resolved'),
  @JsonValue('closed')
  closed('closed'),
  @JsonValue('escalated')
  escalated('escalated');

  const ClaimReadStatusEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
