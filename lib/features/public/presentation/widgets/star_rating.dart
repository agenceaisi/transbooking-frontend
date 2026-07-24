import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';

/// Rangée de cinq étoiles — note d'une compagnie ou d'un avis.
///
/// Les étoiles pleines sont en laiton (accent), les vides en gris de filet.
/// La note portée par l'API est en lecture seule ; on n'affiche jamais une
/// valeur inventée : sans note, appeler [StarRating] avec `rating: null` rend
/// cinq étoiles vides.
class StarRating extends StatelessWidget {
  const StarRating({required this.rating, this.size = 15, super.key});

  /// Note sur 5, `null` si aucune.
  final double? rating;

  final double size;

  @override
  Widget build(BuildContext context) {
    final value = rating ?? 0;
    final rounded = value.round().clamp(0, 5);

    return Semantics(
      label: context.l10n.starRatingLabel(_formatRating(value)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < 5; i++)
            Icon(
              i < rounded ? Icons.star_rounded : Icons.star_outline_rounded,
              size: size,
              color: i < rounded ? AppColors.accent : AppColors.borderStrong,
            ),
        ],
      ),
    );
  }

  /// Note formatée à la française — « 4,8 ».
  static String _formatRating(double value) =>
      value.toStringAsFixed(1).replaceFirst('.', ',');
}
