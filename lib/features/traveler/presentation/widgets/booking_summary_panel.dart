import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/widgets/perforated_divider.dart';
import '../../../../l10n/app_localizations.dart';
import '../booking_form_controller.dart';

/// Panneau récapitulatif : trajet, siège, total et action principale.
///
/// Le total affiché est le **prix par place** issu de l'API (une place par
/// réservation). Le montant réellement facturé est renvoyé par le serveur à la
/// création (lecture seule, CLAUDE.md §13) ; aucun frais n'est recalculé ici.
class BookingSummaryPanel extends StatelessWidget {
  const BookingSummaryPanel({
    required this.originCity,
    required this.destinationCity,
    required this.price,
    required this.form,
    required this.primaryLabel,
    required this.onPrimary,
    required this.primaryEnabled,
    required this.isLoading,
    this.compact = false,
    super.key,
  });

  final String originCity;
  final String destinationCity;
  final String price;
  final BookingFormState form;
  final String primaryLabel;
  final VoidCallback onPrimary;
  final bool primaryEnabled;
  final bool isLoading;

  /// Barre compacte (mobile) : total + bouton, sans le détail.
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final button = SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: primaryEnabled && !isLoading ? onPrimary : null,
        style: FilledButton.styleFrom(
          backgroundColor: form.step == BookingStep.payment
              ? AppColors.accent
              : AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          disabledBackgroundColor: AppColors.borderStrong,
          disabledForegroundColor: AppColors.white,
          minimumSize: const Size.fromHeight(AppSizes.control),
          shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
          textStyle: AppTextStyles.button,
        ),
        child: isLoading
            ? const SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.onPrimary,
                ),
              )
            : Text(primaryLabel),
      ),
    );

    if (compact) {
      return Container(
        decoration: const BoxDecoration(
          color: AppColors.surface,
          border: Border(top: BorderSide(color: AppColors.borderSoft)),
        ),
        padding: const EdgeInsets.all(AppSpacing.md),
        child: SafeArea(
          top: false,
          child: Row(
            children: [
              Expanded(child: _Total(price: price)),
              const SizedBox(width: AppSpacing.md),
              Expanded(child: button),
            ],
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.bookingSummaryTitle,
            style: AppTypography.serif(size: 16, weight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.sm),
          _Row(
            label: l10n.resultsRoute(originCity, destinationCity),
            value: '',
          ),
          _Row(label: l10n.bookingSummarySeatLabel, value: _seatLabel(l10n)),
          const PerforatedDivider(showNotches: false),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  l10n.bookingSummaryTotalLabel,
                  style: AppTypography.sans(
                    size: 13,
                    weight: FontWeight.w600,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              _Total(price: price),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            l10n.bookingSummaryPriceNote,
            style: AppTypography.sans(
              size: 11.5,
              color: AppColors.textTertiary,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          button,
          const SizedBox(height: AppSpacing.xs),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.lock_outline,
                  size: 13,
                  color: AppColors.textTertiary,
                ),
                const SizedBox(width: AppSpacing.xxs),
                Text(
                  l10n.paymentSecureNote,
                  style: AppTypography.sans(
                    size: 11.5,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _seatLabel(AppLocalizations l10n) {
    if (form.autoAssignSeat) return l10n.bookingSummarySeatAuto;
    return form.selectedSeat ?? '—';
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxs + 1),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTypography.sans(
                size: 13,
                weight: FontWeight.w600,
                color: value.isEmpty
                    ? AppColors.textPrimary
                    : AppColors.textSecondary,
              ),
            ),
          ),
          if (value.isNotEmpty)
            Text(
              value,
              style: AppTypography.sans(size: 13, weight: FontWeight.w700),
            ),
        ],
      ),
    );
  }
}

class _Total extends StatelessWidget {
  const _Total({required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          Fcfa.format(price),
          style: AppTypography.sans(
            size: 20,
            weight: FontWeight.w800,
            tabular: true,
          ),
        ),
        const SizedBox(width: AppSpacing.xxs),
        Text(
          context.l10n.currencySuffix,
          style: AppTypography.sans(
            size: 12,
            weight: FontWeight.w600,
            color: AppColors.textTertiary,
          ),
        ),
      ],
    );
  }
}
