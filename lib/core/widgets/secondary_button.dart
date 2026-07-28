import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'primary_button.dart';

/// Bouton d'action secondaire — contour fin, sans aplat de couleur.
///
/// Accompagne un [PrimaryButton] : annuler, revenir, action alternative.
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.label,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.expand = true,
    this.isDestructive = false,
    super.key,
  });

  /// Libellé, déjà traduit.
  final String label;

  /// `null` désactive le bouton.
  final VoidCallback? onPressed;

  final IconData? icon;

  final bool isLoading;

  final bool expand;

  /// Action irréversible (annuler une réservation, suspendre un compte) :
  /// le contour et le texte passent au rouge.
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    final isEnabled = onPressed != null && !isLoading;
    final color = isDestructive
        ? AppStatusColors.danger.foreground
        : AppColors.primary;

    final button = OutlinedButton(
      onPressed: isEnabled ? onPressed : null,
      style: OutlinedButton.styleFrom(
        foregroundColor: color,
        disabledForegroundColor: AppColors.textTertiary,
        backgroundColor: AppColors.surface,
        // Largeur minimale infinie (pleine largeur) uniquement en mode `expand`
        // ; sinon nulle, pour un placement en largeur non bornée (Row).
        minimumSize: expand
            ? const Size.fromHeight(AppSizes.control)
            : const Size(0, AppSizes.control),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        side: BorderSide(color: isEnabled ? color : AppColors.border),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
      child: SecondaryButtonContent(
        label: label,
        icon: icon,
        isLoading: isLoading,
        expand: expand,
        color: color,
      ),
    );

    return expand ? SizedBox(width: double.infinity, child: button) : button;
  }
}
