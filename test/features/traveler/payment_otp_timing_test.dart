import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/features/traveler/presentation/payment_otp_timing.dart';

void main() {
  final now = DateTime(2026, 7, 22, 10, 0, 0);

  group('renvoi de code (1 / 30 s)', () {
    test('autorisé quand aucun renvoi n\'a eu lieu', () {
      expect(PaymentOtpTiming.canResend(null, now), isTrue);
      expect(
        PaymentOtpTiming.remainingResendCooldown(null, now),
        Duration.zero,
      );
    });

    test('bloqué pendant 30 s après un renvoi', () {
      final last = now.subtract(const Duration(seconds: 10));
      expect(PaymentOtpTiming.canResend(last, now), isFalse);
      expect(
        PaymentOtpTiming.remainingResendCooldown(last, now),
        const Duration(seconds: 20),
      );
    });

    test('de nouveau autorisé après 30 s', () {
      final last = now.subtract(const Duration(seconds: 30));
      expect(PaymentOtpTiming.canResend(last, now), isTrue);
    });
  });

  group('expiration du code', () {
    test('expiré si l\'échéance est passée ou inconnue', () {
      expect(PaymentOtpTiming.isExpired(null, now), isTrue);
      expect(
        PaymentOtpTiming.isExpired(
          now.subtract(const Duration(seconds: 1)),
          now,
        ),
        isTrue,
      );
    });

    test('temps restant tant que l\'échéance est future', () {
      final expires = now.add(const Duration(minutes: 4, seconds: 30));
      expect(PaymentOtpTiming.isExpired(expires, now), isFalse);
      expect(
        PaymentOtpTiming.remainingOtp(expires, now),
        const Duration(minutes: 4, seconds: 30),
      );
    });
  });
}
