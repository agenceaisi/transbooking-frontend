// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'platform_payment_method.dart';

part 'patched_platform_payment_methods.freezed.dart';
part 'patched_platform_payment_methods.g.dart';

/// Enveloppe attendue en PATCH sur /super/settings/payment-methods/.
@freezed
abstract class PatchedPlatformPaymentMethods with _$PatchedPlatformPaymentMethods {
  const factory PatchedPlatformPaymentMethods({
    @JsonKey(name: 'payment_methods')
    List<PlatformPaymentMethod>? paymentMethods,
  }) = _PatchedPlatformPaymentMethods;

  factory PatchedPlatformPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$PatchedPlatformPaymentMethodsFromJson(json);
}
