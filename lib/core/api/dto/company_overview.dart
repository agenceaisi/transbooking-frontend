// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_overview_delta.dart';

part 'company_overview.freezed.dart';
part 'company_overview.g.dart';

@freezed
abstract class CompanyOverview with _$CompanyOverview {
  const factory CompanyOverview({
    required String period,
    @JsonKey(name: 'revenue_total')
    required double revenueTotal,
    @JsonKey(name: 'fill_rate_avg')
    required double fillRateAvg,
    @JsonKey(name: 'bookings_count')
    required int bookingsCount,
    @JsonKey(name: 'avg_rating')
    required double? avgRating,
    @JsonKey(name: 'vs_previous_period')
    required CompanyOverviewDelta vsPreviousPeriod,
  }) = _CompanyOverview;

  factory CompanyOverview.fromJson(Map<String, dynamic> json) =>
      _$CompanyOverviewFromJson(json);
}
