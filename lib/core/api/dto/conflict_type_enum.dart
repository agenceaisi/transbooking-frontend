// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `seat_conflict` - Conflit de siege
/// * `trip_full` - Voyage complet
/// * `trip_unavailable` - Voyage indisponible
/// * `duplicate` - Doublon ignore
/// * `invalid` - Donnee invalide
enum ConflictTypeEnum {
  @JsonValue('seat_conflict')
  seatConflict('seat_conflict'),
  @JsonValue('trip_full')
  tripFull('trip_full'),
  @JsonValue('trip_unavailable')
  tripUnavailable('trip_unavailable'),
  @JsonValue('duplicate')
  duplicate('duplicate'),
  @JsonValue('invalid')
  invalid('invalid');

  const ConflictTypeEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
