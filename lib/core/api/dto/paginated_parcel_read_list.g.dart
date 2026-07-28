// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_parcel_read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedParcelReadList _$PaginatedParcelReadListFromJson(
  Map<String, dynamic> json,
) => _PaginatedParcelReadList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => ParcelRead.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedParcelReadListToJson(
  _PaginatedParcelReadList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
