// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_company_agent_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedCompanyAgentList _$PaginatedCompanyAgentListFromJson(
  Map<String, dynamic> json,
) => _PaginatedCompanyAgentList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => CompanyAgent.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedCompanyAgentListToJson(
  _PaginatedCompanyAgentList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
