// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fill_rate_by_route.freezed.dart';
part 'fill_rate_by_route.g.dart';

@freezed
abstract class FillRateByRoute with _$FillRateByRoute {
  const factory FillRateByRoute({
    @JsonKey(name: 'route_label')
    required String routeLabel,
    @JsonKey(name: 'fill_rate_pct')
    required double fillRatePct,
  }) = _FillRateByRoute;

  factory FillRateByRoute.fromJson(Map<String, dynamic> json) =>
      _$FillRateByRouteFromJson(json);
}
