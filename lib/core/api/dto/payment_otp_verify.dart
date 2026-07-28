// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_otp_verify.freezed.dart';
part 'payment_otp_verify.g.dart';

/// Saisie du code de confirmation Mobile Money.
@freezed
abstract class PaymentOtpVerify with _$PaymentOtpVerify {
  const factory PaymentOtpVerify({
    required String otp,
  }) = _PaymentOtpVerify;

  factory PaymentOtpVerify.fromJson(Map<String, dynamic> json) =>
      _$PaymentOtpVerifyFromJson(json);
}
