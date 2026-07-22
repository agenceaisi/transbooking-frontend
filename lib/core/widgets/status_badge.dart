import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Pastille de statut : point coloré + libellé, sur fond teinté.
///
/// Le [label] vient toujours de l'API (champ `*_display`) ou des `.arb` — le
/// badge ne traduit rien lui-même. La couleur porte le sens ; le texte reste
/// indispensable, car la couleur seule n'est pas accessible.
class StatusBadge extends StatelessWidget {
  const StatusBadge({
    required this.label,
    required this.type,
    this.showDot = true,
    super.key,
  });

  /// Libellé affiché, déjà traduit.
  final String label;

  /// Statut sémantique, qui détermine le jeu de quatre tons.
  final StatusType type;

  final bool showDot;

  @override
  Widget build(BuildContext context) {
    final palette = AppStatusColors.of(type);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xxs + 2,
      ),
      decoration: BoxDecoration(
        color: palette.background,
        border: Border.all(color: palette.border),
        borderRadius: AppRadii.brPill,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showDot) ...[
            Container(
              width: AppSizes.statusDot,
              height: AppSizes.statusDot,
              decoration: BoxDecoration(
                color: palette.dot,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: AppSpacing.xs),
          ],
          Text(
            label,
            style: AppTextStyles.badge.copyWith(color: palette.foreground),
          ),
        ],
      ),
    );
  }
}
