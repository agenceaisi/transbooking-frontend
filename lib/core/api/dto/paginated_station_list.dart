// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'station.dart';

part 'paginated_station_list.freezed.dart';
part 'paginated_station_list.g.dart';

@freezed
abstract class PaginatedStationList with _$PaginatedStationList {
  const factory PaginatedStationList({
    required int count,
    String? next,
    String? previous,
    required List<Station> results,
  }) = _PaginatedStationList;

  factory PaginatedStationList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedStationListFromJson(json);
}
