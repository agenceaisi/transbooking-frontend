// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription_invoice.dart';

part 'paginated_subscription_invoice_list.freezed.dart';
part 'paginated_subscription_invoice_list.g.dart';

@freezed
abstract class PaginatedSubscriptionInvoiceList with _$PaginatedSubscriptionInvoiceList {
  const factory PaginatedSubscriptionInvoiceList({
    required int count,
    String? next,
    String? previous,
    required List<SubscriptionInvoice> results,
  }) = _PaginatedSubscriptionInvoiceList;

  factory PaginatedSubscriptionInvoiceList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedSubscriptionInvoiceListFromJson(json);
}
