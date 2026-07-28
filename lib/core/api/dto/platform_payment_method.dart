// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method80c_enum.dart';

part 'platform_payment_method.freezed.dart';
part 'platform_payment_method.g.dart';

/// Activation d'un moyen de paiement au niveau plateforme.
@freezed
abstract class PlatformPaymentMethod with _$PlatformPaymentMethod {
  const factory PlatformPaymentMethod({
    required Method80cEnum method,
    @JsonKey(name: 'method_display')
    required String methodDisplay,
    @JsonKey(name: 'is_active')
    bool? isActive,
  }) = _PlatformPaymentMethod;

  factory PlatformPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PlatformPaymentMethodFromJson(json);
}
