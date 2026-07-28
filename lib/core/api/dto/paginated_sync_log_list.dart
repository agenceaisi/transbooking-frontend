// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'sync_log.dart';

part 'paginated_sync_log_list.freezed.dart';
part 'paginated_sync_log_list.g.dart';

@freezed
abstract class PaginatedSyncLogList with _$PaginatedSyncLogList {
  const factory PaginatedSyncLogList({
    required int count,
    String? next,
    String? previous,
    required List<SyncLog> results,
  }) = _PaginatedSyncLogList;

  factory PaginatedSyncLogList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedSyncLogListFromJson(json);
}
