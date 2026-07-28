// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `active` - Actif
/// * `expired` - Expire
/// * `cancelled` - Annule
enum StatusEaaEnum {
  @JsonValue('active')
  active('active'),
  @JsonValue('expired')
  expired('expired'),
  @JsonValue('cancelled')
  cancelled('cancelled');

  const StatusEaaEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
