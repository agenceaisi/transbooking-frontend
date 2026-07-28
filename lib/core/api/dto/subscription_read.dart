// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_eaa_enum.dart';
import 'subscription_plan.dart';

part 'subscription_read.freezed.dart';
part 'subscription_read.g.dart';

/// Abonnement d'une compagnie (lecture).
@freezed
abstract class SubscriptionRead with _$SubscriptionRead {
  const factory SubscriptionRead({
    required int id,
    required int company,
    @JsonKey(name: 'company_name')
    required String companyName,
    required SubscriptionPlan plan,
    @JsonKey(name: 'start_date')
    required DateTime startDate,
    @JsonKey(name: 'end_date')
    required DateTime endDate,
    StatusEaaEnum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    @JsonKey(name: 'auto_renew')
    bool? autoRenew,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SubscriptionRead;

  factory SubscriptionRead.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionReadFromJson(json);
}
