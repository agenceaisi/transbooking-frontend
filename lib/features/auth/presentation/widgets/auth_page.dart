import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Gabarit des écrans d'authentification.
///
/// Reprend la mise en page des maquettes : papier blanc cassé, deux cercles
/// pointillés en décor, contenu centré et borné en largeur — la même page sert
/// le mobile et le web sans mise en page séparée.
class AuthPage extends StatelessWidget {
  const AuthPage({
    required this.title,
    required this.subtitle,
    required this.child,
    this.footer,
    this.maxWidth = 400,
    super.key,
  });

  /// Titre principal, déjà traduit.
  final String title;

  /// Phrase d'accroche sous le titre.
  final String subtitle;

  /// Corps de la page — en général une carte de formulaire.
  final Widget child;

  /// Ligne de bas de page (bascule connexion ↔ inscription).
  final Widget? footer;

  /// Largeur maximale du contenu : 400 pour la connexion, 560 pour
  /// l'inscription (maquette « Écrans publics »).
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          const _DashedDecor(),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                  vertical: AppSpacing.xxl,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Center(child: BrandLockup()),
                      const SizedBox(height: AppSpacing.lg),
                      Text(
                        title,
                        style: AppTextStyles.pageTitle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppSpacing.xxs + 2),
                      Text(
                        subtitle,
                        style: AppTextStyles.body.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      child,
                      if (footer != null) ...[
                        const SizedBox(height: AppSpacing.lg),
                        footer!,
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Carte blanche qui porte un formulaire.
class AuthCard extends StatelessWidget {
  const AuthCard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
        boxShadow: AppShadows.card,
      ),
      child: child,
    );
  }
}

/// Bascule de bas de page : « Pas encore de compte ? Créer un compte ».
class AuthFooterLink extends StatelessWidget {
  const AuthFooterLink({
    required this.question,
    required this.actionLabel,
    required this.onPressed,
    super.key,
  });

  final String question;
  final String actionLabel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            question,
            style: AppTextStyles.body.copyWith(color: AppColors.textSecondary),
            textAlign: TextAlign.end,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
            textStyle: AppTextStyles.bodyStrong,
          ),
          child: Text(actionLabel),
        ),
      ],
    );
  }
}

/// Deux cercles pointillés, repris du décor de la maquette.
class _DashedDecor extends StatelessWidget {
  const _DashedDecor();

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: [
            Positioned(
              left: -60,
              bottom: -80,
              child: _DashedCircle(diameter: 240, color: AppColors.primary100),
            ),
            Positioned(
              right: -40,
              top: -60,
              child: _DashedCircle(
                diameter: 180,
                // Filet laiton clair : la seule touche chaude de l'écran.
                color: AppColors.accent100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Cercle au trait pointillé — même vocabulaire que le billet perforé.
class _DashedCircle extends StatelessWidget {
  const _DashedCircle({required this.diameter, required this.color});

  final double diameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(diameter),
      painter: _DashedCirclePainter(color),
    );
  }
}

class _DashedCirclePainter extends CustomPainter {
  const _DashedCirclePainter(this.color);

  final Color color;

  /// Longueur d'un tiret et de l'espace qui le suit, en degrés.
  static const double _dashDegrees = 4;
  static const double _gapDegrees = 4;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final rect = Rect.fromLTWH(1, 1, size.width - 2, size.height - 2);
    const step = (_dashDegrees + _gapDegrees) * 3.141592653589793 / 180;
    const dash = _dashDegrees * 3.141592653589793 / 180;

    for (double angle = 0; angle < 2 * 3.141592653589793; angle += step) {
      canvas.drawArc(rect, angle, dash, false, paint);
    }
  }

  @override
  bool shouldRepaint(_DashedCirclePainter oldDelegate) =>
      oldDelegate.color != color;
}
