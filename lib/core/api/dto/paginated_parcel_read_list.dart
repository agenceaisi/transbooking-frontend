// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'parcel_read.dart';

part 'paginated_parcel_read_list.freezed.dart';
part 'paginated_parcel_read_list.g.dart';

@freezed
abstract class PaginatedParcelReadList with _$PaginatedParcelReadList {
  const factory PaginatedParcelReadList({
    required int count,
    String? next,
    String? previous,
    required List<ParcelRead> results,
  }) = _PaginatedParcelReadList;

  factory PaginatedParcelReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedParcelReadListFromJson(json);
}
