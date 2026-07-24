import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/features/traveler/data/payment_remote_data_source.dart';
import 'package:transbooking_bf/features/traveler/data/payment_repository_impl.dart';
import 'package:transbooking_bf/features/traveler/domain/otp_outcome.dart';
import 'package:transbooking_bf/features/traveler/domain/payment_snapshot.dart';
import 'package:transbooking_bf/features/traveler/domain/traveler_payment_method.dart';

class _MockRemote extends Mock implements PaymentRemoteDataSource {}

class _FakeInitiate extends Fake implements dto.PaymentInitiate {}

class _FakeOtpVerify extends Fake implements dto.PaymentOtpVerify {}

dto.PaymentRead payment({
  required dto.PaymentReadStatusEnum status,
  String statusDisplay = 'En attente',
  int? attemptsRemaining = 3,
  String? otpExpiresAt = '2026-07-22T10:05:00Z',
  String? receiptUrl,
}) {
  return dto.PaymentRead(
    id: 42,
    ticketNumber: 'BF2026001234',
    amount: '6000.00',
    method: dto.Method80cEnum.orangeMoney,
    methodDisplay: 'Orange Money',
    status: status,
    statusDisplay: statusDisplay,
    transactionRef: '****1234',
    phone: '****0001',
    otpExpiresAt: otpExpiresAt,
    otpAttemptsRemaining: attemptsRemaining,
    receiptUrl: receiptUrl,
    createdAt: DateTime.utc(2026, 7, 22, 10),
  );
}

void main() {
  late _MockRemote remote;
  late PaymentRepositoryImpl repository;

  setUpAll(() {
    registerFallbackValue(_FakeInitiate());
    registerFallbackValue(_FakeOtpVerify());
  });

  setUp(() {
    remote = _MockRemote();
    repository = PaymentRepositoryImpl(remote);
  });

  group('initiate', () {
    test('Mobile Money → paiement en attente de code', () async {
      when(() => remote.initiate(any())).thenAnswer(
        (_) async => payment(
          status: dto.PaymentReadStatusEnum.otpRequired,
          statusDisplay: 'Code attendu',
        ),
      );

      final snapshot = await repository.initiate(
        bookingId: 7,
        method: TravelerPaymentMethod.orangeMoney,
        payerPhone: '70000000',
      );

      expect(snapshot.awaitsOtp, isTrue);
      expect(snapshot.otpAttemptsRemaining, 3);
      expect(snapshot.otpExpiresAtDate, isNotNull);
    });
  });

  group('verifyOtp', () {
    test('code correct → OtpAccepted (paiement payé)', () async {
      when(
        () => remote.verifyOtp(paymentId: 42, body: any(named: 'body')),
      ).thenAnswer(
        (_) async => VerifyOtpResponse.accepted(
          payment(
            status: dto.PaymentReadStatusEnum.paid,
            statusDisplay: 'Payé',
            receiptUrl: 'https://api/receipt.pdf',
          ),
        ),
      );

      final outcome = await repository.verifyOtp(paymentId: 42, otp: '123456');

      expect(outcome, isA<OtpAccepted>());
      expect((outcome as OtpAccepted).payment.isPaid, isTrue);
      expect(outcome.payment.hasReceipt, isTrue);
    });

    test('code faux avec tentatives restantes → OtpRejected', () async {
      when(
        () => remote.verifyOtp(paymentId: 42, body: any(named: 'body')),
      ).thenAnswer((_) async => const VerifyOtpResponse.rejected(2));

      final outcome = await repository.verifyOtp(paymentId: 42, otp: '000000');

      expect(outcome, isA<OtpRejected>());
      expect((outcome as OtpRejected).attemptsRemaining, 2);
    });

    test('tentatives épuisées (0) → OtpFailed', () async {
      when(
        () => remote.verifyOtp(paymentId: 42, body: any(named: 'body')),
      ).thenAnswer((_) async => const VerifyOtpResponse.rejected(0));

      final outcome = await repository.verifyOtp(paymentId: 42, otp: '000000');

      expect(outcome, isA<OtpFailed>());
    });

    test('paiement déjà basculé failed (200) → OtpFailed', () async {
      when(
        () => remote.verifyOtp(paymentId: 42, body: any(named: 'body')),
      ).thenAnswer(
        (_) async => VerifyOtpResponse.accepted(
          payment(
            status: dto.PaymentReadStatusEnum.failed,
            statusDisplay: 'Échoué',
          ),
        ),
      );

      final outcome = await repository.verifyOtp(paymentId: 42, otp: '123456');

      expect(outcome, isA<OtpFailed>());
    });
  });

  group('resendOtp', () {
    test('propage le 429 (rate limit) sans le masquer', () async {
      when(
        () => remote.resendOtp(42),
      ).thenThrow(const RateLimitFailure(retryAfter: Duration(seconds: 18)));

      expect(() => repository.resendOtp(42), throwsA(isA<RateLimitFailure>()));
    });

    test('renvoie l\'instantané mis à jour', () async {
      when(() => remote.resendOtp(42)).thenAnswer(
        (_) async => payment(status: dto.PaymentReadStatusEnum.otpRequired),
      );

      final snapshot = await repository.resendOtp(42);
      expect(snapshot.awaitsOtp, isTrue);
    });
  });

  group('myPayments', () {
    test(
      'mappe la liste des paiements (date = paid_at sinon created_at)',
      () async {
        when(() => remote.myPayments()).thenAnswer(
          (_) async => [
            payment(
              status: dto.PaymentReadStatusEnum.paid,
              statusDisplay: 'Payé',
            ),
          ],
        );

        final payments = await repository.myPayments();

        expect(payments, hasLength(1));
        final entry = payments.first;
        expect(entry.id, 42);
        expect(entry.ticketNumber, 'BF2026001234');
        expect(entry.methodDisplay, 'Orange Money');
        expect(entry.status, PaymentStatus.paid);
        // Sans `paid_at`, la date retombe sur `created_at`.
        expect(entry.date, DateTime.utc(2026, 7, 22, 10));
      },
    );
  });
}
