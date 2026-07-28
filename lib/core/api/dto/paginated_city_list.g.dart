// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_city_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedCityList _$PaginatedCityListFromJson(Map<String, dynamic> json) =>
    _PaginatedCityList(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaginatedCityListToJson(_PaginatedCityList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
