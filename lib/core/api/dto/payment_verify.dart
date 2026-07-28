// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_verify.freezed.dart';
part 'payment_verify.g.dart';

/// Confirmation manuelle d'un paiement especes (saisie de la reference).
@freezed
abstract class PaymentVerify with _$PaymentVerify {
  const factory PaymentVerify({
    @JsonKey(name: 'transaction_ref')
    String? transactionRef,
  }) = _PaymentVerify;

  factory PaymentVerify.fromJson(Map<String, dynamic> json) =>
      _$PaymentVerifyFromJson(json);
}
