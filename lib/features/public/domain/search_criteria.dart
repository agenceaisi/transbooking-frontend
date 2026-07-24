import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_criteria.freezed.dart';

/// Critères de recherche envoyés au serveur (`GET /trips/search/`).
///
/// Seuls ces champs déclenchent un appel réseau ; l'affinage (période, prix
/// maximum, tri) se fait côté client sur les résultats (cf. [SearchRefinement]).
/// Immutable et comparable : sert de dépendance stable au provider de recherche.
@freezed
abstract class SearchCriteria with _$SearchCriteria {
  const factory SearchCriteria({
    int? originCityId,
    String? originCityName,
    int? destCityId,
    String? destCityName,
    DateTime? date,
    @Default(1) int passengers,
  }) = _SearchCriteria;

  const SearchCriteria._();

  /// Date au format attendu par l'API (`YYYY-MM-DD`), en heure locale.
  String? get dateParam {
    final value = date;
    if (value == null) return null;
    final local = value.toLocal();
    final month = local.month.toString().padLeft(2, '0');
    final day = local.day.toString().padLeft(2, '0');
    return '${local.year}-$month-$day';
  }
}

/// Créneau de départ du filtre par période (dérivé côté client de l'heure de
/// départ, puisque l'API ne le renvoie pas).
enum DeparturePeriod {
  all,
  morning, // 05:00–11:59
  afternoon, // 12:00–16:59
  evening; // 17:00–22:00

  /// Vrai si [minuteOfDay] tombe dans le créneau.
  bool matches(int minuteOfDay) => switch (this) {
    DeparturePeriod.all => true,
    DeparturePeriod.morning => minuteOfDay >= 300 && minuteOfDay <= 719,
    DeparturePeriod.afternoon => minuteOfDay >= 720 && minuteOfDay <= 1019,
    DeparturePeriod.evening => minuteOfDay >= 1020 && minuteOfDay <= 1320,
  };
}

/// Ordre de tri des résultats.
enum TripSort { price, departure, duration }

/// Filtre « type de trajet » de la maquette : tous, direct uniquement, ou avec
/// escale. S'appuie sur `TripResult.isDirect`.
enum TripStopFilter {
  all,
  direct,
  withStops;

  /// Vrai si un voyage direct/avec escale correspond au filtre choisi.
  bool matches({required bool isDirect}) => switch (this) {
    TripStopFilter.all => true,
    TripStopFilter.direct => isDirect,
    TripStopFilter.withStops => !isDirect,
  };
}

/// Affinage appliqué côté client sur les résultats du serveur.
@freezed
abstract class SearchRefinement with _$SearchRefinement {
  const factory SearchRefinement({
    @Default(DeparturePeriod.all) DeparturePeriod period,

    /// Prix maximum en FCFA ; `null` = pas de plafond.
    num? maxPrice,

    /// Type de trajet (direct / avec escale).
    @Default(TripStopFilter.all) TripStopFilter stopFilter,

    /// Compagnies retenues (id) ; vide = toutes.
    @Default(<int>{}) Set<int> companyIds,

    /// Note minimale de la compagnie (0–5) ; `null` = sans minimum.
    num? minRating,
    @Default(TripSort.price) TripSort sort,
  }) = _SearchRefinement;

  const SearchRefinement._();

  /// Nombre de filtres actifs (hors tri), pour le badge du bouton « Filtres ».
  int get activeCount =>
      (period != DeparturePeriod.all ? 1 : 0) +
      (maxPrice != null ? 1 : 0) +
      (stopFilter != TripStopFilter.all ? 1 : 0) +
      (companyIds.isNotEmpty ? 1 : 0) +
      (minRating != null ? 1 : 0);
}
