// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_public.dart';

part 'paginated_company_public_list.freezed.dart';
part 'paginated_company_public_list.g.dart';

@freezed
abstract class PaginatedCompanyPublicList with _$PaginatedCompanyPublicList {
  const factory PaginatedCompanyPublicList({
    required int count,
    String? next,
    String? previous,
    required List<CompanyPublic> results,
  }) = _PaginatedCompanyPublicList;

  factory PaginatedCompanyPublicList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedCompanyPublicListFromJson(json);
}
