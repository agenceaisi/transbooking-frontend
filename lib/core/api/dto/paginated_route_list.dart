// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'route.dart';

part 'paginated_route_list.freezed.dart';
part 'paginated_route_list.g.dart';

@freezed
abstract class PaginatedRouteList with _$PaginatedRouteList {
  const factory PaginatedRouteList({
    required int count,
    String? next,
    String? previous,
    required List<Route> results,
  }) = _PaginatedRouteList;

  factory PaginatedRouteList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedRouteListFromJson(json);
}
