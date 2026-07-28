// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_station_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedStationList _$PaginatedStationListFromJson(
  Map<String, dynamic> json,
) => _PaginatedStationList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => Station.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedStationListToJson(
  _PaginatedStationList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
