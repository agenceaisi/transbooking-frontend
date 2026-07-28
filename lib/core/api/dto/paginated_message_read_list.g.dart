// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_message_read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedMessageReadList _$PaginatedMessageReadListFromJson(
  Map<String, dynamic> json,
) => _PaginatedMessageReadList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => MessageRead.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedMessageReadListToJson(
  _PaginatedMessageReadList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
