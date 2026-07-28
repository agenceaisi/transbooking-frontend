// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_vehicle_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedVehicleList _$PaginatedVehicleListFromJson(
  Map<String, dynamic> json,
) => _PaginatedVehicleList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedVehicleListToJson(
  _PaginatedVehicleList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
