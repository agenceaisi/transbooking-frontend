// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_f60_enum.dart';

part 'offline_trip.freezed.dart';
part 'offline_trip.g.dart';

/// Voyage du jour expose pour le travail hors ligne.
@freezed
abstract class OfflineTrip with _$OfflineTrip {
  const factory OfflineTrip({
    required int id,
    @JsonKey(name: 'origin_city')
    required String originCity,
    @JsonKey(name: 'destination_city')
    required String destinationCity,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'available_seats')
    int? availableSeats,
    required String vehicle,
    @JsonKey(name: 'seat_plan')
    required dynamic seatPlan,
    StatusF60Enum? status,
  }) = _OfflineTrip;

  factory OfflineTrip.fromJson(Map<String, dynamic> json) =>
      _$OfflineTripFromJson(json);
}
