import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'traveler_providers.dart';

/// Annulation d'une réservation (`POST /bookings/{id}/cancel/`, guide §6.7).
final bookingCancelProvider =
    AsyncNotifierProvider.autoDispose<BookingCancelController, bool>(
      BookingCancelController.new,
    );

class BookingCancelController extends AsyncNotifier<bool> {
  @override
  Future<bool> build() async => false;

  /// Annule la réservation [bookingId] avec un [reason] obligatoire. Renvoie
  /// `true` en cas de succès et rafraîchit la liste et le détail.
  Future<bool> cancel({required int bookingId, required String reason}) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(() async {
      await ref
          .read(bookingRepositoryProvider)
          .cancelBooking(bookingId, reason: reason);
      return true;
    });
    state = result;
    if (!result.hasError) {
      ref
        ..invalidate(myBookingsProvider)
        ..invalidate(bookingDetailProvider(bookingId));
    }
    return result.value ?? false;
  }
}
