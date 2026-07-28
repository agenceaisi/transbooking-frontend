// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `booking` - Reservation
/// * `payment` - Paiement
/// * `parcel` - Colis
/// * `claim` - Reclamation
/// * `review` - Avis
/// * `trip` - Voyage
/// * `message` - Message
/// * `system` - Systeme
enum Type6f3Enum {
  @JsonValue('booking')
  booking('booking'),
  @JsonValue('payment')
  payment('payment'),
  @JsonValue('parcel')
  parcel('parcel'),
  @JsonValue('claim')
  claim('claim'),
  @JsonValue('review')
  review('review'),
  @JsonValue('trip')
  trip('trip'),
  @JsonValue('message')
  message('message'),
  @JsonValue('system')
  system('system');

  const Type6f3Enum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
