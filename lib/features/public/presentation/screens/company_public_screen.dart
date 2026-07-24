import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/company_profile.dart';
import '../../domain/public_review.dart';
import '../public_providers.dart';
import '../widgets/company_logo_avatar.dart';
import '../widgets/public_footer.dart';
import '../widgets/public_nav.dart';
import '../widgets/public_page_scaffold.dart';
import '../widgets/star_rating.dart';

/// Fiche publique d'une compagnie.
///
/// `GET /public/companies/{id}/` expose désormais les **trajets desservis**
/// (`routes`) et la **répartition des notes** (`rating_breakdown` +
/// `reviews_count`, complément d'API 2026-07-23) : la section « Trajets
/// desservis » de la maquette est rétablie et la carte de note s'appuie sur
/// l'agrégat serveur (repli sur les avis de `GET /reviews/?company_id=`).
class CompanyPublicScreen extends StatelessWidget {
  const CompanyPublicScreen({required this.companyId, super.key});

  final int? companyId;

  @override
  Widget build(BuildContext context) {
    return PublicPageScaffold(
      current: PublicNavDestination.companies,
      body: companyId == null
          ? _MissingCompany()
          : _CompanyBody(companyId: companyId!),
    );
  }
}

class _MissingCompany extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ErrorState(
        message: context.l10n.failureNotFound,
        onRetry: () => context.goNamed(AppRoutes.homeName),
      ),
    );
  }
}

class _CompanyBody extends ConsumerWidget {
  const _CompanyBody({required this.companyId});

  final int companyId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(companyProfileProvider(companyId));

    return profile.when(
      loading: () => const _CompanyLoading(),
      error: (_, _) => Center(
        child: ErrorState(
          onRetry: () => ref.invalidate(companyProfileProvider(companyId)),
        ),
      ),
      data: (company) => _CompanyContent(company: company),
    );
  }
}

class _CompanyContent extends StatelessWidget {
  const _CompanyContent({required this.company});

  final CompanyProfile company;

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    final horizontal = isDesktop ? AppSpacing.xxl : AppSpacing.md;

    final main = _MainColumn(company: company);
    final sidebar = _Sidebar(company: company);

    return SingleChildScrollView(
      child: Column(
        children: [
          const _Banner(),
          Padding(
            padding: EdgeInsets.fromLTRB(
              horizontal,
              0,
              horizontal,
              AppSpacing.xl,
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1180),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Identity(company: company, isDesktop: isDesktop),
                    const SizedBox(height: AppSpacing.xl),
                    if (isDesktop)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: main),
                          const SizedBox(width: AppSpacing.xl),
                          SizedBox(width: 300, child: sidebar),
                        ],
                      )
                    else ...[
                      main,
                      const SizedBox(height: AppSpacing.xl),
                      sidebar,
                    ],
                  ],
                ),
              ),
            ),
          ),
          PublicFooter(
            onNavigate: (destination) => context.goNamed(destination.routeName),
          ),
        ],
      ),
    );
  }
}

/// Bandeau indigo décoratif en tête de fiche.
class _Banner extends StatelessWidget {
  const _Banner();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0.7, -1),
          radius: 1.5,
          colors: [
            AppColors.primary500,
            AppColors.primary700,
            AppColors.primary900,
          ],
          stops: [0, 0.5, 1],
        ),
      ),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => context.goNamed(AppRoutes.homeName),
            child: Text(
              context.l10n.publicNavCompanies,
              style: AppTypography.sans(
                size: 13,
                color: AppColors.onPrimaryMuted,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Identité de la compagnie : logo, nom, badge, note, ville, actions.
class _Identity extends StatelessWidget {
  const _Identity({required this.company, required this.isDesktop});

  final CompanyProfile company;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final logo = Transform.translate(
      offset: const Offset(0, -40),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadii.brXl,
        ),
        child: CompanyLogoAvatar(
          monogram: company.monogram,
          size: 84,
          fontSize: 30,
        ),
      ),
    );

    final identity = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.xs,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              company.name,
              style: AppTypography.serif(size: 26, weight: FontWeight.w700),
            ),
            _PartnerBadge(label: l10n.companyBadgePartner),
          ],
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          children: [
            if (company.rating != null) ...[
              StarRating(rating: company.rating, size: 16),
              const SizedBox(width: AppSpacing.xs),
              Text(
                _formatRating(company.rating!),
                style: AppTypography.sans(size: 14, weight: FontWeight.w700),
              ),
              const SizedBox(width: AppSpacing.sm),
            ],
            if (company.city != null && company.city!.trim().isNotEmpty)
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.place_outlined,
                      size: 15,
                      color: AppColors.textSecondary,
                    ),
                    const SizedBox(width: AppSpacing.xxs),
                    Flexible(
                      child: Text(
                        company.city!,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.sans(
                          size: 13.5,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );

    final actions = _Actions(company: company);

    if (isDesktop) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          logo,
          const SizedBox(width: AppSpacing.md),
          Expanded(child: identity),
          actions,
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        logo,
        identity,
        const SizedBox(height: AppSpacing.md),
        actions,
      ],
    );
  }

  static String _formatRating(double value) =>
      value.toStringAsFixed(1).replaceFirst('.', ',');
}

class _PartnerBadge extends StatelessWidget {
  const _PartnerBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    const palette = AppStatusColors.success;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xxs + 1,
      ),
      decoration: BoxDecoration(
        color: palette.background,
        borderRadius: AppRadii.brPill,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.verified_outlined, size: 14, color: palette.foreground),
          const SizedBox(width: AppSpacing.xxs),
          Text(
            label,
            style: AppTypography.sans(
              size: 12,
              weight: FontWeight.w600,
              color: palette.foreground,
            ),
          ),
        ],
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({required this.company});

  final CompanyProfile company;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.xs,
      children: [
        if (company.phone != null && company.phone!.trim().isNotEmpty)
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.call_outlined, size: AppSizes.iconSm),
            label: Text(l10n.companyContact),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.textStrong,
              side: const BorderSide(color: AppColors.borderStrong),
              shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
              textStyle: AppTextStyles.button,
            ),
          ),
        FilledButton(
          onPressed: () => context.goNamed(AppRoutes.searchResultsName),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
            textStyle: AppTextStyles.button,
          ),
          child: Text(l10n.companyBookTrip),
        ),
      ],
    );
  }
}

/// Colonne principale : à propos + avis.
class _MainColumn extends StatelessWidget {
  const _MainColumn({required this.company});

  final CompanyProfile company;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final description = company.description?.trim();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.companyAboutTitle,
          style: AppTypography.serif(size: 18, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          description == null || description.isEmpty
              ? l10n.companyNoDescription
              : description,
          style: AppTypography.sans(size: 15, height: 1.65),
        ),
        if (company.routes.isNotEmpty) ...[
          const SizedBox(height: AppSpacing.xl),
          _RoutesSection(routes: company.routes),
        ],
        const SizedBox(height: AppSpacing.xl),
        _ReviewsSection(companyId: company.id),
      ],
    );
  }
}

/// Section « Trajets desservis » — trajets actifs de la compagnie (`routes`).
class _RoutesSection extends StatelessWidget {
  const _RoutesSection({required this.routes});

  final List<CompanyRoute> routes;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.companyRoutesTitle,
          style: AppTypography.serif(size: 18, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.sm),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            border: Border.all(color: AppColors.border),
            borderRadius: AppRadii.brLg,
          ),
          child: Column(
            children: [
              for (var i = 0; i < routes.length; i++) ...[
                if (i > 0)
                  const Divider(height: 1, color: AppColors.borderSoft),
                _RouteRow(route: routes[i]),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _RouteRow extends StatelessWidget {
  const _RouteRow({required this.route});

  final CompanyRoute route;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final duration = route.durationMinutes;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm + 2,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.route_outlined,
            size: AppSizes.iconSm,
            color: AppColors.primary,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.companyRouteLabel(
                    route.originCityName,
                    route.destinationCityName,
                  ),
                  style: AppTypography.sans(size: 14, weight: FontWeight.w600),
                ),
                if (duration != null) ...[
                  const SizedBox(height: 1),
                  Text(
                    _durationLabel(l10n, duration),
                    style: AppTypography.sans(
                      size: 12,
                      color: AppColors.textTertiary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Text(
            l10n.companyRoutePrice(Fcfa.format(route.basePrice)),
            style: AppTypography.sans(
              size: 13.5,
              weight: FontWeight.w700,
              tabular: true,
            ),
          ),
        ],
      ),
    );
  }

  String _durationLabel(AppLocalizations l10n, int minutes) {
    final hours = minutes ~/ 60;
    final rest = (minutes % 60).toString().padLeft(2, '0');
    return l10n.tripDuration(hours, rest);
  }
}

/// Section des avis clients — liste + tri, alimentée par `reviews`.
class _ReviewsSection extends ConsumerStatefulWidget {
  const _ReviewsSection({required this.companyId});

  final int companyId;

  @override
  ConsumerState<_ReviewsSection> createState() => _ReviewsSectionState();
}

class _ReviewsSectionState extends ConsumerState<_ReviewsSection> {
  bool _byTopRated = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final reviews = ref.watch(companyReviewsProvider(widget.companyId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                l10n.companyReviewsTitle,
                style: AppTypography.serif(size: 18, weight: FontWeight.w700),
              ),
            ),
            _SortToggle(
              byTopRated: _byTopRated,
              onChanged: (value) => setState(() => _byTopRated = value),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        reviews.when(
          loading: () => LoadingSkeleton.lines(count: 4),
          error: (_, _) => ErrorState(
            onRetry: () =>
                ref.invalidate(companyReviewsProvider(widget.companyId)),
          ),
          data: (items) => items.isEmpty
              ? EmptyState(
                  icon: Icons.rate_review_outlined,
                  title: l10n.companyReviewsEmptyTitle,
                  message: l10n.companyReviewsEmptyMessage,
                )
              : Column(
                  children: [
                    for (final review in _sorted(items))
                      Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                        child: _ReviewTile(review: review),
                      ),
                  ],
                ),
        ),
      ],
    );
  }

  List<PublicReview> _sorted(List<PublicReview> items) {
    final sorted = [...items];
    sorted.sort(
      _byTopRated
          ? (a, b) => b.rating.compareTo(a.rating)
          : (a, b) => b.createdAt.compareTo(a.createdAt),
    );
    return sorted;
  }
}

class _SortToggle extends StatelessWidget {
  const _SortToggle({required this.byTopRated, required this.onChanged});

  final bool byTopRated;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Wrap(
      spacing: AppSpacing.xs,
      children: [
        _MiniToggle(
          label: l10n.companyReviewsSortRecent,
          selected: !byTopRated,
          onTap: () => onChanged(false),
        ),
        _MiniToggle(
          label: l10n.companyReviewsSortTop,
          selected: byTopRated,
          onTap: () => onChanged(true),
        ),
      ],
    );
  }
}

class _MiniToggle extends StatelessWidget {
  const _MiniToggle({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary50 : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.borderStrong,
            ),
            borderRadius: AppRadii.brMd,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.xs,
          ),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 12,
              weight: FontWeight.w600,
              color: selected ? AppColors.primary900 : AppColors.textStrong,
            ),
          ),
        ),
      ),
    );
  }
}

class _ReviewTile extends StatelessWidget {
  const _ReviewTile({required this.review});

  final PublicReview review;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brCard,
      ),
      padding: const EdgeInsets.all(AppSpacing.md + 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  review.author,
                  style: AppTypography.sans(size: 14, weight: FontWeight.w700),
                ),
              ),
              StarRating(rating: review.rating.toDouble(), size: 14),
            ],
          ),
          if (review.comment != null && review.comment!.trim().isNotEmpty) ...[
            const SizedBox(height: AppSpacing.xs),
            Text(
              review.comment!,
              style: AppTypography.sans(size: 14, height: 1.55),
            ),
          ],
          if (review.hasResponse) ...[
            const SizedBox(height: AppSpacing.sm),
            _Response(text: review.response!),
          ],
        ],
      ),
    );
  }
}

class _Response extends StatelessWidget {
  const _Response({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primary50,
        border: Border(left: BorderSide(color: AppColors.primary, width: 3)),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppRadii.card),
          bottomRight: Radius.circular(AppRadii.card),
        ),
      ),
      padding: const EdgeInsets.all(AppSpacing.sm),
      child: Text(
        text,
        style: AppTypography.sans(
          size: 13.5,
          height: 1.5,
          color: AppColors.primary900,
        ),
      ),
    );
  }
}

/// Barre latérale : contact + répartition des notes.
class _Sidebar extends ConsumerWidget {
  const _Sidebar({required this.company});

  final CompanyProfile company;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(companyReviewsProvider(company.id));
    return Column(
      children: [
        _ContactCard(company: company),
        const SizedBox(height: AppSpacing.md),
        _RatingCard(company: company, reviews: reviews.value ?? const []),
      ],
    );
  }
}

class _ContactCard extends StatelessWidget {
  const _ContactCard({required this.company});

  final CompanyProfile company;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final rows = <Widget>[
      if (company.phone != null && company.phone!.trim().isNotEmpty)
        _ContactRow(
          icon: Icons.call_outlined,
          label: l10n.companyContactPhone,
          value: company.phone!,
        ),
      if (company.email != null && company.email!.trim().isNotEmpty)
        _ContactRow(
          icon: Icons.mail_outline,
          label: l10n.companyContactEmail,
          value: company.email!,
        ),
      if (company.city != null && company.city!.trim().isNotEmpty)
        _ContactRow(
          icon: Icons.place_outlined,
          label: l10n.companyContactCity,
          value: company.city!,
        ),
    ];

    return _SidebarCard(
      title: l10n.companyContactTitle,
      child: rows.isEmpty
          ? Text(
              l10n.companyContactNone,
              style: AppTypography.sans(
                size: 13,
                color: AppColors.textTertiary,
              ),
            )
          : Column(children: rows),
    );
  }
}

class _ContactRow extends StatelessWidget {
  const _ContactRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary50,
              borderRadius: AppRadii.brMd,
            ),
            child: Icon(icon, size: AppSizes.iconSm, color: AppColors.primary),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTypography.sans(
                    size: 11.5,
                    color: AppColors.textTertiary,
                  ),
                ),
                Text(
                  value,
                  style: AppTypography.sans(
                    size: 13.5,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Note moyenne + répartition des notes.
///
/// Privilégie l'agrégat serveur (`rating_breakdown` + `reviews_count`, complet)
/// et se replie sur les avis de la 1ʳᵉ page tant qu'il est vide.
class _RatingCard extends StatelessWidget {
  const _RatingCard({required this.company, required this.reviews});

  final CompanyProfile company;
  final List<PublicReview> reviews;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final rating = company.rating;
    final distribution = company.ratingBreakdown.isNotEmpty
        ? _padded(company.ratingBreakdown)
        : _distribution(reviews);
    final total = company.reviewsCount ?? reviews.length;
    final sum = distribution.values.fold<int>(0, (a, b) => a + b);

    return _SidebarCard(
      title: l10n.companyRatingTitle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                rating == null ? '—' : _formatRating(rating),
                style: AppTypography.sans(
                  size: 34,
                  weight: FontWeight.w800,
                  tabular: true,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StarRating(rating: rating, size: 13),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      l10n.companyRatingBasedOn(total),
                      style: AppTypography.sans(
                        size: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (sum > 0) ...[
            const SizedBox(height: AppSpacing.md),
            for (var star = 5; star >= 1; star--)
              _RatingBar(star: star, fraction: distribution[star]! / sum),
          ],
        ],
      ),
    );
  }

  /// Complète une répartition serveur pour garantir les cinq clés 1→5.
  static Map<int, int> _padded(Map<int, int> breakdown) {
    return {for (var i = 1; i <= 5; i++) i: breakdown[i] ?? 0};
  }

  /// Nombre d'avis par note (1 à 5) — repli calculé depuis les avis chargés.
  static Map<int, int> _distribution(List<PublicReview> reviews) {
    final counts = {for (var i = 1; i <= 5; i++) i: 0};
    for (final review in reviews) {
      final clamped = review.rating.clamp(1, 5);
      counts[clamped] = (counts[clamped] ?? 0) + 1;
    }
    return counts;
  }

  static String _formatRating(double value) =>
      value.toStringAsFixed(1).replaceFirst('.', ',');
}

class _RatingBar extends StatelessWidget {
  const _RatingBar({required this.star, required this.fraction});

  final int star;
  final double fraction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
            width: 26,
            child: Text(
              '$star★',
              style: AppTypography.sans(
                size: 11,
                weight: FontWeight.w600,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: AppRadii.brPill,
              child: LinearProgressIndicator(
                value: fraction,
                minHeight: 7,
                backgroundColor: AppColors.track,
                valueColor: const AlwaysStoppedAnimation(AppColors.accent),
              ),
            ),
          ),
          SizedBox(
            width: 40,
            child: Text(
              '${(fraction * 100).round()}%',
              textAlign: TextAlign.right,
              style: AppTypography.sans(
                size: 11,
                color: AppColors.textTertiary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarCard extends StatelessWidget {
  const _SidebarCard({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.serif(size: 15, weight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.sm),
          child,
        ],
      ),
    );
  }
}

class _CompanyLoading extends StatelessWidget {
  const _CompanyLoading();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: const [
        LoadingSkeleton(height: 120, borderRadius: AppRadii.brLg),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 28, width: 220),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 160, borderRadius: AppRadii.brCard),
      ],
    );
  }
}
