// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_activity_log_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedActivityLogList _$PaginatedActivityLogListFromJson(
  Map<String, dynamic> json,
) => _PaginatedActivityLogList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => ActivityLog.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedActivityLogListToJson(
  _PaginatedActivityLogList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
