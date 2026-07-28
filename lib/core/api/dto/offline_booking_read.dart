// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_ee3_enum.dart';

part 'offline_booking_read.freezed.dart';
part 'offline_booking_read.g.dart';

/// Reservation embarquee dans le paquet hors ligne (donnees minimales).
@freezed
abstract class OfflineBookingRead with _$OfflineBookingRead {
  const factory OfflineBookingRead({
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    @JsonKey(name: 'trip_id')
    required int tripId,
    @JsonKey(name: 'passenger_name')
    required String passengerName,
    required String phone,
    @JsonKey(name: 'seat_number')
    required String seatNumber,
    @JsonKey(name: 'qr_code')
    String? qrCode,
    StatusEe3Enum? status,
  }) = _OfflineBookingRead;

  factory OfflineBookingRead.fromJson(Map<String, dynamic> json) =>
      _$OfflineBookingReadFromJson(json);
}
