import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Emplacement d'image — motif rayé + légende monospace.
///
/// Aucune image n'est générée (CLAUDE.md §0) : ces zones marquent où une photo
/// réseau/asset fournie par le client viendra se placer. La légende décrit le
/// contenu attendu.
class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    required this.caption,
    this.height,
    this.borderRadius = AppRadii.brCard,
    this.dark = false,
    super.key,
  });

  /// Description du contenu attendu (« Photo : car de voyage sur route »).
  final String caption;

  /// Hauteur fixe ; occupe l'espace disponible si absent.
  final double? height;

  final BorderRadius borderRadius;

  /// Variante sombre — sur les fonds indigo (hero).
  final bool dark;

  @override
  Widget build(BuildContext context) {
    final base = dark ? AppColors.primary900 : AppColors.surfaceSubtle;
    final stripe = dark
        ? AppColors.white.withValues(alpha: 0.05)
        : AppColors.neutral200;
    final captionColor = dark
        ? AppColors.white.withValues(alpha: 0.6)
        : AppColors.textTertiary;

    return ClipRRect(
      borderRadius: borderRadius,
      child: CustomPaint(
        painter: _StripePainter(base: base, stripe: stripe),
        child: SizedBox(
          height: height,
          width: double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Text(
                caption,
                textAlign: TextAlign.center,
                style: AppTypography.mono(
                  size: 11,
                  weight: FontWeight.w500,
                  color: captionColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StripePainter extends CustomPainter {
  const _StripePainter({required this.base, required this.stripe});

  final Color base;
  final Color stripe;

  static const double _spacing = 14;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = base);

    final paint = Paint()
      ..color = stripe
      ..strokeWidth = 7;

    // Rayures diagonales à 45°, couvrant toute la surface.
    for (var x = -size.height; x < size.width; x += _spacing) {
      canvas.drawLine(
        Offset(x, size.height),
        Offset(x + size.height, 0),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_StripePainter oldDelegate) =>
      oldDelegate.base != base || oldDelegate.stripe != stripe;
}
