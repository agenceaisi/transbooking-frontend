import '../domain/search_criteria.dart';
import '../domain/trip_result.dart';

/// Applique l'affinage **client** (période, prix maximum, tri) sur les résultats
/// renvoyés par le serveur.
///
/// Ces critères ne partent pas à l'API : la période se dérive de l'heure de
/// départ et le prix se compare au montant du voyage — deux données présentes
/// dans `TripRead`. Fonction pure, donc directement testable.
List<TripResult> refineTrips(
  List<TripResult> trips,
  SearchRefinement refinement,
) {
  final filtered = trips.where((trip) {
    if (!refinement.period.matches(trip.departureMinuteOfDay)) return false;
    final maxPrice = refinement.maxPrice;
    if (maxPrice != null && _priceValue(trip.price) > maxPrice) return false;
    if (!refinement.stopFilter.matches(isDirect: trip.isDirect)) return false;
    if (refinement.companyIds.isNotEmpty &&
        !refinement.companyIds.contains(trip.company)) {
      return false;
    }
    final minRating = refinement.minRating;
    if (minRating != null && (trip.companyRating ?? 0) < minRating) {
      return false;
    }
    return true;
  }).toList();

  filtered.sort(switch (refinement.sort) {
    TripSort.price => (a, b) => _priceValue(
      a.price,
    ).compareTo(_priceValue(b.price)),
    TripSort.departure => (a, b) => a.departureTime.compareTo(b.departureTime),
    TripSort.duration => _byDuration,
  });

  return filtered;
}

/// Montant numérique d'un prix décimal renvoyé en chaîne (« 8500.00 »).
double _priceValue(String price) => double.tryParse(price) ?? double.infinity;

/// Tri par durée croissante ; une durée inconnue passe en fin de liste.
int _byDuration(TripResult a, TripResult b) {
  final da = a.durationMinutes;
  final db = b.durationMinutes;
  if (da == null && db == null) return 0;
  if (da == null) return 1;
  if (db == null) return -1;
  return da.compareTo(db);
}
