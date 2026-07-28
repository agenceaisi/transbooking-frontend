// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_route_stop_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedRouteStopList _$PaginatedRouteStopListFromJson(
  Map<String, dynamic> json,
) => _PaginatedRouteStopList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => RouteStop.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedRouteStopListToJson(
  _PaginatedRouteStopList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
