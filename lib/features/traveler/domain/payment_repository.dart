import 'otp_outcome.dart';
import 'payment_snapshot.dart';
import 'traveler_payment.dart';
import 'traveler_payment_method.dart';

/// Accès au paiement d'une réservation (voyageur authentifié).
///
/// Suit exactement le flux OTP du guide §6.8. Aucune donnée de paiement n'est
/// stockée en local (CLAUDE.md §13).
abstract interface class PaymentRepository {
  /// Initie un paiement (`POST /payments/`).
  ///
  /// Mobile Money → `otp_required` (+ `otp_expires_at`, `otp_attempts_remaining`) ;
  /// espèces → `pending`. [payerPhone] est **obligatoire** pour Mobile Money.
  Future<PaymentSnapshot> initiate({
    required int bookingId,
    required TravelerPaymentMethod method,
    String? payerPhone,
  });

  /// Vérifie le code de confirmation (`POST /payments/{id}/verify-otp/`).
  Future<OtpOutcome> verifyOtp({required int paymentId, required String otp});

  /// Renvoie un code (`POST /payments/{id}/resend-otp/`).
  ///
  /// Rate-limité à 1 / 30 s ; lève `RateLimitFailure` (429) si trop tôt.
  Future<PaymentSnapshot> resendOtp(int paymentId);

  /// Statut courant d'un paiement (`GET /payments/{id}/`).
  Future<PaymentSnapshot> status(int paymentId);

  /// Historique de mes paiements (`GET /payments/`), les plus récents d'abord.
  Future<List<TravelerPayment>> myPayments();
}
