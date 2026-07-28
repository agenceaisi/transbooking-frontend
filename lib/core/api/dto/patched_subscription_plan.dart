// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_subscription_plan.freezed.dart';
part 'patched_subscription_plan.g.dart';

/// Forfait d'abonnement (lecture et ecriture super admin).
@freezed
abstract class PatchedSubscriptionPlan with _$PatchedSubscriptionPlan {
  const factory PatchedSubscriptionPlan({
    int? id,
    String? name,
    String? description,
    String? price,
    @JsonKey(name: 'duration_months')
    int? durationMonths,
    dynamic features,
    @JsonKey(name: 'is_active')
    bool? isActive,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
  }) = _PatchedSubscriptionPlan;

  factory PatchedSubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$PatchedSubscriptionPlanFromJson(json);
}
