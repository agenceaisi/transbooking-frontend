import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../domain/city_ref.dart';
import '../public_providers.dart';
import '../search_controllers.dart';

/// Module de recherche de trajet (départ / arrivée / date / passagers).
///
/// Écrit directement dans [searchCriteriaProvider] : la sélection est conservée
/// jusqu'à l'écran de résultats. Les villes viennent de `GET /cities/`.
class HomeSearchForm extends ConsumerWidget {
  const HomeSearchForm({this.onLight = false, super.key});

  /// Variante posée sur un fond clair (carte blanche du hero).
  final bool onLight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final criteria = ref.watch(searchCriteriaProvider);
    final cities = ref.watch(citiesProvider);
    final notifier = ref.read(searchCriteriaProvider.notifier);

    final cityList = cities.value ?? const <CityRef>[];
    final citiesLoading = cities.isLoading;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: _CityField(
                label: l10n.searchFieldFrom,
                cities: cityList,
                loading: citiesLoading,
                selectedId: criteria.originCityId,
                onChanged: notifier.setOrigin,
              ),
            ),
            _SwapButton(onTap: notifier.swap),
            Expanded(
              child: _CityField(
                label: l10n.searchFieldTo,
                cities: cityList,
                loading: citiesLoading,
                selectedId: criteria.destCityId,
                onChanged: notifier.setDestination,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: _DateField(
                date: criteria.date,
                onChanged: notifier.setDate,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              flex: 2,
              child: _PassengersField(
                value: criteria.passengers,
                onChanged: notifier.setPassengers,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        FilledButton(
          onPressed: () => _submit(context, ref),
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            minimumSize: const Size.fromHeight(AppSizes.control),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
            textStyle: AppTextStyles.button,
          ),
          child: Text(l10n.searchSubmit),
        ),
      ],
    );
  }

  void _submit(BuildContext context, WidgetRef ref) {
    final criteria = ref.read(searchCriteriaProvider);
    // Départ et arrivée identiques : l'API refuserait de toute façon un trajet
    // sans déplacement — on prévient avant l'appel.
    if (criteria.originCityId != null &&
        criteria.originCityId == criteria.destCityId) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(context.l10n.searchSameCityError)),
        );
      return;
    }
    context.goNamed(AppRoutes.searchResultsName);
  }
}

/// Étiquette de champ en petites capitales, comme la maquette.
class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xxs + 1),
      child: Text(
        text.toUpperCase(),
        style: AppTypography.sans(
          size: 11,
          weight: FontWeight.w600,
          letterSpacing: 0.4,
          color: AppColors.textTertiary,
        ),
      ),
    );
  }
}

/// Liste déroulante de villes.
class _CityField extends StatelessWidget {
  const _CityField({
    required this.label,
    required this.cities,
    required this.loading,
    required this.selectedId,
    required this.onChanged,
  });

  final String label;
  final List<CityRef> cities;
  final bool loading;
  final int? selectedId;
  final ValueChanged<CityRef?> onChanged;

  /// Ville d'une liste par identifiant, `null` si absente.
  static CityRef? _byId(List<CityRef> cities, int? id) {
    if (id == null) return null;
    for (final city in cities) {
      if (city.id == id) return city;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final selected = _byId(cities, selectedId);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(label),
        DropdownButtonFormField<int>(
          initialValue: selected?.id,
          isExpanded: true,
          icon: const Icon(Icons.expand_more, size: AppSizes.iconSm),
          hint: Text(
            loading ? '…' : context.l10n.searchCityPlaceholder,
            style: AppTypography.sans(size: 14, color: AppColors.textTertiary),
            overflow: TextOverflow.ellipsis,
          ),
          style: AppTypography.sans(size: 14, weight: FontWeight.w600),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppSpacing.sm,
              vertical: AppSpacing.xs + 2,
            ),
          ),
          items: [
            for (final city in cities)
              DropdownMenuItem(
                value: city.id,
                child: Text(city.name, overflow: TextOverflow.ellipsis),
              ),
          ],
          onChanged: cities.isEmpty
              ? null
              : (id) => onChanged(_byId(cities, id)),
        ),
      ],
    );
  }
}

/// Bouton d'inversion départ / arrivée.
class _SwapButton extends StatelessWidget {
  const _SwapButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xxs),
      child: IconButton(
        onPressed: onTap,
        tooltip: context.l10n.searchSwap,
        visualDensity: VisualDensity.compact,
        icon: const Icon(Icons.swap_horiz, color: AppColors.primary),
      ),
    );
  }
}

/// Sélecteur de date via le calendrier natif.
class _DateField extends StatelessWidget {
  const _DateField({required this.date, required this.onChanged});

  final DateTime? date;
  final ValueChanged<DateTime?> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final label = date == null
        ? l10n.searchDatePlaceholder
        : AppTimeFormat.fullDate(context, date!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(l10n.searchFieldDate),
        InkWell(
          onTap: () => _pickDate(context),
          borderRadius: AppRadii.brMd,
          child: InputDecorator(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.sm,
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_today_outlined,
                  size: AppSizes.iconSm,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(width: AppSpacing.xs),
                Expanded(
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.sans(
                      size: 13.5,
                      weight: FontWeight.w600,
                      color: date == null
                          ? AppColors.textTertiary
                          : AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    final now = DateTime.now();
    final initial = date ?? now;
    final picked = await showDatePicker(
      context: context,
      initialDate: initial.isBefore(now) ? now : initial,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );
    if (picked != null) onChanged(picked);
  }
}

/// Compteur de passagers (1 à 9).
class _PassengersField extends StatelessWidget {
  const _PassengersField({required this.value, required this.onChanged});

  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(context.l10n.searchFieldPassengers),
        Container(
          height: AppSizes.control,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xxs),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderStrong),
            borderRadius: AppRadii.brMd,
          ),
          child: Row(
            children: [
              _StepButton(
                icon: Icons.remove,
                onTap: value > 1 ? () => onChanged(value - 1) : null,
              ),
              Expanded(
                child: Text(
                  '$value',
                  textAlign: TextAlign.center,
                  style: AppTypography.sans(
                    size: 15,
                    weight: FontWeight.w700,
                    tabular: true,
                  ),
                ),
              ),
              _StepButton(
                icon: Icons.add,
                onTap: value < 9 ? () => onChanged(value + 1) : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _StepButton extends StatelessWidget {
  const _StepButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: IconButton(
        onPressed: onTap,
        padding: EdgeInsets.zero,
        iconSize: AppSizes.iconSm,
        style: IconButton.styleFrom(
          backgroundColor: AppColors.surfaceSubtle,
          foregroundColor: AppColors.primary,
          disabledForegroundColor: AppColors.textTertiary,
          shape: const RoundedRectangleBorder(borderRadius: AppRadii.brSm),
        ),
        icon: Icon(icon),
      ),
    );
  }
}
