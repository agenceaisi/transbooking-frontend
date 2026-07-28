// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method80c_enum.dart';

part 'company_payment_method.freezed.dart';
part 'company_payment_method.g.dart';

@freezed
abstract class CompanyPaymentMethod with _$CompanyPaymentMethod {
  const factory CompanyPaymentMethod({
    required Method80cEnum method,
    @JsonKey(name: 'is_active')
    bool? isActive,
  }) = _CompanyPaymentMethod;

  factory CompanyPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$CompanyPaymentMethodFromJson(json);
}
