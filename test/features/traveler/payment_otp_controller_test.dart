import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/features/traveler/domain/otp_outcome.dart';
import 'package:transbooking_bf/features/traveler/domain/payment_repository.dart';
import 'package:transbooking_bf/features/traveler/domain/payment_snapshot.dart';
import 'package:transbooking_bf/features/traveler/presentation/payment_otp_controller.dart';
import 'package:transbooking_bf/features/traveler/presentation/traveler_providers.dart';

class _MockPaymentRepository extends Mock implements PaymentRepository {}

void main() {
  late _MockPaymentRepository repository;

  const snapshot = PaymentSnapshot(
    id: 42,
    ticketNumber: 'BF2026001234',
    amount: '6000.00',
    methodWire: 'orange_money',
    methodDisplay: 'Orange Money',
    status: PaymentStatus.otpRequired,
    statusDisplay: 'Code attendu',
    phone: '****0001',
    otpExpiresAt: '2026-07-22T10:05:00Z',
    otpAttemptsRemaining: 3,
  );

  const paidSnapshot = PaymentSnapshot(
    id: 42,
    ticketNumber: 'BF2026001234',
    amount: '6000.00',
    methodWire: 'orange_money',
    methodDisplay: 'Orange Money',
    status: PaymentStatus.paid,
    statusDisplay: 'Payé',
    phone: '****0001',
    receiptUrl: 'https://api/receipt.pdf',
  );

  PaymentOtpController controllerOf(ProviderContainer container) {
    final controller = container.read(paymentOtpControllerProvider.notifier)
      ..start(snapshot);
    return controller;
  }

  ProviderContainer createContainer() {
    final container = ProviderContainer(
      overrides: [paymentRepositoryProvider.overrideWithValue(repository)],
    );
    container.listen(paymentOtpControllerProvider, (_, _) {});
    addTearDown(container.dispose);
    return container;
  }

  setUp(() => repository = _MockPaymentRepository());

  test('code correct → paiement payé (terminal)', () async {
    when(
      () => repository.verifyOtp(paymentId: 42, otp: '123456'),
    ).thenAnswer((_) async => const OtpAccepted(paidSnapshot));
    final container = createContainer();

    await controllerOf(container).verify('123456');

    final state = container.read(paymentOtpControllerProvider)!;
    expect(state.terminal, PaymentOtpTerminal.paid);
    expect(state.snapshot.isPaid, isTrue);
    expect(state.verifying, isFalse);
  });

  test('code faux → erreur avec tentatives restantes, sans terminal', () async {
    when(
      () => repository.verifyOtp(paymentId: 42, otp: '000000'),
    ).thenAnswer((_) async => const OtpRejected(attemptsRemaining: 2));
    final container = createContainer();

    await controllerOf(container).verify('000000');

    final state = container.read(paymentOtpControllerProvider)!;
    expect(state.terminal, isNull);
    expect(state.error?.isWrongCode, isTrue);
    expect(state.error?.attemptsRemaining, 2);
  });

  test('tentatives épuisées → paiement échoué (terminal)', () async {
    when(
      () => repository.verifyOtp(paymentId: 42, otp: '000000'),
    ).thenAnswer((_) async => const OtpFailed());
    final container = createContainer();

    await controllerOf(container).verify('000000');

    expect(
      container.read(paymentOtpControllerProvider)!.terminal,
      PaymentOtpTerminal.failed,
    );
  });

  test('panne réseau → erreur technique, sans terminal', () async {
    when(
      () => repository.verifyOtp(paymentId: 42, otp: '123456'),
    ).thenThrow(const NoConnectionFailure());
    final container = createContainer();

    await controllerOf(container).verify('123456');

    final state = container.read(paymentOtpControllerProvider)!;
    expect(state.terminal, isNull);
    expect(state.error?.isWrongCode, isFalse);
    expect(state.error?.failure, isA<NoConnectionFailure>());
  });

  test(
    'renvoi de code met à jour l\'instantané et arme le compte à rebours',
    () async {
      when(() => repository.resendOtp(42)).thenAnswer((_) async => snapshot);
      final container = createContainer();

      await controllerOf(container).resend();

      final state = container.read(paymentOtpControllerProvider)!;
      expect(state.lastResendAt, isNotNull);
      expect(state.resending, isFalse);
      verify(() => repository.resendOtp(42)).called(1);
    },
  );

  test('un renvoi rate-limité (429) s\'affiche sans casser l\'écran', () async {
    when(
      () => repository.resendOtp(42),
    ).thenThrow(const RateLimitFailure(retryAfter: Duration(seconds: 18)));
    final container = createContainer();

    await controllerOf(container).resend();

    final state = container.read(paymentOtpControllerProvider)!;
    expect(state.error?.failure, isA<RateLimitFailure>());
    expect(state.terminal, isNull);
  });
}
