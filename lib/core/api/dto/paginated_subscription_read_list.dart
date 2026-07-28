// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription_read.dart';

part 'paginated_subscription_read_list.freezed.dart';
part 'paginated_subscription_read_list.g.dart';

@freezed
abstract class PaginatedSubscriptionReadList with _$PaginatedSubscriptionReadList {
  const factory PaginatedSubscriptionReadList({
    required int count,
    String? next,
    String? previous,
    required List<SubscriptionRead> results,
  }) = _PaginatedSubscriptionReadList;

  factory PaginatedSubscriptionReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedSubscriptionReadListFromJson(json);
}
