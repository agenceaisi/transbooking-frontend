// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_testimonial_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedTestimonialList _$PaginatedTestimonialListFromJson(
  Map<String, dynamic> json,
) => _PaginatedTestimonialList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => Testimonial.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedTestimonialListToJson(
  _PaginatedTestimonialList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
