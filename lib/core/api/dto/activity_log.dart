// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_log.freezed.dart';
part 'activity_log.g.dart';

/// Entree du journal d'audit (lecture super admin).
@freezed
abstract class ActivityLog with _$ActivityLog {
  const factory ActivityLog({
    required int id,
    int? user,
    @JsonKey(name: 'user_name')
    required String userName,
    @JsonKey(name: 'user_role')
    required String? userRole,
    required String action,
    @JsonKey(name: 'entity_type')
    String? entityType,
    @JsonKey(name: 'entity_id')
    int? entityId,
    dynamic details,
    @JsonKey(name: 'ip_address')
    String? ipAddress,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _ActivityLog;

  factory ActivityLog.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogFromJson(json);
}
