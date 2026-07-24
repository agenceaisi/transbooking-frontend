import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_booking.freezed.dart';

/// Statut d'une réservation — valeurs techniques de l'API
/// (`BookingReadStatusEnum`), redéclaré dans le domaine.
enum BookingStatus {
  pending('pending'),
  paid('paid'),
  cancelled('cancelled'),
  refunded('refunded');

  const BookingStatus(this.wire);

  final String wire;

  static BookingStatus? fromWire(String? wire) {
    if (wire == null) return null;
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return null;
  }
}

/// Réservation créée (`POST /bookings/`, `BookingRead`), au statut `pending`
/// jusqu'au paiement.
@freezed
abstract class CreatedBooking with _$CreatedBooking {
  const factory CreatedBooking({
    required int id,
    required String ticketNumber,
    required String passengerName,
    required String phone,
    required String seatNumber,

    /// Montant total facturé, calculé et renvoyé par l'API (lecture seule).
    required String amount,
    BookingStatus? status,
    required String statusDisplay,
    required String originCity,
    required String destinationCity,
    required DateTime departureTime,
  }) = _CreatedBooking;
}
