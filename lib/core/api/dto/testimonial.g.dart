// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testimonial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Testimonial _$TestimonialFromJson(Map<String, dynamic> json) => _Testimonial(
  id: (json['id'] as num).toInt(),
  company: (json['company'] as num).toInt(),
  companyName: json['company_name'] as String,
  author: json['author'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$TestimonialToJson(_Testimonial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'company_name': instance.companyName,
      'author': instance.author,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
    };
