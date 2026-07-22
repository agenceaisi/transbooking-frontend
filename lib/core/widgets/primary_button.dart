import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Bouton d'action principale.
///
/// Un seul par écran en règle générale : c'est lui qui porte l'action que
/// l'utilisateur est venu accomplir.
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.label,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.expand = true,
    super.key,
  });

  /// Libellé, déjà traduit. Voix active, du point de vue de l'utilisateur.
  final String label;

  /// `null` désactive le bouton.
  final VoidCallback? onPressed;

  final IconData? icon;

  /// Pendant l'envoi : le bouton reste en place, l'action est bloquée.
  final bool isLoading;

  /// Occupe toute la largeur disponible (par défaut sur mobile).
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final isEnabled = onPressed != null && !isLoading;

    final button = FilledButton(
      onPressed: isEnabled ? onPressed : null,
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        disabledBackgroundColor: AppColors.borderStrong,
        disabledForegroundColor: AppColors.white,
        minimumSize: const Size.fromHeight(AppSizes.control),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
      child: _ButtonContent(label: label, icon: icon, isLoading: isLoading),
    );

    return expand ? SizedBox(width: double.infinity, child: button) : button;
  }
}

/// Contenu partagé par les boutons : libellé, icône, indicateur d'envoi.
class _ButtonContent extends StatelessWidget {
  const _ButtonContent({
    required this.label,
    required this.icon,
    required this.isLoading,
    this.color,
  });

  final String label;
  final IconData? icon;
  final bool isLoading;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SizedBox(
        height: 18,
        width: 18,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: color ?? AppColors.onPrimary,
        ),
      );
    }

    if (icon == null) return Text(label);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: AppSizes.iconSm),
        const SizedBox(width: AppSpacing.xs),
        // Souple : un libellé long sur un écran étroit se replie au lieu de
        // déborder du bouton.
        Flexible(child: Text(label, textAlign: TextAlign.center)),
      ],
    );
  }
}

/// Variante secondaire, exposée ici pour partager [_ButtonContent].
class SecondaryButtonContent extends StatelessWidget {
  const SecondaryButtonContent({
    required this.label,
    required this.icon,
    required this.isLoading,
    required this.color,
    super.key,
  });

  final String label;
  final IconData? icon;
  final bool isLoading;
  final Color color;

  @override
  Widget build(BuildContext context) => _ButtonContent(
    label: label,
    icon: icon,
    isLoading: isLoading,
    color: color,
  );
}
