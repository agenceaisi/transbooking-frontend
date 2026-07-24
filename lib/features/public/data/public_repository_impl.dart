import '../domain/city_ref.dart';
import '../domain/company_profile.dart';
import '../domain/company_summary.dart';
import '../domain/home_testimonial.dart';
import '../domain/parcel_tracking.dart';
import '../domain/public_repository.dart';
import '../domain/public_review.dart';
import '../domain/search_criteria.dart';
import '../domain/trip_result.dart';
import 'public_mappers.dart';
import 'public_remote_data_source.dart';

/// Implémentation de [PublicRepository].
///
/// Écrans en ligne (pas d'offline requis en phase 4) : chaque méthode va au
/// réseau et mappe le DTO vers l'entité du domaine.
class PublicRepositoryImpl implements PublicRepository {
  const PublicRepositoryImpl(this._remote);

  final PublicRemoteDataSource _remote;

  @override
  Future<List<CityRef>> cities() async {
    final cities = await _remote.cities();
    return cities.map((city) => city.toEntity()).toList(growable: false);
  }

  @override
  Future<List<CompanySummary>> partnerCompanies() async {
    final companies = await _remote.companies();
    return companies
        .map((company) => company.toEntity())
        .toList(growable: false);
  }

  @override
  Future<CompanyProfile> companyProfile(int id) async {
    final company = await _remote.company(id);
    return company.toEntity();
  }

  @override
  Future<List<PublicReview>> companyReviews(int companyId) async {
    final reviews = await _remote.reviews(companyId);
    return reviews.map((review) => review.toEntity()).toList(growable: false);
  }

  @override
  Future<List<HomeTestimonial>> testimonials() async {
    final testimonials = await _remote.testimonials();
    return testimonials
        .map((testimonial) => testimonial.toEntity())
        .toList(growable: false);
  }

  @override
  Future<List<TripResult>> searchTrips(SearchCriteria criteria) async {
    final trips = await _remote.searchTrips(criteria);
    return trips.map((trip) => trip.toEntity()).toList(growable: false);
  }

  @override
  Future<ParcelTracking> trackParcel(String trackingNumber) async {
    final parcel = await _remote.trackParcel(trackingNumber);
    return parcel.toEntity();
  }
}
