// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_sync_log_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedSyncLogList _$PaginatedSyncLogListFromJson(
  Map<String, dynamic> json,
) => _PaginatedSyncLogList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => SyncLog.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedSyncLogListToJson(
  _PaginatedSyncLogList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
