// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_stop.freezed.dart';
part 'route_stop.g.dart';

/// Escale d'un trajet. `route` est deduit de l'URL imbriquee.
@freezed
abstract class RouteStop with _$RouteStop {
  const factory RouteStop({
    required int id,
    required int city,
    @JsonKey(name: 'city_name')
    required String cityName,
    @JsonKey(name: 'stop_order')
    required int stopOrder,
    @JsonKey(name: 'stop_price')
    required String stopPrice,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _RouteStop;

  factory RouteStop.fromJson(Map<String, dynamic> json) =>
      _$RouteStopFromJson(json);
}
