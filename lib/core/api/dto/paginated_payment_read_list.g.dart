// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_payment_read_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedPaymentReadList _$PaginatedPaymentReadListFromJson(
  Map<String, dynamic> json,
) => _PaginatedPaymentReadList(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => PaymentRead.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedPaymentReadListToJson(
  _PaginatedPaymentReadList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
