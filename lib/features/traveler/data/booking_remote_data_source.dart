import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP de la réservation voyageur (guide §6.6, §6.7).
class BookingRemoteDataSource {
  const BookingRemoteDataSource(this._dio);

  final Dio _dio;

  /// `GET /trips/{id}/` — détail public d'un voyage + sièges disponibles.
  Future<dto.TripDetail> tripDetail(int tripId) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>('/trips/$tripId/');
      return dto.TripDetail.fromJson(_requireBody(response));
    });
  }

  /// `POST /bookings/` — crée une réservation au statut `pending`.
  ///
  /// Un `409` (siège déjà pris) remonte en `ConflictFailure`.
  Future<dto.BookingRead> createBooking(dto.BookingCreate body) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/bookings/',
        data: body.toJson(),
      );
      return dto.BookingRead.fromJson(_requireBody(response));
    });
  }

  /// `GET /bookings/` — mes réservations (paginé). La maquette montre toutes
  /// les réservations d'un coup : on demande la page maximale.
  Future<List<dto.BookingRead>> myBookings() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/bookings/',
        queryParameters: const {'page_size': 100},
      );
      return dto.PaginatedBookingReadList.fromJson(
        _requireBody(response),
      ).results;
    });
  }

  /// `GET /bookings/{id}/` — détail d'une réservation.
  Future<dto.BookingRead> booking(int id) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>('/bookings/$id/');
      return dto.BookingRead.fromJson(_requireBody(response));
    });
  }

  /// `POST /bookings/{id}/cancel/` — annule avec un motif obligatoire
  /// (guide §6.7). Le corps documenté par le schéma est un artefact DRF ; le
  /// serveur n'attend que `{ "reason": "..." }`.
  Future<dto.BookingRead> cancelBooking(int id, {required String reason}) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/bookings/$id/cancel/',
        data: {'reason': reason},
      );
      return dto.BookingRead.fromJson(_requireBody(response));
    });
  }

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

  static Map<String, dynamic> _requireBody(Response<Map<String, dynamic>> r) {
    final body = r.data;
    if (body == null) throw const UnexpectedFailure();
    return body;
  }
}
