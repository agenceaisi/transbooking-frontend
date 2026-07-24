import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';
import '../domain/search_criteria.dart';

/// Appels HTTP des écrans publics (guide §6.2, §6.3, §6.6, §6.9, §6.12).
///
/// Chaque méthode traduit les erreurs dio en [Failure] : au-dessus, plus
/// personne ne connaît dio.
class PublicRemoteDataSource {
  const PublicRemoteDataSource(this._dio);

  final Dio _dio;

  // ── Chemins, relatifs à la base `…/api/v1` ───────────────────────────────
  static const String citiesPath = '/cities/';
  static const String companiesPath = '/public/companies/';
  static const String testimonialsPath = '/public/testimonials/';
  static const String reviewsPath = '/reviews/';
  static const String tripsSearchPath = '/trips/search/';

  /// Compagnies affichées sur l'accueil ; la maquette en montre six.
  static const int companiesPageSize = 12;

  /// `GET /cities/` — villes desservies. **Non paginé** (guide §3) : liste nue.
  Future<List<dto.City>> cities() {
    return _guard(() async {
      final response = await _dio.get<List<dynamic>>(citiesPath);
      return _mapList(response.data, dto.City.fromJson);
    });
  }

  /// `GET /public/companies/` — compagnies actives, réponse paginée.
  Future<List<dto.CompanyPublic>> companies() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        companiesPath,
        queryParameters: {'page_size': companiesPageSize},
      );
      return dto.PaginatedCompanyPublicList.fromJson(
        _requireBody(response),
      ).results;
    });
  }

  /// `GET /public/companies/{id}/` — fiche publique détaillée.
  Future<dto.CompanyPublicDetail> company(int id) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '$companiesPath$id/',
      );
      return dto.CompanyPublicDetail.fromJson(_requireBody(response));
    });
  }

  /// `GET /reviews/?company_id=` — avis publics d'une compagnie (paginé).
  Future<List<dto.ReviewRead>> reviews(int companyId) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        reviewsPath,
        queryParameters: {'company_id': companyId},
      );
      return dto.PaginatedReviewReadList.fromJson(
        _requireBody(response),
      ).results;
    });
  }

  /// `GET /public/testimonials/` — témoignages validés (paginé).
  Future<List<dto.Testimonial>> testimonials() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(testimonialsPath);
      return dto.PaginatedTestimonialList.fromJson(
        _requireBody(response),
      ).results;
    });
  }

  /// `GET /trips/search/` — recherche de voyages (paginé).
  ///
  /// Seuls les paramètres réellement définis sont transmis, avec les noms
  /// exacts du guide §6.6 (`origin_city`, `dest_city`, `date`, `passengers`).
  Future<List<dto.TripRead>> searchTrips(SearchCriteria criteria) {
    return _guard(() async {
      final query = <String, dynamic>{};
      if (criteria.originCityId != null) {
        query['origin_city'] = criteria.originCityId;
      }
      if (criteria.destCityId != null) query['dest_city'] = criteria.destCityId;
      final date = criteria.dateParam;
      if (date != null) query['date'] = date;
      if (criteria.passengers > 1) query['passengers'] = criteria.passengers;

      final response = await _dio.get<Map<String, dynamic>>(
        tripsSearchPath,
        queryParameters: query,
      );
      return dto.PaginatedTripReadList.fromJson(_requireBody(response)).results;
    });
  }

  /// `GET /parcels/track/{tracking_number}/` — suivi public d'un colis.
  Future<dto.ParcelTrack> trackParcel(String trackingNumber) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/parcels/track/$trackingNumber/',
      );
      return dto.ParcelTrack.fromJson(_requireBody(response));
    });
  }

  /// Exécute [action] en traduisant toute erreur en [Failure].
  static Future<T> _guard<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on DioException catch (exception) {
      throw FailureMapper.fromDioException(exception);
    } on Failure {
      rethrow;
    } on Object catch (error) {
      throw UnexpectedFailure(cause: error);
    }
  }

  static List<T> _mapList<T>(
    List<dynamic>? data,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final items = data ?? const [];
    return items
        .whereType<Map<String, dynamic>>()
        .map(fromJson)
        .toList(growable: false);
  }

  static Map<String, dynamic> _requireBody(Response<Map<String, dynamic>> r) {
    final body = r.data;
    if (body == null) throw const UnexpectedFailure();
    return body;
  }
}
