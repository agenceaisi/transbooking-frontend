// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_overview.freezed.dart';
part 'super_overview.g.dart';

@freezed
abstract class SuperOverview with _$SuperOverview {
  const factory SuperOverview({
    @JsonKey(name: 'total_companies')
    required int totalCompanies,
    @JsonKey(name: 'active_companies')
    required int activeCompanies,
    @JsonKey(name: 'total_bookings')
    required int totalBookings,
    @JsonKey(name: 'total_commission_revenue')
    required double totalCommissionRevenue,
    @JsonKey(name: 'active_users')
    required int activeUsers,
  }) = _SuperOverview;

  factory SuperOverview.fromJson(Map<String, dynamic> json) =>
      _$SuperOverviewFromJson(json);
}
