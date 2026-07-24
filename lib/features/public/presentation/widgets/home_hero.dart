import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/image_placeholder.dart';
import 'home_search_form.dart';

/// Hero de la page d'accueil : accroche, module de recherche et grand CTA.
///
/// Fond photo (placeholder) recouvert d'un dégradé indigo, conformément à la
/// maquette « Accueil ». Deux colonnes en desktop, empilé en mobile.
class HomeHero extends StatelessWidget {
  const HomeHero({required this.isDesktop, super.key});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: ImagePlaceholder(
            caption: 'Photo : car de voyage sur route, Burkina Faso',
            borderRadius: BorderRadius.zero,
            dark: true,
          ),
        ),
        const Positioned.fill(child: _HeroGradient()),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? AppSpacing.xxxl : AppSpacing.md,
            vertical: isDesktop ? AppSpacing.xxxl : AppSpacing.xl,
          ),
          child: _HeroContent(isDesktop: isDesktop),
        ),
      ],
    );
  }
}

/// Contenu du hero — deux colonnes en desktop, empilé en mobile.
class _HeroContent extends StatelessWidget {
  const _HeroContent({required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    if (isDesktop) {
      return Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 125,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _HeroBadge(),
                    SizedBox(height: AppSpacing.md),
                    _HeroTitle(),
                    SizedBox(height: AppSpacing.sm),
                    _HeroSubtitle(),
                    SizedBox(height: AppSpacing.lg),
                    _SearchCard(),
                  ],
                ),
              ),
              SizedBox(width: AppSpacing.xxl),
              Expanded(
                flex: 85,
                child: Center(child: _BigCta(fullWidth: false)),
              ),
            ],
          ),
        ),
      );
    }

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        _HeroBadge(),
        SizedBox(height: AppSpacing.sm),
        _HeroTitle(),
        SizedBox(height: AppSpacing.xs),
        _HeroSubtitle(),
        SizedBox(height: AppSpacing.md),
        _BigCta(fullWidth: true),
        SizedBox(height: AppSpacing.md),
        _SearchCard(showParcelTab: true),
      ],
    );
  }
}

class _HeroGradient extends StatelessWidget {
  const _HeroGradient();

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.9, -0.4),
          end: Alignment(1, 0.4),
          colors: [Color(0xF01B2A4A), Color(0xD11B2A4A), Color(0x6B1B2A4A)],
          stops: [0, 0.45, 1],
        ),
      ),
    );
  }
}

class _HeroBadge extends StatelessWidget {
  const _HeroBadge();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xxs + 1,
        ),
        decoration: BoxDecoration(
          color: AppColors.white.withValues(alpha: 0.14),
          borderRadius: AppRadii.brPill,
        ),
        child: Text(
          context.l10n.homeHeroBadge,
          style: AppTypography.sans(
            size: 12,
            weight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

class _HeroTitle extends StatelessWidget {
  const _HeroTitle();

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    return Text(
      context.l10n.homeHeroTitle,
      style: AppTypography.serif(
        size: isDesktop ? 40 : 26,
        weight: FontWeight.w600,
        color: AppColors.white,
        height: 1.16,
      ),
    );
  }
}

class _HeroSubtitle extends StatelessWidget {
  const _HeroSubtitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.homeHeroSubtitle,
      style: AppTypography.sans(
        size: 15,
        height: 1.55,
        color: AppColors.primary100,
      ),
    );
  }
}

/// Carte blanche contenant le module de recherche.
class _SearchCard extends StatelessWidget {
  const _SearchCard({this.showParcelTab = false});

  /// Onglets Voyage / Colis en tête (mobile), le second menant au suivi.
  final bool showParcelTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brLg,
        boxShadow: AppShadows.elevated,
      ),
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showParcelTab) ...[
            const _SearchTabs(),
            const SizedBox(height: AppSpacing.sm),
          ],
          const HomeSearchForm(onLight: true),
        ],
      ),
    );
  }
}

class _SearchTabs extends StatelessWidget {
  const _SearchTabs();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      children: [
        Expanded(
          child: _Tab(
            label: l10n.searchTabTrip,
            icon: Icons.directions_bus_filled_outlined,
            selected: true,
            onTap: () {},
          ),
        ),
        const SizedBox(width: AppSpacing.xs),
        Expanded(
          child: _Tab(
            label: l10n.searchTabParcel,
            icon: Icons.inventory_2_outlined,
            selected: false,
            onTap: () => context.goNamed(AppRoutes.parcelTrackingName),
          ),
        ),
      ],
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: onTap,
      icon: Icon(icon, size: AppSizes.iconSm),
      label: Text(label),
      style: FilledButton.styleFrom(
        backgroundColor: selected ? AppColors.primary : AppColors.surfaceSubtle,
        foregroundColor: selected ? AppColors.onPrimary : AppColors.textStrong,
        minimumSize: const Size.fromHeight(40),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
    );
  }
}

/// Grand appel à l'action laiton — « Réservez votre place maintenant ».
class _BigCta extends StatelessWidget {
  const _BigCta({required this.fullWidth});

  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final button = Material(
      color: AppColors.accent,
      borderRadius: AppRadii.brLg,
      child: InkWell(
        onTap: () => context.goNamed(AppRoutes.searchResultsName),
        borderRadius: AppRadii.brLg,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
            vertical: fullWidth ? AppSpacing.md : AppSpacing.xxl,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l10n.homeHeroCtaBook,
                textAlign: TextAlign.center,
                style: AppTypography.sans(
                  size: fullWidth ? 16 : 20,
                  weight: FontWeight.w700,
                  color: AppColors.white,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                l10n.homeHeroCtaBookHint,
                textAlign: TextAlign.center,
                style: AppTypography.sans(
                  size: 13,
                  weight: FontWeight.w500,
                  color: AppColors.white.withValues(alpha: 0.85),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    if (fullWidth) return SizedBox(width: double.infinity, child: button);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: button,
    );
  }
}
