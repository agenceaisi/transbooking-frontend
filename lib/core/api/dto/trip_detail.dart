// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_f60_enum.dart';

part 'trip_detail.freezed.dart';
part 'trip_detail.g.dart';

/// Detail public d'un voyage incluant la liste des sieges disponibles.
@freezed
abstract class TripDetail with _$TripDetail {
  const factory TripDetail({
    required int id,
    required int route,
    @JsonKey(name: 'route_label')
    required String routeLabel,
    @JsonKey(name: 'origin_city')
    required String originCity,
    @JsonKey(name: 'destination_city')
    required String destinationCity,
    required int vehicle,
    @JsonKey(name: 'vehicle_registration')
    required String vehicleRegistration,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'arrival_time')
    DateTime? arrivalTime,
    required String price,
    @JsonKey(name: 'available_seats')
    int? availableSeats,
    StatusF60Enum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    required int company,
    @JsonKey(name: 'company_name')
    required String companyName,
    @JsonKey(name: 'company_sigle')
    required String companySigle,
    @JsonKey(name: 'company_rating')
    required double? companyRating,
    @JsonKey(name: 'is_direct')
    required bool isDirect,
    @JsonKey(name: 'stops_count')
    required int stopsCount,
    @JsonKey(name: 'duration_minutes')
    required int durationMinutes,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    @JsonKey(name: 'available_seat_numbers')
    required List<String> availableSeatNumbers,
  }) = _TripDetail;

  factory TripDetail.fromJson(Map<String, dynamic> json) =>
      _$TripDetailFromJson(json);
}
