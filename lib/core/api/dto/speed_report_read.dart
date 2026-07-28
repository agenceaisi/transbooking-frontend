// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'severity_enum.dart';
import 'speed_report_read_status_enum.dart';

part 'speed_report_read.freezed.dart';
part 'speed_report_read.g.dart';

/// Lecture d'un signalement (admin compagnie, super admin).
@freezed
abstract class SpeedReportRead with _$SpeedReportRead {
  const factory SpeedReportRead({
    required int id,
    required int company,
    @JsonKey(name: 'company_name')
    required String companyName,
    int? trip,
    @JsonKey(name: 'estimated_speed')
    int? estimatedSpeed,
    SeverityEnum? severity,
    @JsonKey(name: 'severity_display')
    required String severityDisplay,
    String? description,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'reported_at')
    required DateTime reportedAt,
    SpeedReportReadStatusEnum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _SpeedReportRead;

  factory SpeedReportRead.fromJson(Map<String, dynamic> json) =>
      _$SpeedReportReadFromJson(json);
}
