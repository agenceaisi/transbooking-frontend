// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_commission.dart';

part 'patched_commission_settings.freezed.dart';
part 'patched_commission_settings.g.dart';

/// Taux de commission global + surcharges par compagnie.
@freezed
abstract class PatchedCommissionSettings with _$PatchedCommissionSettings {
  const factory PatchedCommissionSettings({
    @JsonKey(name: 'global_rate')
    String? globalRate,
    @JsonKey(name: 'company_overrides')
    List<CompanyCommission>? companyOverrides,
  }) = _PatchedCommissionSettings;

  factory PatchedCommissionSettings.fromJson(Map<String, dynamic> json) =>
      _$PatchedCommissionSettingsFromJson(json);
}
