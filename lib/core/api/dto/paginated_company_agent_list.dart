// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_agent.dart';

part 'paginated_company_agent_list.freezed.dart';
part 'paginated_company_agent_list.g.dart';

@freezed
abstract class PaginatedCompanyAgentList with _$PaginatedCompanyAgentList {
  const factory PaginatedCompanyAgentList({
    required int count,
    String? next,
    String? previous,
    required List<CompanyAgent> results,
  }) = _PaginatedCompanyAgentList;

  factory PaginatedCompanyAgentList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedCompanyAgentListFromJson(json);
}
