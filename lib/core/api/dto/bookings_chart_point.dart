// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookings_chart_point.freezed.dart';
part 'bookings_chart_point.g.dart';

@freezed
abstract class BookingsChartPoint with _$BookingsChartPoint {
  const factory BookingsChartPoint({
    required DateTime date,
    required int count,
  }) = _BookingsChartPoint;

  factory BookingsChartPoint.fromJson(Map<String, dynamic> json) =>
      _$BookingsChartPointFromJson(json);
}
