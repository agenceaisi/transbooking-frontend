import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Pastille de statut, éventuellement clignotante.
///
/// Le clignotement est réservé à l'état « synchronisation en cours » : c'est
/// le seul mouvement fonctionnel du design system (CLAUDE.md §4, animations
/// minimales). Il ne tourne que dans cet état — inutile de faire travailler
/// l'appareil d'un agent le reste du temps.
class BlinkingDot extends StatefulWidget {
  const BlinkingDot({
    required this.color,
    this.size = AppSizes.statusDot,
    this.isBlinking = false,
    this.haloWidth = 0,
    super.key,
  });

  /// Variante du tableau de bord : pastille large cerclée d'un halo teinté.
  const BlinkingDot.haloed({
    required this.color,
    this.isBlinking = false,
    super.key,
  }) : size = AppSizes.statusDotLarge,
       haloWidth = AppSizes.statusDotHalo;

  final Color color;

  final double size;

  final bool isBlinking;

  /// Épaisseur du halo autour de la pastille ; `0` pour aucun halo.
  final double haloWidth;

  @override
  State<BlinkingDot> createState() => _BlinkingDotState();
}

class _BlinkingDotState extends State<BlinkingDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  /// Rythme du clignotement.
  static const Duration _blinkPeriod = Duration(milliseconds: 900);

  /// Opacité basse du clignotement — la pastille reste lisible.
  static const double _blinkMinOpacity = 0.35;

  /// Opacité du halo, dérivée de la couleur du statut.
  static const double _haloOpacity = 0.16;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _blinkPeriod);
    _updateBlink();
  }

  @override
  void didUpdateWidget(BlinkingDot oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isBlinking != widget.isBlinking) _updateBlink();
  }

  void _updateBlink() {
    if (widget.isBlinking) {
      _controller.repeat(reverse: true);
    } else {
      _controller
        ..stop()
        ..value = 1;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dot = Container(
      width: widget.size,
      height: widget.size,
      decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
    );

    return FadeTransition(
      opacity: Tween<double>(
        begin: 1,
        end: _blinkMinOpacity,
      ).animate(_controller),
      child: widget.haloWidth == 0
          ? dot
          : Container(
              padding: EdgeInsets.all(widget.haloWidth),
              decoration: BoxDecoration(
                color: widget.color.withValues(alpha: _haloOpacity),
                shape: BoxShape.circle,
              ),
              child: dot,
            ),
    );
  }
}
