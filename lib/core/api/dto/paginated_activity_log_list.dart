// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'activity_log.dart';

part 'paginated_activity_log_list.freezed.dart';
part 'paginated_activity_log_list.g.dart';

@freezed
abstract class PaginatedActivityLogList with _$PaginatedActivityLogList {
  const factory PaginatedActivityLogList({
    required int count,
    String? next,
    String? previous,
    required List<ActivityLog> results,
  }) = _PaginatedActivityLogList;

  factory PaginatedActivityLogList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedActivityLogListFromJson(json);
}
