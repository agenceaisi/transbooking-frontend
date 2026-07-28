// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type6f3_enum.dart';

part 'notification_summary.freezed.dart';
part 'notification_summary.g.dart';

@freezed
abstract class NotificationSummary with _$NotificationSummary {
  const factory NotificationSummary({
    required int id,
    required String title,
    required String body,
    @JsonKey(name: 'is_read')
    required bool isRead,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    required Type6f3Enum type,
    @JsonKey(name: 'type_display')
    required String? typeDisplay,
  }) = _NotificationSummary;

  factory NotificationSummary.fromJson(Map<String, dynamic> json) =>
      _$NotificationSummaryFromJson(json);
}
