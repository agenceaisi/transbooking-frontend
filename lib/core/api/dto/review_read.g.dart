// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewRead _$ReviewReadFromJson(Map<String, dynamic> json) => _ReviewRead(
  id: (json['id'] as num).toInt(),
  company: (json['company'] as num).toInt(),
  companyName: json['company_name'] as String,
  trip: (json['trip'] as num).toInt(),
  author: json['author'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  response: json['response'] as String?,
  respondedAt: json['responded_at'] == null
      ? null
      : DateTime.parse(json['responded_at'] as String),
  isFlagged: json['is_flagged'] as bool?,
  isTestimonial: json['is_testimonial'] as bool?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ReviewReadToJson(_ReviewRead instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'company_name': instance.companyName,
      'trip': instance.trip,
      'author': instance.author,
      'rating': instance.rating,
      'comment': instance.comment,
      'response': instance.response,
      'responded_at': instance.respondedAt?.toIso8601String(),
      'is_flagged': instance.isFlagged,
      'is_testimonial': instance.isTestimonial,
      'created_at': instance.createdAt.toIso8601String(),
    };
