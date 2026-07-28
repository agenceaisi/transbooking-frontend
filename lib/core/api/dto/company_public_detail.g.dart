// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_public_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyPublicDetail _$CompanyPublicDetailFromJson(Map<String, dynamic> json) =>
    _CompanyPublicDetail(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      sigle: json['sigle'] as String?,
      logo: json['logo'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      routes: (json['routes'] as List<dynamic>)
          .map((e) => CompanyRouteSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewsCount: (json['reviews_count'] as num).toInt(),
      ratingBreakdown: json['rating_breakdown'] as Map<String, dynamic>,
      reviews: json['reviews'] as List<dynamic>,
    );

Map<String, dynamic> _$CompanyPublicDetailToJson(
  _CompanyPublicDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sigle': instance.sigle,
  'logo': instance.logo,
  'description': instance.description,
  'city': instance.city,
  'rating': instance.rating,
  'phone': instance.phone,
  'email': instance.email,
  'routes': instance.routes,
  'reviews_count': instance.reviewsCount,
  'rating_breakdown': instance.ratingBreakdown,
  'reviews': instance.reviews,
};
