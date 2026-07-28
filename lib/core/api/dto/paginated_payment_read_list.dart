// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_read.dart';

part 'paginated_payment_read_list.freezed.dart';
part 'paginated_payment_read_list.g.dart';

@freezed
abstract class PaginatedPaymentReadList with _$PaginatedPaymentReadList {
  const factory PaginatedPaymentReadList({
    required int count,
    String? next,
    String? previous,
    required List<PaymentRead> results,
  }) = _PaginatedPaymentReadList;

  factory PaginatedPaymentReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedPaymentReadListFromJson(json);
}
