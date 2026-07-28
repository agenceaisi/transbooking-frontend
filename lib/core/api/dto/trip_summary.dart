// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_f60_enum.dart';

part 'trip_summary.freezed.dart';
part 'trip_summary.g.dart';

/// Resume d'un voyage embarque dans le detail d'une reservation.
@freezed
abstract class TripSummary with _$TripSummary {
  const factory TripSummary({
    required int id,
    @JsonKey(name: 'origin_city')
    required String originCity,
    @JsonKey(name: 'destination_city')
    required String destinationCity,
    @JsonKey(name: 'company_name')
    required String companyName,
    @JsonKey(name: 'company_sigle')
    required String companySigle,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'arrival_time')
    DateTime? arrivalTime,
    StatusF60Enum? status,
  }) = _TripSummary;

  factory TripSummary.fromJson(Map<String, dynamic> json) =>
      _$TripSummaryFromJson(json);
}
