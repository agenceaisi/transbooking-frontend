// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_overview_delta.freezed.dart';
part 'company_overview_delta.g.dart';

@freezed
abstract class CompanyOverviewDelta with _$CompanyOverviewDelta {
  const factory CompanyOverviewDelta({
    @JsonKey(name: 'revenue_total')
    required double revenueTotal,
    @JsonKey(name: 'fill_rate_avg')
    required double fillRateAvg,
    @JsonKey(name: 'bookings_count')
    required int bookingsCount,
  }) = _CompanyOverviewDelta;

  factory CompanyOverviewDelta.fromJson(Map<String, dynamic> json) =>
      _$CompanyOverviewDeltaFromJson(json);
}
