// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `booking` - Reservation
/// * `parcel` - Colis
/// * `validation` - Embarquement
enum EntityEnum {
  @JsonValue('booking')
  booking('booking'),
  @JsonValue('parcel')
  parcel('parcel'),
  @JsonValue('validation')
  validation('validation');

  const EntityEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
