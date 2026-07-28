// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_subscription_invoice_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedSubscriptionInvoiceList _$PaginatedSubscriptionInvoiceListFromJson(
  Map<String, dynamic> json,
) => _PaginatedSubscriptionInvoiceList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => SubscriptionInvoice.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedSubscriptionInvoiceListToJson(
  _PaginatedSubscriptionInvoiceList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
