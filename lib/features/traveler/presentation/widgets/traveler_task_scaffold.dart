import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';

/// Ossature des écrans-tâches du voyageur (billet, avis, réclamation,
/// signalement) : en-tête blanc avec bouton retour, contenu centré et barre
/// d'action basse optionnelle. Ces écrans sont volontairement **sans menu
/// latéral** — la maquette les présente comme des pages focalisées.
class TravelerTaskScaffold extends StatelessWidget {
  const TravelerTaskScaffold({
    required this.title,
    required this.child,
    this.leadingIcon,
    this.leadingIconColor,
    this.subtitle,
    this.bottomBar,
    this.maxContentWidth = 720,
    super.key,
  });

  final String title;
  final String? subtitle;
  final IconData? leadingIcon;
  final Color? leadingIconColor;
  final Widget child;

  /// Barre d'action collée en bas (bouton d'envoi), comme sur la maquette.
  final Widget? bottomBar;
  final double maxContentWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 20),
          onPressed: () => _back(context),
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        title: Row(
          children: [
            if (leadingIcon != null) ...[
              Container(
                width: 34,
                height: 34,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: (leadingIconColor ?? AppColors.primary).withValues(
                    alpha: 0.12,
                  ),
                  borderRadius: AppRadii.brMd,
                ),
                child: Icon(
                  leadingIcon,
                  size: 18,
                  color: leadingIconColor ?? AppColors.primary,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: AppTextStyles.dialogTitle),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.caption,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxContentWidth),
          child: child,
        ),
      ),
      bottomNavigationBar: bottomBar == null
          ? null
          : Container(
              decoration: const BoxDecoration(
                color: AppColors.surface,
                border: Border(top: BorderSide(color: AppColors.borderSoft)),
              ),
              child: SafeArea(
                top: false,
                // `heightFactor: 1` est essentiel : un `Center` nu reçoit une
                // hauteur *lâche* (bornée par tout l'espace restant de la
                // page) et s'étend pour la remplir — Scaffold réserve alors
                // toute cette hauteur à la barre basse et écrase le corps de
                // la page à 0 px (régression découverte en vérifiant le rendu
                // de « Déposer un avis »). `heightFactor: 1` force l'auto-
                // dimensionnement au contenu, comme un `Center` l'affiche.
                child: Align(
                  heightFactor: 1,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxContentWidth),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      child: bottomBar,
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  void _back(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.goNamed(AppRoutes.travelerName);
    }
  }
}
