// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'route_stop.dart';

part 'patched_route.freezed.dart';
part 'patched_route.g.dart';

/// Trajet d'une compagnie. `company` est deduite de l'utilisateur courant.
@freezed
abstract class PatchedRoute with _$PatchedRoute {
  const factory PatchedRoute({
    int? id,
    @JsonKey(name: 'origin_city')
    int? originCity,
    @JsonKey(name: 'origin_city_name')
    String? originCityName,
    @JsonKey(name: 'destination_city')
    int? destinationCity,
    @JsonKey(name: 'destination_city_name')
    String? destinationCityName,
    @JsonKey(name: 'origin_station')
    int? originStation,
    @JsonKey(name: 'destination_station')
    int? destinationStation,
    @JsonKey(name: 'distance_km')
    String? distanceKm,
    @JsonKey(name: 'base_price')
    String? basePrice,
    @JsonKey(name: 'duration_minutes')
    int? durationMinutes,
    @JsonKey(name: 'is_active')
    bool? isActive,
    List<RouteStop>? stops,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _PatchedRoute;

  factory PatchedRoute.fromJson(Map<String, dynamic> json) =>
      _$PatchedRouteFromJson(json);
}
