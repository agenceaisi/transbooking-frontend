// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_subscription_plan_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedSubscriptionPlanList _$PaginatedSubscriptionPlanListFromJson(
  Map<String, dynamic> json,
) => _PaginatedSubscriptionPlanList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => SubscriptionPlan.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedSubscriptionPlanListToJson(
  _PaginatedSubscriptionPlanList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
