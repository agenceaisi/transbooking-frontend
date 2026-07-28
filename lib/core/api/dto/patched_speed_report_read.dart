// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'severity_enum.dart';
import 'speed_report_read_status_enum.dart';

part 'patched_speed_report_read.freezed.dart';
part 'patched_speed_report_read.g.dart';

/// Lecture d'un signalement (admin compagnie, super admin).
@freezed
abstract class PatchedSpeedReportRead with _$PatchedSpeedReportRead {
  const factory PatchedSpeedReportRead({
    int? id,
    int? company,
    @JsonKey(name: 'company_name')
    String? companyName,
    int? trip,
    @JsonKey(name: 'estimated_speed')
    int? estimatedSpeed,
    SeverityEnum? severity,
    @JsonKey(name: 'severity_display')
    String? severityDisplay,
    String? description,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'reported_at')
    DateTime? reportedAt,
    SpeedReportReadStatusEnum? status,
    @JsonKey(name: 'status_display')
    String? statusDisplay,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
  }) = _PatchedSpeedReportRead;

  factory PatchedSpeedReportRead.fromJson(Map<String, dynamic> json) =>
      _$PatchedSpeedReportReadFromJson(json);
}
