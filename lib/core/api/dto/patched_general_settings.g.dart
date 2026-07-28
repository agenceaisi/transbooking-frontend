// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_general_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchedGeneralSettings _$PatchedGeneralSettingsFromJson(
  Map<String, dynamic> json,
) => _PatchedGeneralSettings(
  platformName: json['platform_name'] as String?,
  supportPhone: json['support_phone'] as String?,
  supportEmail: json['support_email'] as String?,
  maintenanceMode: json['maintenance_mode'] as bool?,
  smsProvider: json['sms_provider'] as String?,
);

Map<String, dynamic> _$PatchedGeneralSettingsToJson(
  _PatchedGeneralSettings instance,
) => <String, dynamic>{
  'platform_name': instance.platformName,
  'support_phone': instance.supportPhone,
  'support_email': instance.supportEmail,
  'maintenance_mode': instance.maintenanceMode,
  'sms_provider': instance.smsProvider,
};
