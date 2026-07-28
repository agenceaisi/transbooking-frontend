// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_read.dart';

part 'paginated_message_read_list.freezed.dart';
part 'paginated_message_read_list.g.dart';

@freezed
abstract class PaginatedMessageReadList with _$PaginatedMessageReadList {
  const factory PaginatedMessageReadList({
    required int count,
    String? next,
    String? previous,
    required List<MessageRead> results,
  }) = _PaginatedMessageReadList;

  factory PaginatedMessageReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedMessageReadListFromJson(json);
}
