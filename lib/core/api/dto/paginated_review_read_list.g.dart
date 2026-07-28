// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_review_read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedReviewReadList _$PaginatedReviewReadListFromJson(
  Map<String, dynamic> json,
) => _PaginatedReviewReadList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => ReviewRead.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedReviewReadListToJson(
  _PaginatedReviewReadList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
