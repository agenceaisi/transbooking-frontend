// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'platform_payment_method.dart';

part 'paginated_platform_payment_method_list.freezed.dart';
part 'paginated_platform_payment_method_list.g.dart';

@freezed
abstract class PaginatedPlatformPaymentMethodList with _$PaginatedPlatformPaymentMethodList {
  const factory PaginatedPlatformPaymentMethodList({
    required int count,
    String? next,
    String? previous,
    required List<PlatformPaymentMethod> results,
  }) = _PaginatedPlatformPaymentMethodList;

  factory PaginatedPlatformPaymentMethodList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedPlatformPaymentMethodListFromJson(json);
}
