// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';

part 'paginated_city_list.freezed.dart';
part 'paginated_city_list.g.dart';

@freezed
abstract class PaginatedCityList with _$PaginatedCityList {
  const factory PaginatedCityList({
    required int count,
    String? next,
    String? previous,
    required List<City> results,
  }) = _PaginatedCityList;

  factory PaginatedCityList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedCityListFromJson(json);
}
