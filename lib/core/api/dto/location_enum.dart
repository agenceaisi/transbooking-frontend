// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `hold` - En soute
/// * `cabin` - En cabine
enum LocationEnum {
  @JsonValue('hold')
  hold('hold'),
  @JsonValue('cabin')
  cabin('cabin');

  const LocationEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
