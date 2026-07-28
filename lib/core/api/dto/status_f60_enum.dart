// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `scheduled` - Programme
/// * `in_progress` - En cours
/// * `delayed` - Retarde
/// * `cancelled` - Annule
/// * `completed` - Termine
enum StatusF60Enum {
  @JsonValue('scheduled')
  scheduled('scheduled'),
  @JsonValue('in_progress')
  inProgress('in_progress'),
  @JsonValue('delayed')
  delayed('delayed'),
  @JsonValue('cancelled')
  cancelled('cancelled'),
  @JsonValue('completed')
  completed('completed');

  const StatusF60Enum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
