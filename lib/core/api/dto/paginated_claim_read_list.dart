// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'claim_read.dart';

part 'paginated_claim_read_list.freezed.dart';
part 'paginated_claim_read_list.g.dart';

@freezed
abstract class PaginatedClaimReadList with _$PaginatedClaimReadList {
  const factory PaginatedClaimReadList({
    required int count,
    String? next,
    String? previous,
    required List<ClaimRead> results,
  }) = _PaginatedClaimReadList;

  factory PaginatedClaimReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedClaimReadListFromJson(json);
}
