// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'severity_enum.dart';

part 'speed_report_create.freezed.dart';
part 'speed_report_create.g.dart';

/// Depot d'un signalement par un voyageur (horodatage auto, GPS optionnel).
@freezed
abstract class SpeedReportCreate with _$SpeedReportCreate {
  const factory SpeedReportCreate({
    int? company,
    int? trip,
    @JsonKey(name: 'estimated_speed')
    int? estimatedSpeed,
    SeverityEnum? severity,
    String? description,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'reported_at')
    DateTime? reportedAt,
  }) = _SpeedReportCreate;

  factory SpeedReportCreate.fromJson(Map<String, dynamic> json) =>
      _$SpeedReportCreateFromJson(json);
}
