import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/phone_field.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/traveler_payment_method.dart';

/// Choix du moyen de paiement + numéro Mobile Money.
///
/// La carte bancaire n'est **pas** proposée (refusée par l'API, CLAUDE.md §7).
class PaymentMethodSelector extends StatelessWidget {
  const PaymentMethodSelector({
    required this.selected,
    required this.onSelect,
    required this.phoneController,
    required this.phoneError,
    required this.onPhoneChanged,
    super.key,
  });

  final TravelerPaymentMethod selected;
  final ValueChanged<TravelerPaymentMethod> onSelect;
  final TextEditingController phoneController;
  final String? phoneError;
  final ValueChanged<String> onPhoneChanged;

  static String label(AppLocalizations l10n, TravelerPaymentMethod method) =>
      switch (method) {
        TravelerPaymentMethod.orangeMoney => l10n.paymentMethodOrangeMoney,
        TravelerPaymentMethod.moovMoney => l10n.paymentMethodMoovMoney,
        TravelerPaymentMethod.corisMoney => l10n.paymentMethodCorisMoney,
        TravelerPaymentMethod.telecelMoney => l10n.paymentMethodTelecelMoney,
        TravelerPaymentMethod.cash => l10n.paymentMethodCash,
      };

  /// Teinte du monogramme du moyen.
  static Color _tint(TravelerPaymentMethod method) => switch (method) {
    TravelerPaymentMethod.orangeMoney => const Color(0xFFF06A1E),
    TravelerPaymentMethod.moovMoney => const Color(0xFF0A66C2),
    TravelerPaymentMethod.corisMoney => const Color(0xFFC8102E),
    TravelerPaymentMethod.telecelMoney => AppColors.accent500,
    TravelerPaymentMethod.cash => AppColors.slate,
  };

  static String _abbr(TravelerPaymentMethod method) => switch (method) {
    TravelerPaymentMethod.orangeMoney => 'OM',
    TravelerPaymentMethod.moovMoney => 'MM',
    TravelerPaymentMethod.corisMoney => 'CM',
    TravelerPaymentMethod.telecelMoney => 'TM',
    TravelerPaymentMethod.cash => '₣',
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.bookingPaymentTitle,
          style: AppTypography.serif(size: 18, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          l10n.bookingPaymentSubtitle,
          style: AppTypography.sans(size: 13.5, color: AppColors.textSecondary),
        ),
        const SizedBox(height: AppSpacing.md),
        for (final method in TravelerPaymentMethod.values) ...[
          _MethodTile(
            label: label(l10n, method),
            tint: _tint(method),
            abbr: _abbr(method),
            selected: method == selected,
            onTap: () => onSelect(method),
          ),
          const SizedBox(height: AppSpacing.xs),
        ],
        const SizedBox(height: AppSpacing.sm),
        if (selected.isMobileMoney)
          PhoneField(
            controller: phoneController,
            label: l10n.paymentPhoneLabel,
            errorText: phoneError,
            onChanged: onPhoneChanged,
          )
        else
          InlineAlert(
            message: l10n.paymentMethodCashHint,
            type: StatusType.warning,
          ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          children: [
            const Icon(
              Icons.lock_outline,
              size: 15,
              color: AppColors.textTertiary,
            ),
            const SizedBox(width: AppSpacing.xxs),
            Text(
              l10n.paymentSecureNote,
              style: AppTypography.sans(
                size: 12.5,
                color: AppColors.textTertiary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MethodTile extends StatelessWidget {
  const _MethodTile({
    required this.label,
    required this.tint,
    required this.abbr,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final Color tint;
  final String abbr;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary50 : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
              width: selected ? 1.5 : 1,
            ),
            borderRadius: AppRadii.brMd,
          ),
          padding: const EdgeInsets.all(AppSpacing.sm),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: tint,
                  borderRadius: AppRadii.brSm,
                ),
                child: Text(
                  abbr,
                  style: AppTypography.sans(
                    size: 12,
                    weight: FontWeight.w800,
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Text(
                  label,
                  style: AppTypography.sans(
                    size: 14.5,
                    weight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: selected ? AppColors.primary : AppColors.borderStrong,
                size: AppSizes.iconMd,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
