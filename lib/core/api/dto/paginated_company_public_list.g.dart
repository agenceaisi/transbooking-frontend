// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_company_public_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedCompanyPublicList _$PaginatedCompanyPublicListFromJson(
  Map<String, dynamic> json,
) => _PaginatedCompanyPublicList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => CompanyPublic.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedCompanyPublicListToJson(
  _PaginatedCompanyPublicList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
