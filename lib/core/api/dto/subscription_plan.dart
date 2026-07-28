// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_plan.freezed.dart';
part 'subscription_plan.g.dart';

/// Forfait d'abonnement (lecture et ecriture super admin).
@freezed
abstract class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    required int id,
    required String name,
    String? description,
    String? price,
    @JsonKey(name: 'duration_months')
    int? durationMonths,
    dynamic features,
    @JsonKey(name: 'is_active')
    bool? isActive,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);
}
