// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'speed_report_read.dart';

part 'paginated_speed_report_read_list.freezed.dart';
part 'paginated_speed_report_read_list.g.dart';

@freezed
abstract class PaginatedSpeedReportReadList with _$PaginatedSpeedReportReadList {
  const factory PaginatedSpeedReportReadList({
    required int count,
    String? next,
    String? previous,
    required List<SpeedReportRead> results,
  }) = _PaginatedSpeedReportReadList;

  factory PaginatedSpeedReportReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedSpeedReportReadListFromJson(json);
}
