import '../../../core/api/dto.dart' as dto;
import '../domain/city_ref.dart';
import '../domain/company_profile.dart';
import '../domain/company_summary.dart';
import '../domain/home_testimonial.dart';
import '../domain/parcel_tracking.dart';
import '../domain/public_review.dart';
import '../domain/trip_result.dart';

/// Traductions DTO généré → entité du domaine.
///
/// Regroupées ici pour que le mapping soit **explicite** et testable : aucun
/// DTO ne franchit la couche `data` (CLAUDE.md §3).
extension CityMapper on dto.City {
  CityRef toEntity() => CityRef(id: id, name: name, region: region);
}

extension CompanyPublicMapper on dto.CompanyPublic {
  CompanySummary toEntity() => CompanySummary(
    id: id,
    name: name,
    sigle: sigle,
    logoUrl: logo,
    description: description,
    city: city,
    rating: rating,
  );
}

extension CompanyPublicDetailMapper on dto.CompanyPublicDetail {
  CompanyProfile toEntity() => CompanyProfile(
    id: id,
    name: name,
    sigle: sigle,
    logoUrl: logo,
    description: description,
    city: city,
    rating: rating,
    phone: phone,
    email: email,
    routes: [for (final route in routes) route.toEntity()],
    ratingBreakdown: _ratingBreakdown(ratingBreakdown),
    reviewsCount: reviewsCount,
  );

  /// Convertit `{ "5": 812, … }` (clés chaîne) en `{ 5: 812, … }`, en ignorant
  /// les entrées hors barème 1–5 ou non entières.
  static Map<int, int> _ratingBreakdown(Map<String, dynamic> raw) {
    final result = <int, int>{};
    for (final entry in raw.entries) {
      final star = int.tryParse(entry.key);
      final count = entry.value;
      if (star != null && star >= 1 && star <= 5 && count is int) {
        result[star] = count;
      }
    }
    return result;
  }
}

extension CompanyRouteSummaryMapper on dto.CompanyRouteSummary {
  CompanyRoute toEntity() => CompanyRoute(
    id: id,
    originCityName: originCityName,
    destinationCityName: destinationCityName,
    basePrice: basePrice,
    durationMinutes: durationMinutes,
  );
}

extension ReviewReadMapper on dto.ReviewRead {
  PublicReview toEntity() => PublicReview(
    id: id,
    author: author,
    rating: rating,
    comment: comment,
    response: response,
    respondedAt: respondedAt,
    createdAt: createdAt,
  );
}

extension TestimonialMapper on dto.Testimonial {
  HomeTestimonial toEntity() => HomeTestimonial(
    id: id,
    author: author,
    companyName: companyName,
    rating: rating,
    comment: comment,
  );
}

extension TripReadMapper on dto.TripRead {
  TripResult toEntity() => TripResult(
    id: id,
    routeLabel: routeLabel,
    originCity: originCity,
    destinationCity: destinationCity,
    departureTime: departureTime,
    arrivalTime: arrivalTime,
    price: price,
    availableSeats: availableSeats,
    statusDisplay: statusDisplay,
    status: TripPublicStatus.fromWire(status?.wireValue),
    vehicleRegistration: vehicleRegistration,
    company: company,
    companyName: companyName,
    companySigle: companySigle,
    companyRating: companyRating,
    isDirect: isDirect,
    stopsCount: stopsCount,
    apiDurationMinutes: durationMinutes,
  );
}

extension ParcelTrackMapper on dto.ParcelTrack {
  ParcelTracking toEntity() => ParcelTracking(
    trackingNumber: trackingNumber,
    statusDisplay: statusDisplay,
    stage: ParcelStage.fromWire(status?.wireValue),
    originCity: originCity,
    destinationCity: destinationCity,
    recipientName: recipientName,
    recipientPhone: recipientPhone,
    currentLocation: currentLocation,
    estimatedDelivery: estimatedDelivery,
    history: [for (final entry in history) entry.toEvent()],
  );
}

extension ParcelHistoryEntryMapper on dto.ParcelHistoryEntry {
  ParcelHistoryEvent toEvent() => ParcelHistoryEvent(
    stage: ParcelStage.fromWire(status.wireValue),
    statusDisplay: statusDisplay,
    timestamp: timestamp,
    location: location,
    note: note,
  );
}
