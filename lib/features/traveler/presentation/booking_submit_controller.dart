import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/created_booking.dart';
import '../domain/payment_snapshot.dart';
import 'booking_form_controller.dart';
import 'traveler_providers.dart';

/// Réservation créée + paiement initié, prêts à être poursuivis (OTP ou reçu).
@immutable
class BookingSubmission {
  const BookingSubmission({required this.booking, required this.payment});

  final CreatedBooking booking;
  final PaymentSnapshot payment;
}

/// Enchaîne la création de réservation puis l'initiation du paiement.
///
/// `autoDispose` : chaque parcours repart à zéro. Un `409` (siège pris) remonte
/// en `ConflictFailure`, que l'écran traduit en « choisissez un autre siège ».
final bookingSubmitProvider =
    AsyncNotifierProvider.autoDispose<
      BookingSubmitController,
      BookingSubmission?
    >(BookingSubmitController.new);

class BookingSubmitController extends AsyncNotifier<BookingSubmission?> {
  @override
  Future<BookingSubmission?> build() async => null;

  /// Crée la réservation puis initie le paiement. Renvoie l'instantané, ou
  /// `null` si l'opération a échoué (l'erreur est portée par `state`).
  Future<BookingSubmission?> submit({
    required int tripId,
    required BookingFormState form,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(() async {
      final booking = await ref
          .read(bookingRepositoryProvider)
          .createBooking(
            tripId: tripId,
            seatNumber: form.seatForApi,
            passenger: form.passenger,
          );

      final payment = await ref
          .read(paymentRepositoryProvider)
          .initiate(
            bookingId: booking.id,
            method: form.method,
            payerPhone: form.method.isMobileMoney ? form.payerLocalPhone : null,
          );

      return BookingSubmission(booking: booking, payment: payment);
    });

    state = result;
    return result.value;
  }
}
