// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_invoice.freezed.dart';
part 'subscription_invoice.g.dart';

/// Facture d'un cycle d'abonnement.
@freezed
abstract class SubscriptionInvoice with _$SubscriptionInvoice {
  const factory SubscriptionInvoice({
    required int id,
    required String reference,
    required int subscription,
    @JsonKey(name: 'plan_name')
    required String planName,
    required String amount,
    @JsonKey(name: 'paid_at')
    DateTime? paidAt,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SubscriptionInvoice;

  factory SubscriptionInvoice.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionInvoiceFromJson(json);
}
