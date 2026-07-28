// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'traveler_next_trip.freezed.dart';
part 'traveler_next_trip.g.dart';

@freezed
abstract class TravelerNextTrip with _$TravelerNextTrip {
  const factory TravelerNextTrip({
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    required String origin,
    required String destination,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'seat_number')
    required String seatNumber,
    required String status,
    @JsonKey(name: 'company_name')
    required String companyName,
    @JsonKey(name: 'company_sigle')
    required String? companySigle,
  }) = _TravelerNextTrip;

  factory TravelerNextTrip.fromJson(Map<String, dynamic> json) =>
      _$TravelerNextTripFromJson(json);
}
