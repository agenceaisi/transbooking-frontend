import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/inline_alert.dart';

/// Sélecteur de siège.
///
/// Le plan du véhicule n'étant pas exposé (cf. `TripBookingDetail`), on affiche
/// les seuls sièges **libres** en pastilles, plus l'option « attribution
/// automatique » (siège laissé au serveur).
class SeatSelector extends StatelessWidget {
  const SeatSelector({
    required this.availableSeats,
    required this.selectedSeat,
    required this.autoAssign,
    required this.onSelect,
    required this.onAutoAssign,
    super.key,
  });

  final List<String> availableSeats;
  final String? selectedSeat;
  final bool autoAssign;
  final ValueChanged<String> onSelect;
  final VoidCallback onAutoAssign;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.bookingSeatTitle,
          style: AppTypography.serif(size: 18, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          l10n.bookingSeatSubtitle,
          style: AppTypography.sans(
            size: 13.5,
            height: 1.5,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        _AutoAssignCard(selected: autoAssign, onTap: onAutoAssign),
        const SizedBox(height: AppSpacing.md),
        Wrap(
          spacing: AppSpacing.xs,
          runSpacing: AppSpacing.xs,
          children: [
            for (final seat in availableSeats)
              _SeatChip(
                seat: seat,
                selected: !autoAssign && seat == selectedSeat,
                onTap: () => onSelect(seat),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        InlineAlert(message: l10n.bookingSeatLayoutNote, type: StatusType.info),
      ],
    );
  }
}

class _AutoAssignCard extends StatelessWidget {
  const _AutoAssignCard({required this.selected, required this.onTap});

  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
              Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: selected ? AppColors.primary : AppColors.borderStrong,
                size: AppSizes.iconMd,
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.bookingSeatAuto,
                      style: AppTypography.sans(
                        size: 14.5,
                        weight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      l10n.bookingSeatAutoHint,
                      style: AppTypography.sans(
                        size: 12.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SeatChip extends StatelessWidget {
  const _SeatChip({
    required this.seat,
    required this.selected,
    required this.onTap,
  });

  final String seat;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.borderStrong,
              width: 1.5,
            ),
            borderRadius: AppRadii.brMd,
          ),
          child: Container(
            width: 52,
            height: 44,
            alignment: Alignment.center,
            child: Text(
              seat,
              style: AppTypography.mono(
                size: 13,
                weight: FontWeight.w600,
                color: selected ? AppColors.onPrimary : AppColors.textStrong,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
