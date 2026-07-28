// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_commission.freezed.dart';
part 'company_commission.g.dart';

/// Surcharge de commission d'une compagnie.
@freezed
abstract class CompanyCommission with _$CompanyCommission {
  const factory CompanyCommission({
    @JsonKey(name: 'company_id')
    required int companyId,
    @JsonKey(name: 'company_name')
    required String companyName,
    @JsonKey(name: 'commission_rate')
    required String? commissionRate,
  }) = _CompanyCommission;

  factory CompanyCommission.fromJson(Map<String, dynamic> json) =>
      _$CompanyCommissionFromJson(json);
}
