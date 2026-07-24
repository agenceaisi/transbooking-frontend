import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../l10n/app_localizations.dart';
import '../booking_form_controller.dart';

/// Indicateur d'étapes du parcours de réservation (Détail → Siège → Passager →
/// Paiement). Les étapes déjà franchies sont cliquables pour revenir en arrière.
class BookingStepper extends StatelessWidget {
  const BookingStepper({
    required this.current,
    required this.onGoBackTo,
    super.key,
  });

  final BookingStep current;
  final ValueChanged<BookingStep> onGoBackTo;

  static const List<BookingStep> _order = BookingStep.values;

  static String label(AppLocalizations l10n, BookingStep step) =>
      switch (step) {
        BookingStep.detail => l10n.bookingStepDetail,
        BookingStep.seat => l10n.bookingStepSeat,
        BookingStep.passenger => l10n.bookingStepPassenger,
        BookingStep.payment => l10n.bookingStepPayment,
      };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final currentIndex = _order.indexOf(current);
    final isCompact = !AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );

    if (isCompact) {
      return Row(
        children: [
          for (var i = 0; i < _order.length; i++)
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: i < _order.length - 1 ? AppSpacing.xxs : 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4,
                      decoration: BoxDecoration(
                        color: i <= currentIndex
                            ? AppColors.primary
                            : AppColors.border,
                        borderRadius: AppRadii.brPill,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      label(l10n, _order[i]),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.sans(
                        size: 11,
                        weight: i == currentIndex
                            ? FontWeight.w700
                            : FontWeight.w500,
                        color: i == currentIndex
                            ? AppColors.primary
                            : AppColors.textTertiary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      );
    }

    return Row(
      children: [
        for (var i = 0; i < _order.length; i++) ...[
          _StepNode(
            index: i,
            currentIndex: currentIndex,
            label: label(l10n, _order[i]),
            onTap: i < currentIndex ? () => onGoBackTo(_order[i]) : null,
          ),
          if (i < _order.length - 1)
            Expanded(
              child: Container(
                height: 2,
                margin: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
                color: i < currentIndex ? AppColors.primary : AppColors.border,
              ),
            ),
        ],
      ],
    );
  }
}

class _StepNode extends StatelessWidget {
  const _StepNode({
    required this.index,
    required this.currentIndex,
    required this.label,
    required this.onTap,
  });

  final int index;
  final int currentIndex;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final done = index < currentIndex;
    final active = index == currentIndex;

    final circle = Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: done
            ? AppColors.primary
            : active
            ? AppColors.surface
            : AppColors.surfaceSubtle,
        shape: BoxShape.circle,
        border: Border.all(
          color: done || active ? AppColors.primary : AppColors.borderStrong,
          width: 1.5,
        ),
      ),
      child: done
          ? const Icon(Icons.check, size: 16, color: AppColors.onPrimary)
          : Text(
              '${index + 1}',
              style: AppTypography.sans(
                size: 13,
                weight: FontWeight.w700,
                color: active ? AppColors.primary : AppColors.textTertiary,
              ),
            ),
    );

    final content = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        circle,
        const SizedBox(width: AppSpacing.xs),
        Text(
          label,
          style: AppTypography.sans(
            size: 13.5,
            weight: active || done ? FontWeight.w700 : FontWeight.w500,
            color: active || done
                ? AppColors.textPrimary
                : AppColors.textTertiary,
          ),
        ),
      ],
    );

    if (onTap == null) return content;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brMd,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxs),
        child: content,
      ),
    );
  }
}
