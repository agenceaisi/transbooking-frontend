// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `pending` - En attente
/// * `info_requested` - Informations complementaires demandees
/// * `active` - Active
/// * `suspended` - Suspendue
/// * `rejected` - Rejetee
enum Status47eEnum {
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('info_requested')
  infoRequested('info_requested'),
  @JsonValue('active')
  active('active'),
  @JsonValue('suspended')
  suspended('suspended'),
  @JsonValue('rejected')
  rejected('rejected');

  const Status47eEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
