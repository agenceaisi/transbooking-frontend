// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'scan_log.dart';

part 'paginated_scan_log_list.freezed.dart';
part 'paginated_scan_log_list.g.dart';

@freezed
abstract class PaginatedScanLogList with _$PaginatedScanLogList {
  const factory PaginatedScanLogList({
    required int count,
    String? next,
    String? previous,
    required List<ScanLog> results,
  }) = _PaginatedScanLogList;

  factory PaginatedScanLogList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedScanLogListFromJson(json);
}
