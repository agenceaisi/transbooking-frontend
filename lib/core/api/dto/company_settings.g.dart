// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanySettings _$CompanySettingsFromJson(Map<String, dynamic> json) =>
    _CompanySettings(
      name: json['name'] as String,
      sigle: json['sigle'] as String?,
      description: json['description'] as String?,
      logo: json['logo'] as String?,
      banner: json['banner'] as String?,
      primaryColor: json['primary_color'] as String?,
      welcomeMessage: json['welcome_message'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      responsibleName: json['responsible_name'] as String?,
      responsiblePhone: json['responsible_phone'] as String?,
    );

Map<String, dynamic> _$CompanySettingsToJson(_CompanySettings instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sigle': instance.sigle,
      'description': instance.description,
      'logo': instance.logo,
      'banner': instance.banner,
      'primary_color': instance.primaryColor,
      'welcome_message': instance.welcomeMessage,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'responsible_name': instance.responsibleName,
      'responsible_phone': instance.responsiblePhone,
    };
