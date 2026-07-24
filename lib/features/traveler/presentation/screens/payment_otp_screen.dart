import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/otp_input.dart';
import '../../domain/payment_snapshot.dart';
import '../payment_otp_controller.dart';
import '../payment_otp_timing.dart';
import '../traveler_providers.dart';

/// Écran de saisie du code de confirmation Mobile Money (flux OTP, guide §6.8).
class PaymentOtpScreen extends ConsumerStatefulWidget {
  const PaymentOtpScreen({
    required this.paymentId,
    this.initialSnapshot,
    super.key,
  });

  final int? paymentId;

  /// Instantané passé par l'écran de réservation (évite un aller-retour réseau).
  final PaymentSnapshot? initialSnapshot;

  @override
  ConsumerState<PaymentOtpScreen> createState() => _PaymentOtpScreenState();
}

class _PaymentOtpScreenState extends ConsumerState<PaymentOtpScreen> {
  Timer? _ticker;
  String _code = '';
  Object? _loadError;

  @override
  void initState() {
    super.initState();
    // Rafraîchit les comptes à rebours chaque seconde.
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => _bootstrap());
  }

  Future<void> _bootstrap() async {
    final id = widget.paymentId;
    if (id == null) return;
    final controller = ref.read(paymentOtpControllerProvider.notifier);
    if (widget.initialSnapshot != null) {
      controller.start(widget.initialSnapshot!);
      return;
    }
    // Lien profond / rechargement : on récupère l'état courant du paiement.
    try {
      final snapshot = await ref.read(paymentRepositoryProvider).status(id);
      if (mounted) controller.start(snapshot);
    } on Failure catch (failure) {
      if (mounted) setState(() => _loadError = failure);
    }
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  void _onTerminal(PaymentOtpTerminal terminal, PaymentSnapshot snapshot) {
    context.goNamed(
      AppRoutes.travelerReceiptName,
      pathParameters: {'paymentId': '${snapshot.id}'},
      extra: snapshot,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    // Navigation à la résolution du paiement (payé / échoué).
    ref.listen(paymentOtpControllerProvider, (previous, next) {
      final terminal = next?.terminal;
      if (terminal != null && previous?.terminal == null) {
        _onTerminal(terminal, next!.snapshot);
      }
    });

    final state = ref.watch(paymentOtpControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(l10n.bookingStepPayment, style: AppTextStyles.dialogTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.goNamed(AppRoutes.searchResultsName),
        ),
      ),
      body: _body(context, state),
    );
  }

  Widget _body(BuildContext context, PaymentOtpState? state) {
    if (widget.paymentId == null) {
      return Center(child: ErrorState(message: context.l10n.failureNotFound));
    }
    if (_loadError != null) {
      return Center(
        child: ErrorState(
          failure: _loadError is Failure ? _loadError! as Failure : null,
          onRetry: _bootstrap,
        ),
      );
    }
    if (state == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return _OtpForm(
      state: state,
      code: _code,
      onCodeChanged: (value) {
        _code = value;
        ref.read(paymentOtpControllerProvider.notifier).clearError();
      },
      onVerify: () =>
          ref.read(paymentOtpControllerProvider.notifier).verify(_code),
      onResend: () => ref.read(paymentOtpControllerProvider.notifier).resend(),
    );
  }
}

class _OtpForm extends StatelessWidget {
  const _OtpForm({
    required this.state,
    required this.code,
    required this.onCodeChanged,
    required this.onVerify,
    required this.onResend,
  });

  final PaymentOtpState state;
  final String code;
  final ValueChanged<String> onCodeChanged;
  final VoidCallback onVerify;
  final VoidCallback onResend;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final now = DateTime.now();
    final snapshot = state.snapshot;
    final expired = PaymentOtpTiming.isExpired(snapshot.otpExpiresAtDate, now);
    final resendCooldown = PaymentOtpTiming.remainingResendCooldown(
      state.lastResendAt,
      now,
    );
    final canResend = resendCooldown == Duration.zero && !state.resending;
    final canVerify = code.length == 6 && !state.verifying && !expired;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppSpacing.md),
              const Icon(
                Icons.sms_outlined,
                size: 40,
                color: AppColors.primary,
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                l10n.otpTitle,
                textAlign: TextAlign.center,
                style: AppTypography.serif(size: 21, weight: FontWeight.w600),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                l10n.otpSentTo(snapshot.phone),
                textAlign: TextAlign.center,
                style: AppTypography.sans(
                  size: 14,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              OtpInput(
                enabled: !state.verifying && !expired,
                hasError: state.error != null,
                onChanged: onCodeChanged,
                onCompleted: (_) => onVerify(),
              ),
              const SizedBox(height: AppSpacing.sm),
              _StatusLine(state: state, expired: expired, now: now),
              const SizedBox(height: AppSpacing.lg),
              FilledButton(
                onPressed: canVerify ? onVerify : null,
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.accent,
                  foregroundColor: AppColors.white,
                  disabledBackgroundColor: AppColors.borderStrong,
                  disabledForegroundColor: AppColors.white,
                  minimumSize: const Size.fromHeight(AppSizes.control),
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppRadii.brMd,
                  ),
                  textStyle: AppTextStyles.button,
                ),
                child: state.verifying
                    ? const SizedBox(
                        height: 18,
                        width: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColors.white,
                        ),
                      )
                    : Text(l10n.otpVerifyAction),
              ),
              const SizedBox(height: AppSpacing.md),
              Center(
                child: TextButton(
                  onPressed: canResend ? onResend : null,
                  child: Text(
                    canResend
                        ? l10n.otpResend
                        : l10n.otpResendIn(resendCooldown.inSeconds),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Ligne d'état sous le champ : erreur, tentatives, compte à rebours.
class _StatusLine extends StatelessWidget {
  const _StatusLine({
    required this.state,
    required this.expired,
    required this.now,
  });

  final PaymentOtpState state;
  final bool expired;
  final DateTime now;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final error = state.error;

    if (error != null) {
      final message = error.isWrongCode
          ? (error.attemptsRemaining != null
                ? '${l10n.otpWrongCode} ${l10n.otpAttemptsRemaining(error.attemptsRemaining!)}'
                : l10n.otpWrongCode)
          : (error.failure?.localizedMessage(l10n) ?? l10n.failureUnexpected);
      return Text(
        message,
        textAlign: TextAlign.center,
        style: AppTypography.sans(
          size: 13,
          weight: FontWeight.w600,
          color: AppStatusColors.danger.foreground,
        ),
      );
    }

    if (expired) {
      return Text(
        l10n.otpExpired,
        textAlign: TextAlign.center,
        style: AppTypography.sans(
          size: 13,
          weight: FontWeight.w600,
          color: AppStatusColors.warning.foreground,
        ),
      );
    }

    final remaining = PaymentOtpTiming.remainingOtp(
      state.snapshot.otpExpiresAtDate,
      now,
    );
    final minutes = remaining.inMinutes;
    final seconds = (remaining.inSeconds % 60).toString().padLeft(2, '0');
    return Text(
      l10n.otpExpiresIn('$minutes:$seconds'),
      textAlign: TextAlign.center,
      style: AppTypography.sans(size: 13, color: AppColors.textSecondary),
    );
  }
}
