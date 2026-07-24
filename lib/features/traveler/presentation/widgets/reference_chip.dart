import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Pastille de référence (numéro de suivi) affichée sur les écrans de
/// confirmation — réclamation et signalement portent désormais un `id` renvoyé
/// par l'API.
class ReferenceChip extends StatelessWidget {
  const ReferenceChip({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    const palette = AppStatusColors.success;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: palette.background,
        borderRadius: AppRadii.brPill,
        border: Border.all(color: palette.border),
      ),
      child: Text(
        label,
        style: AppTypography.mono(
          size: 12,
          weight: FontWeight.w600,
          letterSpacing: 0.4,
          color: palette.foreground,
        ),
      ),
    );
  }
}
