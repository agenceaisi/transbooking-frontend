// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_route.freezed.dart';
part 'top_route.g.dart';

@freezed
abstract class TopRoute with _$TopRoute {
  const factory TopRoute({
    required String route,
    required double revenue,
    required int passengers,
  }) = _TopRoute;

  factory TopRoute.fromJson(Map<String, dynamic> json) =>
      _$TopRouteFromJson(json);
}
