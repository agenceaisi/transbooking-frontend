// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `valid` - Billet valide
/// * `unpaid` - Paiement non confirme
/// * `cancelled` - Reservation annulee
/// * `refunded` - Reservation remboursee
/// * `already_boarded` - Passager deja embarque
/// * `invalid` - Billet invalide
/// * `not_found` - Billet introuvable
enum ResultEnum {
  @JsonValue('valid')
  valid('valid'),
  @JsonValue('unpaid')
  unpaid('unpaid'),
  @JsonValue('cancelled')
  cancelled('cancelled'),
  @JsonValue('refunded')
  refunded('refunded'),
  @JsonValue('already_boarded')
  alreadyBoarded('already_boarded'),
  @JsonValue('invalid')
  invalid('invalid'),
  @JsonValue('not_found')
  notFound('not_found');

  const ResultEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
