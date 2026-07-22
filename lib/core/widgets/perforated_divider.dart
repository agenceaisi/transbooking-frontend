import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Séparateur perforé — élément signature du design system.
///
/// Reprend la découpe d'un billet physique : une ligne pointillée, parfois
/// bordée de deux encoches. Sépare les sections clés d'une carte (en-tête et
/// détail d'une réservation, souche d'un billet).
class PerforatedDivider extends StatelessWidget {
  const PerforatedDivider({
    this.showNotches = true,
    this.color,
    this.padding = const EdgeInsets.symmetric(vertical: AppSpacing.md),
    super.key,
  });

  /// Encoches semi-circulaires aux extrémités, comme sur une souche.
  final bool showNotches;

  /// Couleur du pointillé ; la bordure du thème par défaut.
  final Color? color;

  final EdgeInsetsGeometry padding;

  /// Longueur d'un tiret.
  static const double _dashWidth = 5;

  /// Espace entre deux tirets.
  static const double _dashGap = 4;

  /// Rayon des encoches latérales.
  static const double _notchRadius = 7;

  @override
  Widget build(BuildContext context) {
    final lineColor = color ?? AppColors.border;

    return Padding(
      padding: padding,
      child: SizedBox(
        height: _notchRadius * 2,
        child: CustomPaint(
          size: Size.infinite,
          painter: _PerforationPainter(
            color: lineColor,
            showNotches: showNotches,
            // L'encoche est « creusée » dans la carte : elle prend la couleur
            // du fond de l'écran, pas celle de la carte.
            notchColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}

class _PerforationPainter extends CustomPainter {
  const _PerforationPainter({
    required this.color,
    required this.showNotches,
    required this.notchColor,
  });

  final Color color;
  final bool showNotches;
  final Color notchColor;

  @override
  void paint(Canvas canvas, Size size) {
    final centerY = size.height / 2;

    if (showNotches) {
      final notchPaint = Paint()..color = notchColor;
      canvas
        ..drawCircle(
          Offset(0, centerY),
          PerforatedDivider._notchRadius,
          notchPaint,
        )
        ..drawCircle(
          Offset(size.width, centerY),
          PerforatedDivider._notchRadius,
          notchPaint,
        );
    }

    final dashPaint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    // On laisse la place des encoches libre de chaque côté.
    final start = showNotches ? PerforatedDivider._notchRadius + 2 : 0.0;
    final end = size.width - start;

    var x = start;
    while (x < end) {
      final dashEnd = (x + PerforatedDivider._dashWidth).clamp(x, end);
      canvas.drawLine(Offset(x, centerY), Offset(dashEnd, centerY), dashPaint);
      x += PerforatedDivider._dashWidth + PerforatedDivider._dashGap;
    }
  }

  @override
  bool shouldRepaint(_PerforationPainter oldDelegate) =>
      oldDelegate.color != color ||
      oldDelegate.showNotches != showNotches ||
      oldDelegate.notchColor != notchColor;
}
