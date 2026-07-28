// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_breakdown.freezed.dart';
part 'payment_breakdown.g.dart';

@freezed
abstract class PaymentBreakdown with _$PaymentBreakdown {
  const factory PaymentBreakdown({
    required String method,
    required double amount,
    required double pct,
  }) = _PaymentBreakdown;

  factory PaymentBreakdown.fromJson(Map<String, dynamic> json) =>
      _$PaymentBreakdownFromJson(json);
}
