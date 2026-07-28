// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_eaa_enum.dart';

part 'patched_subscription_update.freezed.dart';
part 'patched_subscription_update.g.dart';

/// Activation / desactivation / prolongation d'un abonnement (super admin).
@freezed
abstract class PatchedSubscriptionUpdate with _$PatchedSubscriptionUpdate {
  const factory PatchedSubscriptionUpdate({
    int? plan,
    @JsonKey(name: 'start_date')
    DateTime? startDate,
    @JsonKey(name: 'end_date')
    DateTime? endDate,
    StatusEaaEnum? status,
    @JsonKey(name: 'auto_renew')
    bool? autoRenew,
  }) = _PatchedSubscriptionUpdate;

  factory PatchedSubscriptionUpdate.fromJson(Map<String, dynamic> json) =>
      _$PatchedSubscriptionUpdateFromJson(json);
}
