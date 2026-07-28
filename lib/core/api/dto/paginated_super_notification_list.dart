// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'super_notification.dart';

part 'paginated_super_notification_list.freezed.dart';
part 'paginated_super_notification_list.g.dart';

@freezed
abstract class PaginatedSuperNotificationList with _$PaginatedSuperNotificationList {
  const factory PaginatedSuperNotificationList({
    required int count,
    String? next,
    String? previous,
    required List<SuperNotification> results,
  }) = _PaginatedSuperNotificationList;

  factory PaginatedSuperNotificationList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedSuperNotificationListFromJson(json);
}
