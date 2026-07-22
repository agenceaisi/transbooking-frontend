import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Bloc de chargement — une forme grise qui pulse doucement.
///
/// Préféré à un tourniquet pour les listes et les cartes : la page garde sa
/// structure, ce qui évite le saut de mise en page à l'arrivée des données.
class LoadingSkeleton extends StatefulWidget {
  const LoadingSkeleton({
    this.width,
    this.height = 16,
    this.borderRadius = AppRadii.brSm,
    super.key,
  });

  /// Occupe toute la largeur disponible si absent.
  final double? width;

  final double height;

  final BorderRadius borderRadius;

  /// Empilement de lignes, pour esquisser un paragraphe ou une carte.
  static Widget lines({
    int count = 3,
    double spacing = AppSpacing.xs,
    double height = 14,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < count; i++) ...[
          if (i > 0) SizedBox(height: spacing),
          LoadingSkeleton(
            height: height,
            // La dernière ligne est plus courte, comme un vrai paragraphe.
            width: i == count - 1 ? 140 : null,
          ),
        ],
      ],
    );
  }

  @override
  State<LoadingSkeleton> createState() => _LoadingSkeletonState();
}

class _LoadingSkeletonState extends State<LoadingSkeleton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  static const Duration _pulsePeriod = Duration(milliseconds: 1100);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _pulsePeriod)
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(begin: 0.45, end: 1).animate(_controller),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: AppColors.neutral200,
          borderRadius: widget.borderRadius,
        ),
      ),
    );
  }
}
