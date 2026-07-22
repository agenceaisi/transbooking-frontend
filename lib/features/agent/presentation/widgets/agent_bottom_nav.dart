import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Un onglet de la barre basse du module agent.
class AgentNavItem {
  const AgentNavItem({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isCurrent = false,
  });

  /// Libellé, déjà traduit.
  final String label;

  final IconData icon;

  final VoidCallback onPressed;

  /// Onglet actuellement affiché.
  final bool isCurrent;
}

/// Barre de navigation basse — vue mobile uniquement.
///
/// Écrite à la main plutôt qu'avec `NavigationBar` : la maquette impose une
/// barre basse et dense (icône 21 px, libellé 9,5 px) que le composant Material
/// ne sait pas produire sans la déformer.
class AgentBottomNav extends StatelessWidget {
  const AgentBottomNav({required this.items, super.key});

  final List<AgentNavItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [for (final item in items) Expanded(child: _Tab(item))],
        ),
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab(this.item);

  final AgentNavItem item;

  @override
  Widget build(BuildContext context) {
    final color = item.isCurrent ? AppColors.primary : AppColors.textTertiary;

    return Semantics(
      button: true,
      selected: item.isCurrent,
      label: item.label,
      child: InkWell(
        onTap: item.onPressed,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xxs,
            AppSpacing.xs + 1,
            AppSpacing.xxs,
            AppSpacing.sm - 1,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(item.icon, size: 21, color: color),
              const SizedBox(height: AppSpacing.xxs - 1),
              Text(
                item.label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.sans(
                  size: 9.5,
                  weight: item.isCurrent ? FontWeight.w700 : FontWeight.w500,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
