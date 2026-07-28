// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_speed_report_read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedSpeedReportReadList _$PaginatedSpeedReportReadListFromJson(
  Map<String, dynamic> json,
) => _PaginatedSpeedReportReadList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => SpeedReportRead.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedSpeedReportReadListToJson(
  _PaginatedSpeedReportReadList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
