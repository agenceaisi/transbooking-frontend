// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'route_stop.dart';

part 'route.freezed.dart';
part 'route.g.dart';

/// Trajet d'une compagnie. `company` est deduite de l'utilisateur courant.
@freezed
abstract class Route with _$Route {
  const factory Route({
    required int id,
    @JsonKey(name: 'origin_city')
    required int originCity,
    @JsonKey(name: 'origin_city_name')
    required String originCityName,
    @JsonKey(name: 'destination_city')
    required int destinationCity,
    @JsonKey(name: 'destination_city_name')
    required String destinationCityName,
    @JsonKey(name: 'origin_station')
    int? originStation,
    @JsonKey(name: 'destination_station')
    int? destinationStation,
    @JsonKey(name: 'distance_km')
    String? distanceKm,
    @JsonKey(name: 'base_price')
    required String basePrice,
    @JsonKey(name: 'duration_minutes')
    int? durationMinutes,
    @JsonKey(name: 'is_active')
    bool? isActive,
    required List<RouteStop> stops,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) =>
      _$RouteFromJson(json);
}
