// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_platform_payment_method_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedPlatformPaymentMethodList
_$PaginatedPlatformPaymentMethodListFromJson(Map<String, dynamic> json) =>
    _PaginatedPlatformPaymentMethodList(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PlatformPaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaginatedPlatformPaymentMethodListToJson(
  _PaginatedPlatformPaymentMethodList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
