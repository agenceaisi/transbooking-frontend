// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription_plan.dart';

part 'paginated_subscription_plan_list.freezed.dart';
part 'paginated_subscription_plan_list.g.dart';

@freezed
abstract class PaginatedSubscriptionPlanList with _$PaginatedSubscriptionPlanList {
  const factory PaginatedSubscriptionPlanList({
    required int count,
    String? next,
    String? previous,
    required List<SubscriptionPlan> results,
  }) = _PaginatedSubscriptionPlanList;

  factory PaginatedSubscriptionPlanList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedSubscriptionPlanListFromJson(json);
}
