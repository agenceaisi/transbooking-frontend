// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_commission_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedCommissionSettings _$PatchedCommissionSettingsFromJson(
  Map<String, dynamic> json,
) => _PatchedCommissionSettings(
  globalRate: json['global_rate'] as String?,
  companyOverrides: (json['company_overrides'] as List<dynamic>?)
      ?.map((e) => CompanyCommission.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PatchedCommissionSettingsToJson(
  _PatchedCommissionSettings instance,
) => <String, dynamic>{
  'global_rate': instance.globalRate,
  'company_overrides': instance.companyOverrides,
};
