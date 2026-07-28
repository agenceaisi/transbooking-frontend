// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_claim_read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedClaimReadList _$PaginatedClaimReadListFromJson(
  Map<String, dynamic> json,
) => _PaginatedClaimReadList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => ClaimRead.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedClaimReadListToJson(
  _PaginatedClaimReadList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
