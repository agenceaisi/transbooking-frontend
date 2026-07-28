// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyPublic _$CompanyPublicFromJson(Map<String, dynamic> json) =>
    _CompanyPublic(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      sigle: json['sigle'] as String?,
      logo: json['logo'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CompanyPublicToJson(_CompanyPublic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sigle': instance.sigle,
      'logo': instance.logo,
      'description': instance.description,
      'city': instance.city,
      'rating': instance.rating,
    };
