import 'city_ref.dart';
import 'company_profile.dart';
import 'company_summary.dart';
import 'home_testimonial.dart';
import 'parcel_tracking.dart';
import 'public_review.dart';
import 'search_criteria.dart';
import 'trip_result.dart';

/// Accès aux données publiques (non authentifiées).
///
/// Seul point d'entrée de la présentation : elle ignore tout de dio (CLAUDE.md
/// §3). Toutes les méthodes lèvent une `Failure` en cas d'échec — jamais une
/// `DioException`.
abstract interface class PublicRepository {
  /// Villes desservies (`GET /cities/`, non paginé) — listes déroulantes.
  Future<List<CityRef>> cities();

  /// Compagnies partenaires actives (`GET /public/companies/`), première page.
  Future<List<CompanySummary>> partnerCompanies();

  /// Fiche publique détaillée (`GET /public/companies/{id}/`).
  Future<CompanyProfile> companyProfile(int id);

  /// Avis publics d'une compagnie (`GET /reviews/?company_id=`).
  Future<List<PublicReview>> companyReviews(int companyId);

  /// Témoignages mis en avant (`GET /public/testimonials/`).
  Future<List<HomeTestimonial>> testimonials();

  /// Recherche de voyages (`GET /trips/search/`).
  ///
  /// Seuls les critères serveur sont transmis ; l'affinage client se fait en
  /// aval sur la liste renvoyée.
  Future<List<TripResult>> searchTrips(SearchCriteria criteria);

  /// Suivi d'un colis par son numéro (`GET /parcels/track/{tracking_number}/`).
  Future<ParcelTracking> trackParcel(String trackingNumber);
}
