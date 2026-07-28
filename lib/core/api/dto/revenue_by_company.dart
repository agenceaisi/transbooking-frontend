// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'revenue_by_company.freezed.dart';
part 'revenue_by_company.g.dart';

@freezed
abstract class RevenueByCompany with _$RevenueByCompany {
  const factory RevenueByCompany({
    required String company,
    required double revenue,
    required double commission,
  }) = _RevenueByCompany;

  factory RevenueByCompany.fromJson(Map<String, dynamic> json) =>
      _$RevenueByCompanyFromJson(json);
}
