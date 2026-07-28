// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `pending` - En attente
/// * `paid` - Paye
/// * `cancelled` - Annule
/// * `refunded` - Rembourse
enum StatusEe3Enum {
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('paid')
  paid('paid'),
  @JsonValue('cancelled')
  cancelled('cancelled'),
  @JsonValue('refunded')
  refunded('refunded');

  const StatusEe3Enum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
