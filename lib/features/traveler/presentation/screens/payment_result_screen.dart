import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/payment_snapshot.dart';
import '../traveler_providers.dart';

/// Écran de résultat d'un paiement : payé (vert) / en attente (orange) /
/// échoué (rouge), avec accès au reçu (guide §6.8).
class PaymentResultScreen extends ConsumerWidget {
  const PaymentResultScreen({
    required this.paymentId,
    this.initialSnapshot,
    super.key,
  });

  final int? paymentId;
  final PaymentSnapshot? initialSnapshot;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(l10n.bookingStepPayment, style: AppTextStyles.dialogTitle),
      ),
      body: _body(context, ref),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    final snapshot = initialSnapshot;
    if (snapshot != null) return _Result(payment: snapshot);

    final id = paymentId;
    if (id == null) {
      return Center(child: ErrorState(message: context.l10n.failureNotFound));
    }
    final status = ref.watch(paymentStatusProvider(id));
    return status.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(
        child: ErrorState(
          failure: error is Failure ? error : null,
          onRetry: () => ref.invalidate(paymentStatusProvider(id)),
        ),
      ),
      data: (payment) => _Result(payment: payment),
    );
  }
}

/// Configuration visuelle par statut.
class _ResultStyle {
  const _ResultStyle({
    required this.palette,
    required this.icon,
    required this.badge,
    required this.title,
    required this.message,
  });

  final StatusPalette palette;
  final IconData icon;
  final String badge;
  final String title;
  final String message;

  static _ResultStyle of(AppLocalizations l10n, PaymentSnapshot payment) {
    if (payment.isPaid) {
      return _ResultStyle(
        palette: AppStatusColors.success,
        icon: Icons.check_rounded,
        badge: l10n.paymentResultPaidBadge,
        title: l10n.paymentResultPaidTitle,
        message: l10n.paymentResultPaidMessage,
      );
    }
    if (payment.isFailed) {
      return _ResultStyle(
        palette: AppStatusColors.danger,
        icon: Icons.close_rounded,
        badge: l10n.paymentResultFailedBadge,
        title: l10n.paymentResultFailedTitle,
        message: l10n.paymentResultFailedMessage,
      );
    }
    // pending (espèces, ou Mobile Money non encore confirmé).
    return _ResultStyle(
      palette: AppStatusColors.warning,
      icon: Icons.schedule_rounded,
      badge: l10n.paymentResultPendingBadge,
      title: l10n.paymentResultPendingTitle,
      message: l10n.paymentResultPendingMessage,
    );
  }
}

class _Result extends StatelessWidget {
  const _Result({required this.payment});

  final PaymentSnapshot payment;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final style = _ResultStyle.of(l10n, payment);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppSpacing.lg),
              _Glyph(style: style),
              const SizedBox(height: AppSpacing.lg),
              Center(child: _Badge(style: style)),
              const SizedBox(height: AppSpacing.md),
              Text(
                style.title,
                textAlign: TextAlign.center,
                style: AppTypography.serif(size: 22, weight: FontWeight.w600),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                style.message,
                textAlign: TextAlign.center,
                style: AppTypography.sans(
                  size: 14,
                  height: 1.55,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _SummaryCard(payment: payment),
              const SizedBox(height: AppSpacing.lg),
              _Actions(payment: payment),
            ],
          ),
        ),
      ),
    );
  }
}

class _Glyph extends StatelessWidget {
  const _Glyph({required this.style});

  final _ResultStyle style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 76,
        height: 76,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: style.palette.dot,
          shape: BoxShape.circle,
        ),
        child: Icon(style.icon, size: 42, color: AppColors.white),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.style});

  final _ResultStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xxs + 1,
      ),
      decoration: BoxDecoration(
        color: style.palette.background,
        border: Border.all(color: style.palette.border),
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        style.badge.toUpperCase(),
        style: AppTypography.mono(
          size: 11,
          weight: FontWeight.w600,
          letterSpacing: 0.6,
          color: style.palette.foreground,
        ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({required this.payment});

  final PaymentSnapshot payment;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        children: [
          _Row(
            label: l10n.paymentResultAmount,
            value: '${Fcfa.format(payment.amount)} ${l10n.currencySuffix}',
          ),
          _Row(label: l10n.paymentResultMethod, value: payment.methodDisplay),
          _Row(
            label: l10n.paymentResultTicket,
            value: payment.ticketNumber,
            mono: true,
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.label, required this.value, this.mono = false});

  final String label;
  final String value;
  final bool mono;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTypography.sans(
                size: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Text(
            value,
            style: mono
                ? AppTextStyles.referenceSmall
                : AppTypography.sans(size: 13.5, weight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({required this.payment});

  final PaymentSnapshot payment;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (payment.isPaid && payment.hasReceipt)
          FilledButton.icon(
            onPressed: () => _receiptUnavailable(context),
            icon: const Icon(Icons.download_outlined, size: AppSizes.iconSm),
            label: Text(l10n.paymentResultViewReceipt),
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.onPrimary,
              minimumSize: const Size.fromHeight(AppSizes.control),
              shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
              textStyle: AppTextStyles.button,
            ),
          ),
        if (payment.isFailed)
          FilledButton(
            onPressed: () => context.goNamed(AppRoutes.searchResultsName),
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.onPrimary,
              minimumSize: const Size.fromHeight(AppSizes.control),
              shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
              textStyle: AppTextStyles.button,
            ),
            child: Text(l10n.paymentResultRetry),
          ),
        const SizedBox(height: AppSpacing.xs),
        if (!payment.isFailed)
          OutlinedButton(
            onPressed: () => context.goNamed(AppRoutes.travelerName),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.textStrong,
              minimumSize: const Size.fromHeight(AppSizes.control),
              side: const BorderSide(color: AppColors.borderStrong),
              shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
              textStyle: AppTextStyles.button,
            ),
            child: Text(l10n.paymentResultViewTicket),
          ),
        const SizedBox(height: AppSpacing.xs),
        TextButton(
          onPressed: () => context.goNamed(AppRoutes.homeName),
          child: Text(l10n.paymentResultBackHome),
        ),
      ],
    );
  }

  /// L'ouverture du PDF nécessite un package d'ouverture d'URL/impression, non
  /// encore ajouté (CLAUDE.md §2 : pas de dépendance sans validation).
  void _receiptUnavailable(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(context.l10n.paymentResultReceiptUnavailable)),
      );
  }
}
