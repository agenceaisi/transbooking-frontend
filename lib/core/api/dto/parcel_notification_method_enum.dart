// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `sms` - SMS
/// * `call` - Appel manuel
enum ParcelNotificationMethodEnum {
  @JsonValue('sms')
  sms('sms'),
  @JsonValue('call')
  call('call');

  const ParcelNotificationMethodEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
