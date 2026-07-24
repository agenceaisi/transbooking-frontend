import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/brand_mark.dart';
import 'public_nav.dart';

/// Chrome commun aux écrans publics : en-tête (logo + navigation + Connexion /
/// Inscription) et corps.
///
/// Desktop (≥1024 px) : navigation en ligne. Mobile : bouton hamburger qui
/// déploie un menu en surimpression (overlay sombre cliquable pour fermer),
/// conformément à la maquette « Accueil ».
///
/// Le pied de page n'est pas inclus : chaque écran l'ajoute (ou non) à la fin de
/// son contenu défilant, selon qu'il a un pied ou une mise en page propre.
class PublicPageScaffold extends StatefulWidget {
  const PublicPageScaffold({required this.body, this.current, super.key});

  /// Corps de la page, sous l'en-tête.
  final Widget body;

  /// Destination courante, mise en évidence dans la navigation.
  final PublicNavDestination? current;

  @override
  State<PublicPageScaffold> createState() => _PublicPageScaffoldState();
}

class _PublicPageScaffoldState extends State<PublicPageScaffold> {
  bool _menuOpen = false;

  void _toggleMenu() => setState(() => _menuOpen = !_menuOpen);
  void _closeMenu() => setState(() => _menuOpen = false);

  void _goTo(PublicNavDestination destination) {
    _closeMenu();
    context.goNamed(destination.routeName);
  }

  void _goToLogin() {
    _closeMenu();
    context.goNamed(AppRoutes.loginName);
  }

  void _goToRegister() {
    _closeMenu();
    context.goNamed(AppRoutes.registerName);
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _PublicHeader(
              isDesktop: isDesktop,
              current: widget.current,
              menuOpen: _menuOpen,
              onNavigate: _goTo,
              onLogin: _goToLogin,
              onRegister: _goToRegister,
              onToggleMenu: _toggleMenu,
              onGoHome: () => _goTo(PublicNavDestination.home),
            ),
            Expanded(
              child: Stack(
                children: [
                  widget.body,
                  if (_menuOpen && !isDesktop)
                    _MobileMenu(
                      current: widget.current,
                      onNavigate: _goTo,
                      onLogin: _goToLogin,
                      onRegister: _goToRegister,
                      onDismiss: _closeMenu,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PublicHeader extends StatelessWidget {
  const _PublicHeader({
    required this.isDesktop,
    required this.current,
    required this.menuOpen,
    required this.onNavigate,
    required this.onLogin,
    required this.onRegister,
    required this.onToggleMenu,
    required this.onGoHome,
  });

  final bool isDesktop;
  final PublicNavDestination? current;
  final bool menuOpen;
  final void Function(PublicNavDestination) onNavigate;
  final VoidCallback onLogin;
  final VoidCallback onRegister;
  final VoidCallback onToggleMenu;
  final VoidCallback onGoHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(bottom: BorderSide(color: AppColors.borderSoft)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? AppSpacing.xxl : AppSpacing.md,
        vertical: AppSpacing.sm + 2,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: onGoHome,
            borderRadius: AppRadii.brMd,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xxs),
              child: BrandLockup(
                markSize: isDesktop ? 36 : 32,
                fontSize: isDesktop ? 18 : 16,
              ),
            ),
          ),
          if (isDesktop) ...[
            const Spacer(),
            for (final destination in PublicNavDestination.values)
              _NavLink(
                label: destination.label(context),
                isActive: destination == current,
                onTap: () => onNavigate(destination),
              ),
            const Spacer(),
            _TertiaryLink(label: context.l10n.publicNavLogin, onTap: onLogin),
            const SizedBox(width: AppSpacing.xs),
            _CompactPrimaryButton(
              label: context.l10n.publicNavRegister,
              onTap: onRegister,
            ),
          ] else ...[
            const Spacer(),
            _MenuButton(isOpen: menuOpen, onTap: onToggleMenu),
          ],
        ],
      ),
    );
  }
}

/// Lien de navigation desktop.
class _NavLink extends StatelessWidget {
  const _NavLink({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        foregroundColor: isActive ? AppColors.primary : AppColors.textStrong,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs + 1,
        ),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTypography.sans(
          size: 14,
          weight: isActive ? FontWeight.w700 : FontWeight.w500,
        ),
      ),
      child: Text(label),
    );
  }
}

/// Lien tertiaire (Connexion) — texte sans aplat.
class _TertiaryLink extends StatelessWidget {
  const _TertiaryLink({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        foregroundColor: AppColors.textStrong,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs + 2,
        ),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
      child: Text(label),
    );
  }
}

/// Bouton primaire compact de l'en-tête (Inscription).
class _CompactPrimaryButton extends StatelessWidget {
  const _CompactPrimaryButton({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md + 2,
          vertical: AppSpacing.sm,
        ),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
      child: Text(label),
    );
  }
}

/// Bouton hamburger mobile.
class _MenuButton extends StatelessWidget {
  const _MenuButton({required this.isOpen, required this.onTap});

  final bool isOpen;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      tooltip: isOpen
          ? context.l10n.publicMenuClose
          : context.l10n.publicMenuOpen,
      style: IconButton.styleFrom(
        backgroundColor: AppColors.surface,
        side: const BorderSide(color: AppColors.border),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
      ),
      icon: Icon(isOpen ? Icons.close : Icons.menu, color: AppColors.ink),
    );
  }
}

/// Menu déployé en surimpression sur mobile.
class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    required this.current,
    required this.onNavigate,
    required this.onLogin,
    required this.onRegister,
    required this.onDismiss,
  });

  final PublicNavDestination? current;
  final void Function(PublicNavDestination) onNavigate;
  final VoidCallback onLogin;
  final VoidCallback onRegister;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: GestureDetector(
        onTap: onDismiss,
        behavior: HitTestBehavior.opaque,
        child: ColoredBox(
          color: AppColors.scrim,
          child: Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                color: AppColors.surface,
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.md,
                  AppSpacing.xs,
                  AppSpacing.md,
                  AppSpacing.md,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (final destination in PublicNavDestination.values)
                      _MobileMenuItem(
                        label: destination.label(context),
                        isActive: destination == current,
                        onTap: () => onNavigate(destination),
                      ),
                    const SizedBox(height: AppSpacing.sm),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: onLogin,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: AppColors.textStrong,
                              minimumSize: const Size.fromHeight(
                                AppSizes.control,
                              ),
                              side: const BorderSide(
                                color: AppColors.borderStrong,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: AppRadii.brMd,
                              ),
                              textStyle: AppTextStyles.button,
                            ),
                            child: Text(context.l10n.publicNavLogin),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        Expanded(
                          child: FilledButton(
                            onPressed: onRegister,
                            style: FilledButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              foregroundColor: AppColors.onPrimary,
                              minimumSize: const Size.fromHeight(
                                AppSizes.control,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: AppRadii.brMd,
                              ),
                              textStyle: AppTextStyles.button,
                            ),
                            child: Text(context.l10n.publicNavRegister),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MobileMenuItem extends StatelessWidget {
  const _MobileMenuItem({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brMd,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.borderSoft)),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.sm + 1,
        ),
        child: Text(
          label,
          style: AppTypography.sans(
            size: 15,
            weight: FontWeight.w600,
            color: isActive ? AppColors.primary : AppColors.ink,
          ),
        ),
      ),
    );
  }
}
