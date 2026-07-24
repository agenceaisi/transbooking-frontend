import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/perforated_divider.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/home_testimonial.dart';
import '../public_providers.dart';
import '../widgets/company_card.dart';
import '../widgets/home_hero.dart';
import '../widgets/public_footer.dart';
import '../widgets/public_nav.dart';
import '../widgets/public_page_scaffold.dart';
import '../widgets/section_heading.dart';
import '../widgets/testimonial_card.dart';

/// Page d'accueil publique — porte d'entrée du site.
///
/// Recrée la maquette « Accueil » : hero avec module de recherche, compagnies
/// partenaires, « Comment ça marche », témoignages, appel à la création de
/// compte, pied de page. Desktop et mobile partagent la même composition, la
/// mise en page s'adaptant au point de rupture.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PublicPageScaffold(
      current: PublicNavDestination.home,
      body: _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    final divider = PerforatedDivider(
      color: AppColors.borderStrong,
      padding: EdgeInsets.symmetric(
        vertical: isDesktop ? AppSpacing.lg : AppSpacing.md,
      ),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHero(isDesktop: isDesktop),
          divider,
          const _Section(
            background: AppColors.surface,
            child: _CompaniesSection(),
          ),
          divider,
          const _Section(
            background: AppColors.surfaceSubtle,
            child: _HowItWorksSection(),
          ),
          divider,
          const _Section(
            background: AppColors.surface,
            child: _TestimonialsSection(),
          ),
          const _Section(
            background: AppColors.surface,
            child: _CreateAccountCta(),
          ),
          PublicFooter(
            onNavigate: (destination) => context.goNamed(destination.routeName),
          ),
        ],
      ),
    );
  }
}

/// Conteneur d'une section : fond plein + marges responsive + largeur bornée.
class _Section extends StatelessWidget {
  const _Section({required this.background, required this.child});

  final Color background;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    return ColoredBox(
      color: background,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isDesktop ? AppSpacing.xxxl : AppSpacing.md,
          vertical: isDesktop ? AppSpacing.xxxl : AppSpacing.xl,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1180),
            child: child,
          ),
        ),
      ),
    );
  }
}

/// Grille des compagnies partenaires.
class _CompaniesSection extends ConsumerWidget {
  const _CompaniesSection();

  /// Teintes de monogramme, en rotation d'une carte à l'autre.
  static const List<Color> _tints = [
    AppColors.primary700,
    AppColors.primary500,
    AppColors.accent500,
    AppColors.primary900,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final companies = ref.watch(partnerCompaniesProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          eyebrow: l10n.homeCompaniesEyebrow,
          title: l10n.homeCompaniesTitle,
        ),
        const SizedBox(height: AppSpacing.xl),
        companies.when(
          loading: () => const _CardGrid(
            children: [
              _CardSkeleton(),
              _CardSkeleton(),
              _CardSkeleton(),
              _CardSkeleton(),
            ],
          ),
          error: (_, _) => ErrorState(
            onRetry: () => ref.invalidate(partnerCompaniesProvider),
          ),
          data: (items) => items.isEmpty
              ? EmptyState(message: l10n.homeCompaniesEmpty)
              : _CardGrid(
                  children: [
                    for (final (index, company) in items.indexed)
                      CompanyCard(
                        company: company,
                        tint: _tints[index % _tints.length],
                        onTap: () => context.goNamed(
                          AppRoutes.companyName,
                          pathParameters: {'id': '${company.id}'},
                        ),
                      ),
                  ],
                ),
        ),
      ],
    );
  }
}

/// Grille responsive de cartes — colonnes selon la largeur.
class _CardGrid extends StatelessWidget {
  const _CardGrid({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final columns = width >= AppBreakpoints.desktop
        ? 4
        : width >= 640
        ? 3
        : 2;

    return LayoutBuilder(
      builder: (context, constraints) {
        const gap = AppSpacing.sm;
        final itemWidth =
            (constraints.maxWidth - gap * (columns - 1)) / columns;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (final child in children)
              SizedBox(width: itemWidth, child: child),
          ],
        );
      },
    );
  }
}

class _CardSkeleton extends StatelessWidget {
  const _CardSkeleton();

  @override
  Widget build(BuildContext context) {
    return const LoadingSkeleton(height: 118, borderRadius: AppRadii.brCard);
  }
}

/// « Comment ça marche » — quatre étapes.
class _HowItWorksSection extends StatelessWidget {
  const _HowItWorksSection();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final steps = _steps(l10n);

    return Column(
      children: [
        SectionHeading(
          eyebrow: l10n.homeHowEyebrow,
          title: l10n.homeHowTitle,
          centered: true,
        ),
        const SizedBox(height: AppSpacing.xl),
        _CardGrid(children: [for (final step in steps) _StepCard(step: step)]),
      ],
    );
  }

  List<_Step> _steps(AppLocalizations l10n) => [
    _Step(
      '1',
      l10n.homeStep1Title,
      l10n.homeStep1Body,
      AppColors.primary100,
      AppColors.primary900,
    ),
    _Step(
      '2',
      l10n.homeStep2Title,
      l10n.homeStep2Body,
      AppColors.primary100,
      AppColors.primary900,
    ),
    _Step(
      '3',
      l10n.homeStep3Title,
      l10n.homeStep3Body,
      AppStatusColors.warning.background,
      AppStatusColors.warning.foreground,
    ),
    _Step(
      '4',
      l10n.homeStep4Title,
      l10n.homeStep4Body,
      AppStatusColors.success.background,
      AppStatusColors.success.foreground,
    ),
  ];
}

class _Step {
  const _Step(this.number, this.title, this.body, this.badgeBg, this.badgeFg);

  final String number;
  final String title;
  final String body;
  final Color badgeBg;
  final Color badgeFg;
}

class _StepCard extends StatelessWidget {
  const _StepCard({required this.step});

  final _Step step;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: step.badgeBg,
              borderRadius: AppRadii.brLg,
            ),
            child: Text(
              step.number,
              style: AppTypography.sans(
                size: 18,
                weight: FontWeight.w800,
                color: step.badgeFg,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            step.title,
            style: AppTypography.sans(size: 16.5, weight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            step.body,
            style: AppTypography.sans(
              size: 13.5,
              height: 1.55,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

/// Section témoignages.
class _TestimonialsSection extends ConsumerWidget {
  const _TestimonialsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final testimonials = ref.watch(testimonialsProvider);

    return Column(
      children: [
        SectionHeading(
          eyebrow: l10n.homeTestimonialsEyebrow,
          title: l10n.homeTestimonialsTitle,
          centered: true,
        ),
        const SizedBox(height: AppSpacing.xl),
        testimonials.when(
          loading: () => const _CardGrid(
            children: [_CardSkeleton(), _CardSkeleton(), _CardSkeleton()],
          ),
          error: (_, _) =>
              ErrorState(onRetry: () => ref.invalidate(testimonialsProvider)),
          data: (items) => items.isEmpty
              ? EmptyState(message: l10n.homeTestimonialsEmpty)
              : _TestimonialGrid(testimonials: items),
        ),
      ],
    );
  }
}

class _TestimonialGrid extends StatelessWidget {
  const _TestimonialGrid({required this.testimonials});

  final List<HomeTestimonial> testimonials;

  @override
  Widget build(BuildContext context) {
    final columns = AppBreakpoints.isDesktop(MediaQuery.sizeOf(context).width)
        ? 3
        : 1;

    return LayoutBuilder(
      builder: (context, constraints) {
        const gap = AppSpacing.md;
        final itemWidth =
            (constraints.maxWidth - gap * (columns - 1)) / columns;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (final testimonial in testimonials.take(6))
              SizedBox(
                width: itemWidth,
                child: TestimonialCard(testimonial: testimonial),
              ),
          ],
        );
      },
    );
  }
}

/// Encart d'appel à la création de compte — dégradé indigo radial.
class _CreateAccountCta extends StatelessWidget {
  const _CreateAccountCta();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );

    final title = Text(
      l10n.homeCtaTitle,
      style: AppTypography.serif(
        size: isDesktop ? 28 : 21,
        weight: FontWeight.w800,
        color: AppColors.white,
        height: 1.2,
      ),
    );
    final body = Text(
      l10n.homeCtaBody,
      style: AppTypography.sans(
        size: 15,
        height: 1.55,
        color: AppColors.primary100,
      ),
    );
    final buttons = Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: [
        FilledButton(
          onPressed: () => context.goNamed(AppRoutes.registerName),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.accent,
            foregroundColor: AppColors.white,
            minimumSize: const Size(0, AppSizes.control),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brLg),
            textStyle: AppTextStyles.button,
          ),
          child: Text(l10n.homeCtaCreate),
        ),
        OutlinedButton(
          onPressed: () => context.goNamed(AppRoutes.registerName),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.white,
            minimumSize: const Size(0, AppSizes.control),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            side: BorderSide(color: AppColors.white.withValues(alpha: 0.5)),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brLg),
            textStyle: AppTextStyles.button,
          ),
          child: Text(l10n.homeCtaCompany),
        ),
      ],
    );

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0.8, -1),
          radius: 1.4,
          colors: [
            AppColors.primary500,
            AppColors.primary700,
            AppColors.primary900,
          ],
          stops: [0, 0.55, 1],
        ),
        borderRadius: AppRadii.brXl,
      ),
      padding: EdgeInsets.all(isDesktop ? AppSpacing.xxl : AppSpacing.xl),
      child: isDesktop
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title,
                      const SizedBox(height: AppSpacing.xs),
                      body,
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacing.xl),
                buttons,
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                const SizedBox(height: AppSpacing.xs),
                body,
                const SizedBox(height: AppSpacing.lg),
                buttons,
              ],
            ),
    );
  }
}
