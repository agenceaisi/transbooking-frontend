import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Notation par étoiles cliquables (1 à 5), pour « Déposer un avis ».
///
/// Distincte de `StarRating` (public, lecture seule) : celle-ci saisit une
/// note. Les étoiles pleines prennent le laiton, l'accent réservé aux jalons.
class StarRatingInput extends StatelessWidget {
  const StarRatingInput({
    required this.value,
    required this.onChanged,
    this.size = 44,
    super.key,
  });

  /// Note courante, de 0 (aucune) à 5.
  final int value;
  final ValueChanged<int> onChanged;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var star = 1; star <= 5; star++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size * 0.12),
            child: _Star(
              filled: star <= value,
              size: size,
              onTap: () => onChanged(star),
              semanticLabel: '$star',
            ),
          ),
      ],
    );
  }
}

class _Star extends StatelessWidget {
  const _Star({
    required this.filled,
    required this.size,
    required this.onTap,
    required this.semanticLabel,
  });

  final bool filled;
  final double size;
  final VoidCallback onTap;
  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: filled,
      label: semanticLabel,
      child: InkResponse(
        onTap: onTap,
        radius: size * 0.7,
        child: Icon(
          filled ? Icons.star_rounded : Icons.star_outline_rounded,
          size: size,
          color: filled ? AppColors.accent : AppColors.borderStrong,
        ),
      ),
    );
  }
}
