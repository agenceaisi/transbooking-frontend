// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_route_summary.dart';

part 'company_public_detail.freezed.dart';
part 'company_public_detail.g.dart';

/// Fiche publique detaillee : ajoute contact, trajets desservis et avis.
@freezed
abstract class CompanyPublicDetail with _$CompanyPublicDetail {
  const factory CompanyPublicDetail({
    required int id,
    required String name,
    String? sigle,
    required String? logo,
    String? description,
    String? city,
    required double? rating,
    String? phone,
    String? email,
    required List<CompanyRouteSummary> routes,
    @JsonKey(name: 'reviews_count')
    required int reviewsCount,
    @JsonKey(name: 'rating_breakdown')
    required Map<String, dynamic> ratingBreakdown,
    required List<dynamic> reviews,
  }) = _CompanyPublicDetail;

  factory CompanyPublicDetail.fromJson(Map<String, dynamic> json) =>
      _$CompanyPublicDetailFromJson(json);
}
