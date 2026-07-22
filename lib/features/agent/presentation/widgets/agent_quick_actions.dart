import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Une action rapide du tableau de bord agent.
class AgentQuickAction {
  const AgentQuickAction({
    required this.label,
    required this.icon,
    required this.background,
    required this.foreground,
    required this.onPressed,
  });

  /// Libellé, déjà traduit.
  final String label;

  final IconData icon;

  /// Fond de la pastille d'icône.
  final Color background;

  /// Couleur de l'icône.
  final Color foreground;

  final VoidCallback onPressed;
}

/// Grille d'actions rapides à grandes cibles tactiles.
///
/// Priorité au terrain : une tuile fait au moins 112 px de haut sur mobile,
/// pour rester atteignable d'une main, gants ou pas.
class AgentQuickActions extends StatelessWidget {
  const AgentQuickActions({
    required this.actions,
    this.isCompact = true,
    super.key,
  });

  final List<AgentQuickAction> actions;

  final bool isCompact;

  /// Hauteur minimale d'une tuile en vue mobile.
  static const double _tileHeightCompact = 120;

  @override
  Widget build(BuildContext context) {
    if (isCompact) {
      return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        mainAxisSpacing: AppSpacing.sm,
        crossAxisSpacing: AppSpacing.sm,
        childAspectRatio: _childAspectRatio(context),
        children: [
          for (final action in actions)
            _QuickActionTile(action: action, isCompact: true),
        ],
      );
    }

    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: [
        for (final action in actions)
          SizedBox(
            width: 240,
            child: _QuickActionTile(action: action, isCompact: false),
          ),
      ],
    );
  }

  /// Garde une hauteur de tuile stable quelle que soit la largeur d'écran.
  double _childAspectRatio(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final tileWidth = (width - AppSpacing.md * 2 - AppSpacing.sm) / 2;
    return tileWidth / _tileHeightCompact;
  }
}

class _QuickActionTile extends StatelessWidget {
  const _QuickActionTile({required this.action, required this.isCompact});

  final AgentQuickAction action;
  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    final chip = Container(
      width: isCompact ? 46 : 44,
      height: isCompact ? 46 : 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: action.background,
        borderRadius: AppRadii.brLg,
      ),
      child: Icon(action.icon, size: AppSizes.iconMd, color: action.foreground),
    );

    // Un libellé long (« Liste des passagers · embarquement ») se replie sur
    // deux lignes plutôt que de déborder de la tuile.
    final label = Text(
      action.label,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.sans(
        size: isCompact ? 14.5 : 14,
        weight: FontWeight.w700,
        height: 1.2,
      ),
    );

    return Material(
      color: AppColors.surface,
      borderRadius: AppRadii.brCard,
      child: InkWell(
        onTap: action.onPressed,
        borderRadius: AppRadii.brCard,
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.md - 1),
          decoration: const BoxDecoration(
            borderRadius: AppRadii.brCard,
            border: AppBorders.card,
          ),
          child: isCompact
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    chip,
                    Flexible(child: label),
                  ],
                )
              : Row(
                  children: [
                    chip,
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(child: label),
                  ],
                ),
        ),
      ),
    );
  }
}
