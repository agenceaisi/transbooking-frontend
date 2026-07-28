// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `active` - Active
/// * `maintenance` - Maintenance
/// * `inactive` - Inactive
enum VehicleStatusEnum {
  @JsonValue('active')
  active('active'),
  @JsonValue('maintenance')
  maintenance('maintenance'),
  @JsonValue('inactive')
  inactive('inactive');

  const VehicleStatusEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
