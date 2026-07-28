// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_commission.dart';

part 'commission_settings.freezed.dart';
part 'commission_settings.g.dart';

/// Taux de commission global + surcharges par compagnie.
@freezed
abstract class CommissionSettings with _$CommissionSettings {
  const factory CommissionSettings({
    @JsonKey(name: 'global_rate')
    String? globalRate,
    @JsonKey(name: 'company_overrides')
    List<CompanyCommission>? companyOverrides,
  }) = _CommissionSettings;

  factory CommissionSettings.fromJson(Map<String, dynamic> json) =>
      _$CommissionSettingsFromJson(json);
}
