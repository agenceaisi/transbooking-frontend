import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Intitulé d'une section publique : sur-titre monospace + titre serif.
///
/// Reprend le motif récurrent des sections de l'accueil et de la page compagnie
/// (« COMPAGNIES PARTENAIRES » / « Voyagez avec les meilleures compagnies »).
class SectionHeading extends StatelessWidget {
  const SectionHeading({
    required this.eyebrow,
    required this.title,
    this.trailing,
    this.centered = false,
    super.key,
  });

  /// Étiquette technique en capitales (JetBrains Mono).
  final String eyebrow;

  final String title;

  /// Action posée à droite (desktop) — ex. « Voir toutes les compagnies ».
  final Widget? trailing;

  final bool centered;

  @override
  Widget build(BuildContext context) {
    final texts = Column(
      crossAxisAlignment: centered
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          eyebrow.toUpperCase(),
          textAlign: centered ? TextAlign.center : TextAlign.start,
          style: AppTypography.mono(
            size: 12,
            weight: FontWeight.w600,
            letterSpacing: 1.4,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          title,
          textAlign: centered ? TextAlign.center : TextAlign.start,
          style: AppTypography.serif(size: 26, weight: FontWeight.w700),
        ),
      ],
    );

    if (trailing == null) return texts;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: texts),
        const SizedBox(width: AppSpacing.md),
        trailing!,
      ],
    );
  }
}
