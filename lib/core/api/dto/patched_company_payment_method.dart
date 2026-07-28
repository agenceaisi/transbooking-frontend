// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method80c_enum.dart';

part 'patched_company_payment_method.freezed.dart';
part 'patched_company_payment_method.g.dart';

@freezed
abstract class PatchedCompanyPaymentMethod with _$PatchedCompanyPaymentMethod {
  const factory PatchedCompanyPaymentMethod({
    Method80cEnum? method,
    @JsonKey(name: 'is_active')
    bool? isActive,
  }) = _PatchedCompanyPaymentMethod;

  factory PatchedCompanyPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PatchedCompanyPaymentMethodFromJson(json);
}
