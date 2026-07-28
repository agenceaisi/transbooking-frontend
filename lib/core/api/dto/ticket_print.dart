// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_print.freezed.dart';
part 'ticket_print.g.dart';

/// Payload d'impression d'un billet au guichet (cf. PROMPT_SUP A7).
@freezed
abstract class TicketPrint with _$TicketPrint {
  const factory TicketPrint({
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    @JsonKey(name: 'passenger_name')
    required String passengerName,
    required String phone,
    @JsonKey(name: 'seat_number')
    required String seatNumber,
    required String amount,
    required String status,
    @JsonKey(name: 'company_name')
    required String companyName,
    @JsonKey(name: 'origin_city')
    required String originCity,
    @JsonKey(name: 'destination_city')
    required String destinationCity,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'qr_code')
    required String qrCode,
    @JsonKey(name: 'printed_at')
    required DateTime printedAt,
    @JsonKey(name: 'print_count')
    required int printCount,
  }) = _TicketPrint;

  factory TicketPrint.fromJson(Map<String, dynamic> json) =>
      _$TicketPrintFromJson(json);
}
