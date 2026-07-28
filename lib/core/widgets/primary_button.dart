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
        // `Size.fromHeight` impose une largeur minimale infinie (bouton pleine
        // largeur) : incompatible avec un placement en largeur non bornée
        // (enfant non-flexible d'une Row). En mode ajusté au contenu, largeur
        // minimale nulle pour laisser le bouton s'adapter à son libellé.
        minimumSize: expand
            ? const Size.fromHeight(AppSizes.control)
            : const Size(0, AppSizes.control),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
      child: _ButtonContent(
        label: label,
        icon: icon,
        isLoading: isLoading,
        expand: expand,
      ),
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
    this.expand = true,
    this.color,
  });

  final String label;
  final IconData? icon;
  final bool isLoading;

  /// Reprend le mode du bouton parent : en pleine largeur (`true`) le contenu
  /// dispose d'une largeur bornée et peut replier le libellé ; en ajustement au
  /// contenu (`false`) la largeur est **non bornée**, il faut donc éviter
  /// `Flexible` — sinon « BoxConstraints forces an infinite width ».
  final bool expand;
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
        // Souple : sur un bouton pleine largeur, un libellé long se replie au
        // lieu de déborder. En mode ajusté au contenu (largeur non bornée), le
        // texte s'affiche tel quel — `Flexible` y planterait.
        if (expand)
          Flexible(child: Text(label, textAlign: TextAlign.center))
        else
          Text(label, textAlign: TextAlign.center),
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
    this.expand = true,
    super.key,
  });

  final String label;
  final IconData? icon;
  final bool isLoading;
  final Color color;
  final bool expand;

  @override
  Widget build(BuildContext context) => _ButtonContent(
    label: label,
    icon: icon,
    isLoading: isLoading,
    expand: expand,
    color: color,
  );
}
