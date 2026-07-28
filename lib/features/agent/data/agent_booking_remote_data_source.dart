import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Appels HTTP de l'enregistrement d'un passager au guichet (guide §6.7).
class AgentBookingRemoteDataSource {
  const AgentBookingRemoteDataSource(this._dio);

  final Dio _dio;

  /// `POST /agent/bookings/` — la réponse **échoue à typer** l'objet créé
  /// (schéma incomplet, cf. `api-divergences`) : on ne la lit pas, on
  /// enchaîne toujours sur [findByTicketNumber] avec la référence fournie.
  Future<void> create(dto.AgentBookingCreate body) {
    return _guard(() async {
      await _dio.post<Map<String, dynamic>>(
        '/agent/bookings/',
        data: body.toJson(),
      );
    });
  }

  /// `GET /agent/bookings/{ticket_number}/` — recherche par référence.
  Future<dto.BookingRead> findByTicketNumber(String ticketNumber) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/agent/bookings/$ticketNumber/',
      );
      return dto.BookingRead.fromJson(_requireBody(response));
    });
  }

  /// `POST /agent/bookings/{ticket_number}/print/` — marque imprimé.
  Future<dto.TicketPrint> print(String ticketNumber) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/agent/bookings/$ticketNumber/print/',
      );
      return dto.TicketPrint.fromJson(_requireBody(response));
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
