// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewCreate _$ReviewCreateFromJson(Map<String, dynamic> json) =>
    _ReviewCreate(
      trip: (json['trip'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$ReviewCreateToJson(_ReviewCreate instance) =>
    <String, dynamic>{
      'trip': instance.trip,
      'rating': instance.rating,
      'comment': instance.comment,
    };
