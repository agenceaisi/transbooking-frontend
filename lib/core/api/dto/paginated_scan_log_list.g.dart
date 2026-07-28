// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_scan_log_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedScanLogList _$PaginatedScanLogListFromJson(
  Map<String, dynamic> json,
) => _PaginatedScanLogList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => ScanLog.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedScanLogListToJson(
  _PaginatedScanLogList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
