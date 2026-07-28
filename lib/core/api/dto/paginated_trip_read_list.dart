// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'trip_read.dart';

part 'paginated_trip_read_list.freezed.dart';
part 'paginated_trip_read_list.g.dart';

@freezed
abstract class PaginatedTripReadList with _$PaginatedTripReadList {
  const factory PaginatedTripReadList({
    required int count,
    String? next,
    String? previous,
    required List<TripRead> results,
  }) = _PaginatedTripReadList;

  factory PaginatedTripReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedTripReadListFromJson(json);
}
