// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_eaa_enum.dart';

part 'subscription_update.freezed.dart';
part 'subscription_update.g.dart';

/// Activation / desactivation / prolongation d'un abonnement (super admin).
@freezed
abstract class SubscriptionUpdate with _$SubscriptionUpdate {
  const factory SubscriptionUpdate({
    required int plan,
    @JsonKey(name: 'start_date')
    required DateTime startDate,
    @JsonKey(name: 'end_date')
    required DateTime endDate,
    StatusEaaEnum? status,
    @JsonKey(name: 'auto_renew')
    bool? autoRenew,
  }) = _SubscriptionUpdate;

  factory SubscriptionUpdate.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionUpdateFromJson(json);
}
