import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/city_ref.dart';
import '../domain/search_criteria.dart';
import '../domain/trip_result.dart';
import 'public_providers.dart';

/// Critères de recherche courants (villes, date, passagers).
///
/// Source de vérité unique de la recherche : le module de l'accueil et l'écran
/// de résultats l'alimentent tous deux, et le provider de résultats l'observe.
final searchCriteriaProvider =
    NotifierProvider<SearchCriteriaController, SearchCriteria>(
      SearchCriteriaController.new,
    );

class SearchCriteriaController extends Notifier<SearchCriteria> {
  @override
  SearchCriteria build() => const SearchCriteria();

  /// Remplace l'ensemble des critères (arrivée sur l'écran de résultats,
  /// lien profond).
  void replace(SearchCriteria criteria) => state = criteria;

  void setOrigin(CityRef? city) => state = state.copyWith(
    originCityId: city?.id,
    originCityName: city?.name,
  );

  void setDestination(CityRef? city) =>
      state = state.copyWith(destCityId: city?.id, destCityName: city?.name);

  void setDate(DateTime? date) => state = state.copyWith(date: date);

  void setPassengers(int passengers) =>
      state = state.copyWith(passengers: passengers.clamp(1, 9));

  /// Inverse départ et arrivée.
  void swap() => state = state.copyWith(
    originCityId: state.destCityId,
    originCityName: state.destCityName,
    destCityId: state.originCityId,
    destCityName: state.originCityName,
  );
}

/// Résultats de la recherche serveur.
///
/// Recalculé automatiquement à chaque changement de critères. `autoDispose`
/// pour libérer la liste en quittant l'écran de résultats. L'affinage client
/// (période, prix, tri) s'applique en aval via `refineTrips`.
final searchResultsProvider = FutureProvider.autoDispose<List<TripResult>>((
  ref,
) {
  final criteria = ref.watch(searchCriteriaProvider);
  return ref.watch(publicRepositoryProvider).searchTrips(criteria);
});

/// Affinage client courant (période, prix maximum, tri).
final searchRefinementProvider =
    NotifierProvider.autoDispose<SearchRefinementController, SearchRefinement>(
      SearchRefinementController.new,
    );

class SearchRefinementController extends Notifier<SearchRefinement> {
  @override
  SearchRefinement build() => const SearchRefinement();

  void setPeriod(DeparturePeriod period) =>
      state = state.copyWith(period: period);

  void setMaxPrice(num? maxPrice) => state = state.copyWith(maxPrice: maxPrice);

  void setStopFilter(TripStopFilter filter) =>
      state = state.copyWith(stopFilter: filter);

  /// Ajoute ou retire une compagnie du filtre multi-sélection.
  void toggleCompany(int companyId) {
    final next = Set<int>.from(state.companyIds);
    if (!next.add(companyId)) next.remove(companyId);
    state = state.copyWith(companyIds: next);
  }

  void setMinRating(num? minRating) =>
      state = state.copyWith(minRating: minRating);

  void setSort(TripSort sort) => state = state.copyWith(sort: sort);

  /// Réinitialise tout l'affinage — bouton « Réinitialiser » de la maquette.
  void reset() => state = const SearchRefinement();
}
