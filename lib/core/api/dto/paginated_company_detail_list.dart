// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_detail.dart';

part 'paginated_company_detail_list.freezed.dart';
part 'paginated_company_detail_list.g.dart';

@freezed
abstract class PaginatedCompanyDetailList with _$PaginatedCompanyDetailList {
  const factory PaginatedCompanyDetailList({
    required int count,
    String? next,
    String? previous,
    required List<CompanyDetail> results,
  }) = _PaginatedCompanyDetailList;

  factory PaginatedCompanyDetailList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedCompanyDetailListFromJson(json);
}
