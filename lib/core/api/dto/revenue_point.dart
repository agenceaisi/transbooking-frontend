// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'revenue_point.freezed.dart';
part 'revenue_point.g.dart';

@freezed
abstract class RevenuePoint with _$RevenuePoint {
  const factory RevenuePoint({
    required DateTime date,
    required double revenue,
  }) = _RevenuePoint;

  factory RevenuePoint.fromJson(Map<String, dynamic> json) =>
      _$RevenuePointFromJson(json);
}
