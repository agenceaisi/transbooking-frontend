import '../../../core/api/dto.dart' as dto;
import '../../../core/utils/phone_number.dart';
import '../domain/otp_outcome.dart';
import '../domain/payment_repository.dart';
import '../domain/payment_snapshot.dart';
import '../domain/traveler_payment.dart';
import '../domain/traveler_payment_method.dart';
import 'payment_remote_data_source.dart';
import 'traveler_mappers.dart';

/// Implémentation de [PaymentRepository] — flux OTP du guide §6.8.
class PaymentRepositoryImpl implements PaymentRepository {
  const PaymentRepositoryImpl(this._remote);

  final PaymentRemoteDataSource _remote;

  @override
  Future<PaymentSnapshot> initiate({
    required int bookingId,
    required TravelerPaymentMethod method,
    String? payerPhone,
  }) async {
    final payment = await _remote.initiate(
      dto.PaymentInitiate(
        bookingId: bookingId,
        method: _methodDto(method),
        phone: payerPhone == null ? null : BfPhone.full(payerPhone),
      ),
    );
    return payment.toEntity();
  }

  @override
  Future<OtpOutcome> verifyOtp({
    required int paymentId,
    required String otp,
  }) async {
    final response = await _remote.verifyOtp(
      paymentId: paymentId,
      body: dto.PaymentOtpVerify(otp: otp),
    );

    if (response.rejected) {
      final remaining = response.attemptsRemaining;
      // Plus aucune tentative : le paiement bascule `failed`, il faut relancer.
      if (remaining != null && remaining <= 0) return const OtpFailed();
      return OtpRejected(attemptsRemaining: remaining);
    }

    final payment = response.payment!.toEntity();
    if (payment.isPaid) return OtpAccepted(payment);
    if (payment.isFailed) return OtpFailed(payment: payment);
    // Cas défensif : un 200 qui n'est ni payé ni échoué (statut inattendu).
    return OtpRejected(attemptsRemaining: payment.otpAttemptsRemaining);
  }

  @override
  Future<PaymentSnapshot> resendOtp(int paymentId) async {
    final payment = await _remote.resendOtp(paymentId);
    return payment.toEntity();
  }

  @override
  Future<PaymentSnapshot> status(int paymentId) async {
    final payment = await _remote.status(paymentId);
    return payment.toEntity();
  }

  @override
  Future<List<TravelerPayment>> myPayments() async {
    final payments = await _remote.myPayments();
    return payments
        .map((payment) => payment.toHistoryEntity())
        .toList(growable: false);
  }

  /// Traduit le moyen du domaine vers l'enum de l'API (sous-ensemble : la carte
  /// n'y figure jamais).
  static dto.Method80cEnum _methodDto(TravelerPaymentMethod method) {
    return dto.Method80cEnum.values.firstWhere(
      (m) => m.wireValue == method.wire,
    );
  }
}
