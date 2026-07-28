// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneralSettings _$GeneralSettingsFromJson(Map<String, dynamic> json) =>
    _GeneralSettings(
      platformName: json['platform_name'] as String?,
      supportPhone: json['support_phone'] as String?,
      supportEmail: json['support_email'] as String?,
      maintenanceMode: json['maintenance_mode'] as bool?,
      smsProvider: json['sms_provider'] as String,
    );

Map<String, dynamic> _$GeneralSettingsToJson(_GeneralSettings instance) =>
    <String, dynamic>{
      'platform_name': instance.platformName,
      'support_phone': instance.supportPhone,
      'support_email': instance.supportEmail,
      'maintenance_mode': instance.maintenanceMode,
      'sms_provider': instance.smsProvider,
    };
