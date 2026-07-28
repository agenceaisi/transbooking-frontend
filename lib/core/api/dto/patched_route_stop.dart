// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patched_route_stop.freezed.dart';
part 'patched_route_stop.g.dart';

/// Escale d'un trajet. `route` est deduit de l'URL imbriquee.
@freezed
abstract class PatchedRouteStop with _$PatchedRouteStop {
  const factory PatchedRouteStop({
    int? id,
    int? city,
    @JsonKey(name: 'city_name')
    String? cityName,
    @JsonKey(name: 'stop_order')
    int? stopOrder,
    @JsonKey(name: 'stop_price')
    String? stopPrice,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _PatchedRouteStop;

  factory PatchedRouteStop.fromJson(Map<String, dynamic> json) =>
      _$PatchedRouteStopFromJson(json);
}
