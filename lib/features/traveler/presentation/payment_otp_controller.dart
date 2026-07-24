import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../domain/otp_outcome.dart';
import '../domain/payment_snapshot.dart';
import 'payment_otp_timing.dart';
import 'traveler_providers.dart';

/// Erreur affichée sous le champ de code.
@immutable
class PaymentOtpError {
  const PaymentOtpError.wrongCode(this.attemptsRemaining) : failure = null;
  const PaymentOtpError.network(this.failure) : attemptsRemaining = null;

  /// Tentatives restantes après un code faux, `null` si non précisé.
  final int? attemptsRemaining;

  /// Panne technique (réseau, 429 sur le renvoi…).
  final Failure? failure;

  bool get isWrongCode => failure == null;
}

/// Issue terminale du paiement — déclenche la navigation vers le résultat.
enum PaymentOtpTerminal { paid, failed }

/// État de l'écran de saisie du code.
@immutable
class PaymentOtpState {
  const PaymentOtpState({
    required this.snapshot,
    this.verifying = false,
    this.resending = false,
    this.error,
    this.terminal,
    this.lastResendAt,
  });

  /// Instantané courant du paiement (expiration, tentatives…).
  final PaymentSnapshot snapshot;

  final bool verifying;
  final bool resending;
  final PaymentOtpError? error;

  /// Non nul quand le paiement est tranché (payé / échoué).
  final PaymentOtpTerminal? terminal;

  /// Dernier renvoi de code, pour le compte à rebours de 30 s.
  final DateTime? lastResendAt;

  PaymentOtpState copyWith({
    PaymentSnapshot? snapshot,
    bool? verifying,
    bool? resending,
    PaymentOtpError? error,
    bool clearError = false,
    PaymentOtpTerminal? terminal,
    DateTime? lastResendAt,
  }) {
    return PaymentOtpState(
      snapshot: snapshot ?? this.snapshot,
      verifying: verifying ?? this.verifying,
      resending: resending ?? this.resending,
      error: clearError ? null : (error ?? this.error),
      terminal: terminal ?? this.terminal,
      lastResendAt: lastResendAt ?? this.lastResendAt,
    );
  }
}

/// Pilote la saisie et la vérification du code de confirmation.
///
/// `autoDispose` : un nouveau paiement repart d'un état propre. Initialisé par
/// l'écran via [start] avec l'instantané renvoyé par l'initiation.
final paymentOtpControllerProvider =
    NotifierProvider.autoDispose<PaymentOtpController, PaymentOtpState?>(
      PaymentOtpController.new,
    );

class PaymentOtpController extends Notifier<PaymentOtpState?> {
  @override
  PaymentOtpState? build() => null;

  /// Injecté pour des tests déterministes (compte à rebours de renvoi).
  DateTime _now() => DateTime.now();

  /// Amorce l'écran avec le paiement en attente de code.
  void start(PaymentSnapshot snapshot) {
    state = PaymentOtpState(snapshot: snapshot);
  }

  /// Efface l'erreur à la frappe.
  void clearError() {
    final current = state;
    if (current?.error != null) state = current!.copyWith(clearError: true);
  }

  /// Vérifie le code saisi (`POST /payments/{id}/verify-otp/`).
  Future<void> verify(String otp) async {
    final current = state;
    if (current == null || current.verifying) return;

    state = current.copyWith(verifying: true, clearError: true);
    try {
      final outcome = await ref
          .read(paymentRepositoryProvider)
          .verifyOtp(paymentId: current.snapshot.id, otp: otp);

      state = switch (outcome) {
        OtpAccepted(:final payment) => current.copyWith(
          verifying: false,
          snapshot: payment,
          terminal: PaymentOtpTerminal.paid,
        ),
        OtpRejected(:final attemptsRemaining) => current.copyWith(
          verifying: false,
          error: PaymentOtpError.wrongCode(attemptsRemaining),
        ),
        OtpFailed(:final payment) => current.copyWith(
          verifying: false,
          snapshot: payment ?? current.snapshot,
          terminal: PaymentOtpTerminal.failed,
        ),
      };
    } on Failure catch (failure) {
      state = current.copyWith(
        verifying: false,
        error: PaymentOtpError.network(failure),
      );
    }
  }

  /// Renvoie un code (`POST /payments/{id}/resend-otp/`), respect du délai de
  /// 30 s côté client — le serveur l'impose aussi (429).
  Future<void> resend() async {
    final current = state;
    if (current == null || current.resending) return;
    if (!PaymentOtpTiming.canResend(current.lastResendAt, _now())) return;

    state = current.copyWith(resending: true, clearError: true);
    try {
      final snapshot = await ref
          .read(paymentRepositoryProvider)
          .resendOtp(current.snapshot.id);
      state = current.copyWith(
        resending: false,
        snapshot: snapshot,
        lastResendAt: _now(),
      );
    } on Failure catch (failure) {
      state = current.copyWith(
        resending: false,
        error: PaymentOtpError.network(failure),
      );
    }
  }
}
