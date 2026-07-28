// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_company_detail_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedCompanyDetailList _$PaginatedCompanyDetailListFromJson(
  Map<String, dynamic> json,
) => _PaginatedCompanyDetailList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => CompanyDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedCompanyDetailListToJson(
  _PaginatedCompanyDetailList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
