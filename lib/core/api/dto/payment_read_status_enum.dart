// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:json_annotation/json_annotation.dart';

/// * `pending` - En attente
/// * `otp_required` - Code de confirmation attendu
/// * `paid` - Paye
/// * `failed` - Echoue
/// * `refunded` - Rembourse
enum PaymentReadStatusEnum {
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('otp_required')
  otpRequired('otp_required'),
  @JsonValue('paid')
  paid('paid'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('refunded')
  refunded('refunded');

  const PaymentReadStatusEnum(this.wireValue);

  /// Valeur technique échangée avec l'API.
  final String wireValue;
}
