import 'package:flutter/material.dart';

import '../localization/l10n_extension.dart';
import '../theme/app_theme.dart';

/// Logotype de TransBooking BF.
///
/// Recréation du monogramme des maquettes : carré indigo aux angles arrondis,
/// pare-brise clair, deux roues. Dessiné en widgets plutôt qu'en image, pour
/// rester net à toutes les densités et sans asset à charger hors ligne.
class BrandMark extends StatelessWidget {
  const BrandMark({
    this.size = 40,
    this.background,
    this.foreground,
    super.key,
  });

  /// Côté du carré.
  final double size;

  /// Fond du monogramme (indigo par défaut).
  final Color? background;

  /// Traits du bus (bleu très clair par défaut).
  final Color? foreground;

  @override
  Widget build(BuildContext context) {
    final bg = background ?? AppColors.primary;
    final fg = foreground ?? AppColors.primary50;
    final unit = size / 40;

    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(11 * unit),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 6 * unit,
              right: 6 * unit,
              top: 10 * unit,
              bottom: 13 * unit,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: fg,
                  borderRadius: BorderRadius.circular(3 * unit),
                ),
              ),
            ),
            _Wheel(
              left: 10 * unit,
              bottom: 6 * unit,
              size: 5 * unit,
              color: fg,
            ),
            _Wheel(
              right: 10 * unit,
              bottom: 6 * unit,
              size: 5 * unit,
              color: fg,
            ),
          ],
        ),
      ),
    );
  }
}

class _Wheel extends StatelessWidget {
  const _Wheel({
    required this.bottom,
    required this.size,
    required this.color,
    this.left,
    this.right,
  });

  final double? left;
  final double? right;
  final double bottom;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

/// Monogramme + nom de la plateforme, sur une ligne.
class BrandLockup extends StatelessWidget {
  const BrandLockup({this.markSize = 40, this.fontSize = 20, super.key});

  final double markSize;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    // « TransBooking » en encre, « BF » en indigo : le nom de la plateforme
    // n'est pas traduit, seul le mot-symbole change de couleur.
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BrandMark(size: markSize),
        const SizedBox(width: AppSpacing.xs + 2),
        Text.rich(
          TextSpan(
            text: 'TransBooking',
            style: AppTypography.sans(
              size: fontSize,
              weight: FontWeight.w800,
              height: 1.1,
            ),
            children: [
              TextSpan(
                text: ' BF',
                style: AppTypography.sans(
                  size: fontSize,
                  weight: FontWeight.w800,
                  color: AppColors.primary,
                  height: 1.1,
                ),
              ),
            ],
          ),
          semanticsLabel: context.l10n.appTitle,
        ),
      ],
    );
  }
}
