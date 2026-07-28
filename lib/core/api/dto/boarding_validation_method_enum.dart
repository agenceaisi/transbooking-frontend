// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `scan` - Scan QR
/// * `manual` - Manuel
enum BoardingValidationMethodEnum {
  @JsonValue('scan')
  scan('scan'),
  @JsonValue('manual')
  manual('manual');

  const BoardingValidationMethodEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
