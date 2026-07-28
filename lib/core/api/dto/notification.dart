// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type6f3_enum.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

/// Lecture d'une notification in-app de l'utilisateur courant.
@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required int id,
    required Type6f3Enum type,
    @JsonKey(name: 'type_display')
    required String typeDisplay,
    required String title,
    required String body,
    @JsonKey(name: 'is_read')
    required bool isRead,
    @JsonKey(name: 'reference_id')
    required int? referenceId,
    @JsonKey(name: 'reference_type')
    required String referenceType,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
