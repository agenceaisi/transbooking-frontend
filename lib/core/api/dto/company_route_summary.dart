// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_route_summary.freezed.dart';
part 'company_route_summary.g.dart';

/// Resume d'un trajet actif desservi par une compagnie (fiche publique).
@freezed
abstract class CompanyRouteSummary with _$CompanyRouteSummary {
  const factory CompanyRouteSummary({
    required int id,
    @JsonKey(name: 'origin_city_name')
    required String originCityName,
    @JsonKey(name: 'destination_city_name')
    required String destinationCityName,
    @JsonKey(name: 'base_price')
    required String basePrice,
    @JsonKey(name: 'duration_minutes')
    required int? durationMinutes,
  }) = _CompanyRouteSummary;

  factory CompanyRouteSummary.fromJson(Map<String, dynamic> json) =>
      _$CompanyRouteSummaryFromJson(json);
}
