import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Carte blanche à filet, titrée, du tableau de bord agent.
///
/// Reprend le motif dominant de la maquette : en-tête (titre + action de
/// droite), puis contenu séparé par des filets fins.
class SectionCard extends StatelessWidget {
  const SectionCard({
    required this.title,
    required this.child,
    this.trailing,
    this.subtitle,
    this.padded = false,
    super.key,
  });

  /// Titre de la carte, déjà traduit.
  final String title;

  /// Lien ou bouton aligné à droite du titre.
  final Widget? trailing;

  /// Ligne d'information sous le titre — sert au « Dernière mise à jour ».
  final String? subtitle;

  /// Applique la marge intérieure au contenu.
  ///
  /// Les listes s'en passent : leurs lignes doivent toucher les bords pour que
  /// les filets aillent d'un côté à l'autre.
  final bool padded;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: AppBorders.card,
        boxShadow: AppShadows.card,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.sm,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: AppTypography.sans(
                          size: 15,
                          weight: FontWeight.w700,
                        ),
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: AppSpacing.xxs / 2),
                        Text(
                          subtitle!,
                          style: AppTextStyles.caption.copyWith(
                            fontSize: 12,
                            color: AppColors.textTertiary,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                ?trailing,
              ],
            ),
          ),
          if (padded)
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.md,
                0,
                AppSpacing.md,
                AppSpacing.md,
              ),
              child: child,
            )
          else
            child,
        ],
      ),
    );
  }
}
