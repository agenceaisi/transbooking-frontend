// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `call` - Appel manuel
enum OfflineParcelNotificationMethodEnum {
  @JsonValue('call')
  call('call');

  const OfflineParcelNotificationMethodEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
