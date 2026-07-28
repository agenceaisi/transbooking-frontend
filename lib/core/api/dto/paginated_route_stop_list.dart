// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'route_stop.dart';

part 'paginated_route_stop_list.freezed.dart';
part 'paginated_route_stop_list.g.dart';

@freezed
abstract class PaginatedRouteStopList with _$PaginatedRouteStopList {
  const factory PaginatedRouteStopList({
    required int count,
    String? next,
    String? previous,
    required List<RouteStop> results,
  }) = _PaginatedRouteStopList;

  factory PaginatedRouteStopList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedRouteStopListFromJson(json);
}
