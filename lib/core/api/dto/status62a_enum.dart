// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `registered` - Enregistre
/// * `in_transit` - En transit
/// * `arrived` - Arrive
/// * `notified` - Destinataire prevenu
/// * `collected` - Remis
enum Status62aEnum {
  @JsonValue('registered')
  registered('registered'),
  @JsonValue('in_transit')
  inTransit('in_transit'),
  @JsonValue('arrived')
  arrived('arrived'),
  @JsonValue('notified')
  notified('notified'),
  @JsonValue('collected')
  collected('collected');

  const Status62aEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
