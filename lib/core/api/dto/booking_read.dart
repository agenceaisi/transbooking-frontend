// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'baggage.dart';
import 'status_ee3_enum.dart';
import 'trip_summary.dart';

part 'booking_read.freezed.dart';
part 'booking_read.g.dart';

/// Lecture detaillee d'une reservation (voyageur, agent, admin).
@freezed
abstract class BookingRead with _$BookingRead {
  const factory BookingRead({
    required int id,
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    required TripSummary trip,
    @JsonKey(name: 'first_name')
    required String firstName,
    @JsonKey(name: 'last_name')
    required String lastName,
    @JsonKey(name: 'passenger_name')
    required String passengerName,
    required String phone,
    @JsonKey(name: 'seat_number')
    required String seatNumber,
    required String amount,
    @JsonKey(name: 'payment_method')
    String? paymentMethod,
    @JsonKey(name: 'qr_code')
    String? qrCode,
    StatusEe3Enum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    @JsonKey(name: 'is_offline')
    bool? isOffline,
    @JsonKey(name: 'is_boarded')
    required bool isBoarded,
    required List<Baggage> baggage,
    @JsonKey(name: 'baggage_total_weight_kg')
    required String baggageTotalWeightKg,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _BookingRead;

  factory BookingRead.fromJson(Map<String, dynamic> json) =>
      _$BookingReadFromJson(json);
}
