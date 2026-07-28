// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_departure.freezed.dart';
part 'agent_departure.g.dart';

@freezed
abstract class AgentDeparture with _$AgentDeparture {
  const factory AgentDeparture({
    @JsonKey(name: 'trip_id')
    required int tripId,
    required String origin,
    required String destination,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'available_seats')
    required int availableSeats,
    @JsonKey(name: 'passenger_count')
    required int passengerCount,
  }) = _AgentDeparture;

  factory AgentDeparture.fromJson(Map<String, dynamic> json) =>
      _$AgentDepartureFromJson(json);
}
