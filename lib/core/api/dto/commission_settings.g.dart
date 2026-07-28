// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommissionSettings _$CommissionSettingsFromJson(Map<String, dynamic> json) =>
    _CommissionSettings(
      globalRate: json['global_rate'] as String?,
      companyOverrides: (json['company_overrides'] as List<dynamic>?)
          ?.map((e) => CompanyCommission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommissionSettingsToJson(_CommissionSettings instance) =>
    <String, dynamic>{
      'global_rate': instance.globalRate,
      'company_overrides': instance.companyOverrides,
    };
