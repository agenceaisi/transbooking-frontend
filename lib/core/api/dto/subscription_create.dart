// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_create.freezed.dart';
part 'subscription_create.g.dart';

/// Attribution d'un forfait a une compagnie (super admin).
@freezed
abstract class SubscriptionCreate with _$SubscriptionCreate {
  const factory SubscriptionCreate({
    required int company,
    required int plan,
    @JsonKey(name: 'start_date')
    DateTime? startDate,
    @JsonKey(name: 'end_date')
    DateTime? endDate,
    @JsonKey(name: 'auto_renew')
    bool? autoRenew,
  }) = _SubscriptionCreate;

  factory SubscriptionCreate.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCreateFromJson(json);
}
