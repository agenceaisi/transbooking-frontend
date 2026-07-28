// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_booking.freezed.dart';
part 'offline_booking.g.dart';

/// Reservation saisie hors ligne par un agent guichet.
/// 
/// Le `ticket_number` est genere localement par l'agent ; il sert de cle
/// d'idempotence cote serveur (cf. business_rules.md §6).
@freezed
abstract class OfflineBooking with _$OfflineBooking {
  const factory OfflineBooking({
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    @JsonKey(name: 'trip_id')
    required int tripId,
    @JsonKey(name: 'first_name')
    required String firstName,
    @JsonKey(name: 'last_name')
    required String lastName,
    required String phone,
    @JsonKey(name: 'seat_number')
    String? seatNumber,
    String? amount,
    @JsonKey(name: 'payment_method')
    String? paymentMethod,
    @JsonKey(name: 'transaction_ref')
    String? transactionRef,
    @JsonKey(name: 'offline_created_at')
    required DateTime offlineCreatedAt,
  }) = _OfflineBooking;

  factory OfflineBooking.fromJson(Map<String, dynamic> json) =>
      _$OfflineBookingFromJson(json);
}
