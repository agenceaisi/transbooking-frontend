import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/search_criteria.dart';
import '../../domain/trip_result.dart';
import '../search_controllers.dart';
import '../search_refine.dart';
import '../widgets/public_nav.dart';
import '../widgets/public_page_scaffold.dart';
import '../widgets/results_filter_panel.dart';
import '../widgets/trip_result_card.dart';

/// Écran des résultats de recherche de trajets.
///
/// Le serveur filtre sur les villes / date / passagers ([searchCriteriaProvider]) ;
/// la période, le prix maximum et le tri affinent la liste côté client. Les
/// cartes n'affichent que les champs exposés par l'API (cf. [TripResult]).
class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PublicPageScaffold(
      current: PublicNavDestination.search,
      body: _ResultsBody(),
    );
  }
}

class _ResultsBody extends ConsumerWidget {
  const _ResultsBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );
    final results = ref.watch(searchResultsProvider);
    final refinement = ref.watch(searchRefinementProvider);

    // Borne haute du curseur de prix : le tarif le plus élevé des résultats
    // bruts (avant affinage), pour ne pas exclure d'emblée des trajets.
    final rawTrips = results.value ?? const <TripResult>[];
    final priceCeiling = _priceCeiling(rawTrips);
    final companies = _companyOptions(rawTrips);
    final visible = refineTrips(rawTrips, refinement);

    if (isDesktop) {
      return _DesktopLayout(
        results: results,
        visible: visible,
        priceCeiling: priceCeiling,
        companies: companies,
      );
    }
    return _MobileLayout(
      results: results,
      visible: visible,
      priceCeiling: priceCeiling,
      companies: companies,
    );
  }

  static double? _priceCeiling(List<TripResult> trips) {
    double? ceiling;
    for (final trip in trips) {
      final value = double.tryParse(trip.price);
      if (value != null && (ceiling == null || value > ceiling)) {
        ceiling = value;
      }
    }
    return ceiling;
  }

  /// Compagnies distinctes présentes dans les résultats, triées par nom, pour
  /// alimenter le filtre par compagnie (dérivé, jamais inventé).
  static List<TripCompanyOption> _companyOptions(List<TripResult> trips) {
    final byId = <int, String>{};
    for (final trip in trips) {
      if (trip.companyName.isNotEmpty) byId[trip.company] = trip.companyName;
    }
    final options = byId.entries
        .map((e) => (id: e.key, name: e.value))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));
    return options;
  }
}

// ── Disposition desktop ──────────────────────────────────────────────────────
class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({
    required this.results,
    required this.visible,
    required this.priceCeiling,
    required this.companies,
  });

  final AsyncValue<List<TripResult>> results;
  final List<TripResult> visible;
  final double? priceCeiling;
  final List<TripCompanyOption> companies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xxl,
        vertical: AppSpacing.xl,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 288,
            child: SingleChildScrollView(
              child: _Card(
                child: ResultsFilterPanel(
                  priceCeiling: priceCeiling,
                  companies: companies,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ResultsHeader(count: visible.length, showSort: true),
                const SizedBox(height: AppSpacing.md),
                Expanded(
                  child: _ResultsContent(
                    results: results,
                    visible: visible,
                    isCompact: false,
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

// ── Disposition mobile ───────────────────────────────────────────────────────
class _MobileLayout extends StatelessWidget {
  const _MobileLayout({
    required this.results,
    required this.visible,
    required this.priceCeiling,
    required this.companies,
  });

  final AsyncValue<List<TripResult>> results;
  final List<TripResult> visible;
  final double? priceCeiling;
  final List<TripCompanyOption> companies;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _RecapBar(),
        _MobileToolbar(priceCeiling: priceCeiling, companies: companies),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.sm,
              AppSpacing.md,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ResultsCount(count: visible.length),
                const SizedBox(height: AppSpacing.xs),
                Expanded(
                  child: _ResultsContent(
                    results: results,
                    visible: visible,
                    isCompact: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Rappel du trajet recherché + bouton « Modifier » (retour à l'accueil).
class _RecapBar extends ConsumerWidget {
  const _RecapBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final criteria = ref.watch(searchCriteriaProvider);

    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        AppSpacing.xs,
        AppSpacing.md,
        AppSpacing.sm,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              _routeLabel(l10n, criteria),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.sans(size: 14, weight: FontWeight.w700),
            ),
          ),
          TextButton(
            onPressed: () => context.goNamed(AppRoutes.homeName),
            child: Text(l10n.resultsModify),
          ),
        ],
      ),
    );
  }
}

/// Barre d'outils mobile : bouton Filtres (badge si actif) + tri.
class _MobileToolbar extends ConsumerWidget {
  const _MobileToolbar({required this.priceCeiling, required this.companies});

  final double? priceCeiling;
  final List<TripCompanyOption> companies;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final activeCount = ref.watch(searchRefinementProvider).activeCount;

    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        0,
        AppSpacing.md,
        AppSpacing.sm,
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () => _openFilters(context, priceCeiling, companies),
              icon: const Icon(Icons.tune, size: AppSizes.iconSm),
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(l10n.resultsFiltersButton),
                  if (activeCount > 0) ...[
                    const SizedBox(width: AppSpacing.xs),
                    _CountBadge(count: activeCount),
                  ],
                ],
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.textStrong,
                minimumSize: const Size.fromHeight(AppSizes.control),
                side: const BorderSide(color: AppColors.borderStrong),
                shape: const RoundedRectangleBorder(
                  borderRadius: AppRadii.brMd,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.xs),
          const Expanded(child: _SortControl(segmented: false)),
        ],
      ),
    );
  }

  void _openFilters(
    BuildContext context,
    double? priceCeiling,
    List<TripCompanyOption> companies,
  ) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.surface,
      builder: (_) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.85,
        maxChildSize: 0.95,
        builder: (context, controller) => SingleChildScrollView(
          controller: controller,
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ResultsFilterPanel(
                priceCeiling: priceCeiling,
                companies: companies,
              ),
              const SizedBox(height: AppSpacing.md),
              FilledButton(
                onPressed: () => Navigator.of(context).pop(),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.onPrimary,
                  minimumSize: const Size.fromHeight(AppSizes.control),
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppRadii.brMd,
                  ),
                  textStyle: AppTextStyles.button,
                ),
                child: Text(context.l10n.actionClose),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  const _CountBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs,
        vertical: 1,
      ),
      decoration: const BoxDecoration(
        color: AppColors.accent,
        borderRadius: AppRadii.brPill,
      ),
      child: Text(
        '$count',
        style: AppTypography.sans(
          size: 10,
          weight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );
  }
}

/// En-tête desktop : nombre de résultats + tri.
class _ResultsHeader extends StatelessWidget {
  const _ResultsHeader({required this.count, required this.showSort});

  final int count;
  final bool showSort;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: _ResultsCount(count: count)),
        if (showSort) ...[
          Text(
            context.l10n.resultsSortLabel,
            style: AppTypography.sans(
              size: 12.5,
              color: AppColors.textTertiary,
            ),
          ),
          const SizedBox(width: AppSpacing.xs),
          const _SortControl(segmented: true),
        ],
      ],
    );
  }
}

class _ResultsCount extends StatelessWidget {
  const _ResultsCount({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.resultsTitle(count),
      style: AppTypography.sans(size: 18, weight: FontWeight.w700),
    );
  }
}

/// Contrôle de tri — segmenté (desktop) ou menu déroulant (mobile).
class _SortControl extends ConsumerWidget {
  const _SortControl({required this.segmented});

  final bool segmented;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final sort = ref.watch(searchRefinementProvider.select((r) => r.sort));
    final notifier = ref.read(searchRefinementProvider.notifier);
    final labels = {
      TripSort.price: l10n.resultsSortPrice,
      TripSort.departure: l10n.resultsSortDeparture,
      TripSort.duration: l10n.resultsSortDuration,
    };

    if (!segmented) {
      return DropdownButtonFormField<TripSort>(
        initialValue: sort,
        isExpanded: true,
        icon: const Icon(Icons.expand_more, size: AppSizes.iconSm),
        style: AppTypography.sans(size: 13.5, weight: FontWeight.w600),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.xs + 2,
          ),
        ),
        items: [
          for (final entry in labels.entries)
            DropdownMenuItem(value: entry.key, child: Text(entry.value)),
        ],
        onChanged: (value) {
          if (value != null) notifier.setSort(value);
        },
      );
    }

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brMd,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final entry in labels.entries)
            _SortSegment(
              label: entry.value,
              selected: entry.key == sort,
              onTap: () => notifier.setSort(entry.key),
            ),
        ],
      ),
    );
  }
}

class _SortSegment extends StatelessWidget {
  const _SortSegment({
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
      color: selected ? AppColors.primary : Colors.transparent,
      borderRadius: AppRadii.brSm,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brSm,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.xs,
          ),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 12.5,
              weight: FontWeight.w600,
              color: selected ? AppColors.onPrimary : AppColors.textStrong,
            ),
          ),
        ),
      ),
    );
  }
}

/// États de la liste : chargement, erreur, vide, résultats.
class _ResultsContent extends ConsumerWidget {
  const _ResultsContent({
    required this.results,
    required this.visible,
    required this.isCompact,
  });

  final AsyncValue<List<TripResult>> results;
  final List<TripResult> visible;
  final bool isCompact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (results) {
      AsyncValue(hasValue: true) => _list(context, ref),
      AsyncValue(:final error?) => ErrorState(
        failure: error is Failure ? error : null,
        onRetry: () => ref.invalidate(searchResultsProvider),
      ),
      _ => const _ResultsLoading(),
    };
  }

  Widget _list(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    if (visible.isEmpty) {
      return EmptyState(
        icon: Icons.search_off,
        title: l10n.resultsEmptyTitle,
        message: l10n.resultsEmptyMessage,
        actionLabel: l10n.resultsEmptyAction,
        onAction: () => ref.read(searchRefinementProvider.notifier).reset(),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.only(bottom: AppSpacing.xl),
      itemCount: visible.length,
      separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.sm),
      itemBuilder: (context, index) {
        final trip = visible[index];
        return TripResultCard(
          trip: trip,
          isCompact: isCompact,
          onBook: trip.isBookable ? () => _book(context, trip.id) : null,
        );
      },
    );
  }

  /// Ouvre la réservation ; si le voyageur n'est pas connecté, les gardes du
  /// routeur le renvoient d'abord vers la connexion.
  void _book(BuildContext context, int tripId) {
    context.goNamed(
      AppRoutes.travelerBookingName,
      pathParameters: {'tripId': '$tripId'},
    );
  }
}

class _ResultsLoading extends StatelessWidget {
  const _ResultsLoading();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: AppSpacing.xl),
      itemCount: 5,
      separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.sm),
      itemBuilder: (_, _) =>
          const LoadingSkeleton(height: 108, borderRadius: AppRadii.brCard),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: child,
    );
  }
}

/// Rappel du trajet en toutes lettres.
String _routeLabel(AppLocalizations l10n, SearchCriteria criteria) {
  final origin = criteria.originCityName;
  final destination = criteria.destCityName;
  if (origin != null && destination != null) {
    return l10n.resultsRoute(origin, destination);
  }
  return l10n.resultsAllRoutes;
}
