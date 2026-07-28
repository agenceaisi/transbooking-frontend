// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `low` - Faible
/// * `medium` - Moyenne
/// * `high` - Grave
enum SeverityEnum {
  @JsonValue('low')
  low('low'),
  @JsonValue('medium')
  medium('medium'),
  @JsonValue('high')
  high('high');

  const SeverityEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
