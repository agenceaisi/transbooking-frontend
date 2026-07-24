import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/fcfa.dart';
import '../../domain/search_criteria.dart';
import '../search_controllers.dart';
import 'home_search_form.dart';

/// Une compagnie proposée au filtre, dérivée des résultats courants.
typedef TripCompanyOption = ({int id, String name});

/// Panneau de filtres des résultats (barre latérale desktop, feuille mobile).
///
/// Le trajet (villes / date / passagers) réutilise [HomeSearchForm], qui écrit
/// dans [searchCriteriaProvider] et relance la recherche serveur. Période, prix
/// maximum, type de trajet, compagnie et note minimale affinent la liste **côté
/// client** via [searchRefinementProvider].
class ResultsFilterPanel extends ConsumerWidget {
  const ResultsFilterPanel({
    required this.priceCeiling,
    this.companies = const [],
    super.key,
  });

  /// Prix le plus élevé parmi les résultats — borne haute du curseur.
  final double? priceCeiling;

  /// Compagnies présentes dans les résultats (pour le filtre multi-sélection).
  final List<TripCompanyOption> companies;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final refinement = ref.watch(searchRefinementProvider);
    final refinementNotifier = ref.read(searchRefinementProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              l10n.filtersTitle,
              style: AppTypography.sans(size: 16, weight: FontWeight.w700),
            ),
            const Spacer(),
            TextButton(
              onPressed: refinementNotifier.reset,
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
                textStyle: AppTypography.sans(
                  size: 12.5,
                  weight: FontWeight.w600,
                ),
              ),
              child: Text(l10n.filtersReset),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        const _PanelLabel(),
        const HomeSearchForm(),
        const _Separator(),
        _FilterSectionLabel(l10n.filterPeriodLabel),
        const SizedBox(height: AppSpacing.xs),
        _PeriodChips(
          selected: refinement.period,
          onSelected: refinementNotifier.setPeriod,
        ),
        const _Separator(),
        _FilterSectionLabel(l10n.filterStopTypeLabel),
        const SizedBox(height: AppSpacing.xs),
        _StopTypeChips(
          selected: refinement.stopFilter,
          onSelected: refinementNotifier.setStopFilter,
        ),
        if (priceCeiling != null && priceCeiling! > 0) ...[
          const _Separator(),
          _MaxPriceSlider(
            ceiling: priceCeiling!,
            value: refinement.maxPrice,
            onChanged: refinementNotifier.setMaxPrice,
          ),
        ],
        if (companies.isNotEmpty) ...[
          const _Separator(),
          _FilterSectionLabel(l10n.filterCompanyLabel),
          const SizedBox(height: AppSpacing.xs),
          _CompanyChecklist(
            companies: companies,
            selected: refinement.companyIds,
            onToggle: refinementNotifier.toggleCompany,
          ),
        ],
        const _Separator(),
        _FilterSectionLabel(l10n.filterMinRatingLabel),
        const SizedBox(height: AppSpacing.xs),
        _MinRatingChips(
          selected: refinement.minRating,
          onSelected: refinementNotifier.setMinRating,
        ),
      ],
    );
  }
}

/// Intitulé du bloc « Trajet » au-dessus du module réutilisé.
class _PanelLabel extends StatelessWidget {
  const _PanelLabel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: _FilterSectionLabel(context.l10n.filterRouteLabel),
    );
  }
}

class _FilterSectionLabel extends StatelessWidget {
  const _FilterSectionLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: AppTypography.sans(
        size: 11.5,
        weight: FontWeight.w600,
        letterSpacing: 0.3,
        color: AppColors.textTertiary,
      ),
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
      child: Divider(height: 1, color: AppColors.borderSoft),
    );
  }
}

class _PeriodChips extends StatelessWidget {
  const _PeriodChips({required this.selected, required this.onSelected});

  final DeparturePeriod selected;
  final ValueChanged<DeparturePeriod> onSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final labels = {
      DeparturePeriod.all: l10n.periodAll,
      DeparturePeriod.morning: l10n.periodMorning,
      DeparturePeriod.afternoon: l10n.periodAfternoon,
      DeparturePeriod.evening: l10n.periodEvening,
    };

    return Wrap(
      spacing: AppSpacing.xs,
      runSpacing: AppSpacing.xs,
      children: [
        for (final entry in labels.entries)
          _ChoiceChip(
            label: entry.value,
            selected: entry.key == selected,
            onTap: () => onSelected(entry.key),
          ),
      ],
    );
  }
}

/// Type de trajet : Tous / Direct / Avec escale.
class _StopTypeChips extends StatelessWidget {
  const _StopTypeChips({required this.selected, required this.onSelected});

  final TripStopFilter selected;
  final ValueChanged<TripStopFilter> onSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final labels = {
      TripStopFilter.all: l10n.stopTypeAll,
      TripStopFilter.direct: l10n.stopTypeDirect,
      TripStopFilter.withStops: l10n.stopTypeWithStops,
    };

    return Wrap(
      spacing: AppSpacing.xs,
      runSpacing: AppSpacing.xs,
      children: [
        for (final entry in labels.entries)
          _ChoiceChip(
            label: entry.value,
            selected: entry.key == selected,
            onTap: () => onSelected(entry.key),
          ),
      ],
    );
  }
}

/// Note minimale de la compagnie : Toutes / 3★+ / 4★+ / 4,5★+.
class _MinRatingChips extends StatelessWidget {
  const _MinRatingChips({required this.selected, required this.onSelected});

  final num? selected;
  final ValueChanged<num?> onSelected;

  /// Paliers proposés ; `null` = sans minimum.
  static const List<num?> _options = [null, 3, 4, 4.5];

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Wrap(
      spacing: AppSpacing.xs,
      runSpacing: AppSpacing.xs,
      children: [
        for (final option in _options)
          _ChoiceChip(
            label: option == null
                ? l10n.filterMinRatingAny
                : l10n.filterMinRatingValue(_format(option)),
            selected: option == selected,
            onTap: () => onSelected(option),
          ),
      ],
    );
  }

  static String _format(num value) =>
      value.toString().replaceFirst('.', ',');
}

/// Compagnies présentes dans les résultats, en cases à cocher multi-sélection.
class _CompanyChecklist extends StatelessWidget {
  const _CompanyChecklist({
    required this.companies,
    required this.selected,
    required this.onToggle,
  });

  final List<TripCompanyOption> companies;
  final Set<int> selected;
  final ValueChanged<int> onToggle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final company in companies)
          _CompanyCheckRow(
            label: company.name,
            checked: selected.contains(company.id),
            onTap: () => onToggle(company.id),
          ),
      ],
    );
  }
}

class _CompanyCheckRow extends StatelessWidget {
  const _CompanyCheckRow({
    required this.label,
    required this.checked,
    required this.onTap,
  });

  final String label;
  final bool checked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brSm,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
        child: Row(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: checked ? AppColors.primary : AppColors.surface,
                border: Border.all(
                  color: checked ? AppColors.primary : AppColors.borderStrong,
                  width: 2,
                ),
                borderRadius: AppRadii.brSm,
              ),
              child: checked
                  ? const Icon(
                      Icons.check,
                      size: 12,
                      color: AppColors.onPrimary,
                    )
                  : null,
            ),
            const SizedBox(width: AppSpacing.xs + 1),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.sans(
                  size: 13.5,
                  weight: FontWeight.w500,
                  color: AppColors.textStrong,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChoiceChip extends StatelessWidget {
  const _ChoiceChip({
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

class _MaxPriceSlider extends StatelessWidget {
  const _MaxPriceSlider({
    required this.ceiling,
    required this.value,
    required this.onChanged,
  });

  final double ceiling;
  final num? value;
  final ValueChanged<num?> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final current = (value ?? ceiling).toDouble().clamp(0, ceiling).toDouble();
    final atCeiling = value == null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: _FilterSectionLabel(l10n.filterMaxPriceLabel)),
            Text(
              atCeiling
                  ? l10n.filterMaxPriceAny
                  : l10n.filterMaxPriceValue(Fcfa.formatNum(current)),
              style: AppTypography.sans(
                size: 13,
                weight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        Slider(
          value: current,
          min: 0,
          max: ceiling,
          divisions: 20,
          activeColor: AppColors.primary,
          onChanged: (raw) =>
              onChanged(raw >= ceiling ? null : raw.roundToDouble()),
        ),
      ],
    );
  }
}
