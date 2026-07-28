// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_notification.freezed.dart';
part 'super_notification.g.dart';

/// Alerte du fil de supervision super admin (donnee calculee, non stockee).
@freezed
abstract class SuperNotification with _$SuperNotification {
  const factory SuperNotification({
    required String type,
    required String severity,
    required String title,
    required String body,
    @JsonKey(name: 'reference_type')
    required String referenceType,
    @JsonKey(name: 'reference_id')
    required int? referenceId,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SuperNotification;

  factory SuperNotification.fromJson(Map<String, dynamic> json) =>
      _$SuperNotificationFromJson(json);
}
