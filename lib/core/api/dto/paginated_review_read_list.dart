// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'review_read.dart';

part 'paginated_review_read_list.freezed.dart';
part 'paginated_review_read_list.g.dart';

@freezed
abstract class PaginatedReviewReadList with _$PaginatedReviewReadList {
  const factory PaginatedReviewReadList({
    required int count,
    String? next,
    String? previous,
    required List<ReviewRead> results,
  }) = _PaginatedReviewReadList;

  factory PaginatedReviewReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedReviewReadListFromJson(json);
}
