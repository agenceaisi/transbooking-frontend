// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `pending` - En attente
/// * `reviewed` - Examine
/// * `closed` - Cloture
enum SpeedReportReadStatusEnum {
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('reviewed')
  reviewed('reviewed'),
  @JsonValue('closed')
  closed('closed');

  const SpeedReportReadStatusEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
