import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Réponse brute d'une vérification de code, avant interprétation métier.
///
/// `verify-otp` a deux formes HTTP : `200` (paiement renvoyé) ou `400` (code
/// faux, avec `attempts_remaining`). On les remonte telles quelles ; le
/// repository en tire l'[OtpOutcome].
class VerifyOtpResponse {
  const VerifyOtpResponse.accepted(this.payment)
    : rejected = false,
      attemptsRemaining = null;

  const VerifyOtpResponse.rejected(this.attemptsRemaining)
    : rejected = true,
      payment = null;

  /// Paiement renvoyé par un `200`.
  final dto.PaymentRead? payment;

  /// Vrai si le serveur a répondu `400` (code refusé).
  final bool rejected;

  /// `attempts_remaining` lu sur le corps du `400`.
  final int? attemptsRemaining;
}

/// Appels HTTP du paiement voyageur (guide §6.8).
class PaymentRemoteDataSource {
  const PaymentRemoteDataSource(this._dio);

  final Dio _dio;

  /// `POST /payments/` — initie un paiement.
  Future<dto.PaymentRead> initiate(dto.PaymentInitiate body) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/payments/',
        data: body.toJson(),
      );
      return dto.PaymentRead.fromJson(_requireBody(response));
    });
  }

  /// `GET /payments/{id}/` — statut courant.
  Future<dto.PaymentRead> status(int paymentId) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/payments/$paymentId/',
      );
      return dto.PaymentRead.fromJson(_requireBody(response));
    });
  }

  /// `GET /payments/` — mes paiements (paginé, du plus récent au plus ancien).
  Future<List<dto.PaymentRead>> myPayments() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/payments/',
        queryParameters: const {'page_size': 100},
      );
      return dto.PaginatedPaymentReadList.fromJson(
        _requireBody(response),
      ).results;
    });
  }

  /// `POST /payments/{id}/resend-otp/` — renvoie un code (429 si trop tôt).
  Future<dto.PaymentRead> resendOtp(int paymentId) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/payments/$paymentId/resend-otp/',
      );
      return dto.PaymentRead.fromJson(_requireBody(response));
    });
  }

  /// `POST /payments/{id}/verify-otp/` — vérifie le code.
  ///
  /// Le `400` « code faux » n'est **pas** une panne : il porte
  /// `attempts_remaining` (guide §4) et doit être lu, pas transformé en erreur
  /// générique. Les autres échecs (réseau, 401, 429…) remontent en [Failure].
  Future<VerifyOtpResponse> verifyOtp({
    required int paymentId,
    required dto.PaymentOtpVerify body,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/payments/$paymentId/verify-otp/',
        data: body.toJson(),
      );
      return VerifyOtpResponse.accepted(
        dto.PaymentRead.fromJson(_requireBody(response)),
      );
    } on DioException catch (exception) {
      final response = exception.response;
      if (response?.statusCode == 400) {
        return VerifyOtpResponse.rejected(_attemptsRemainingOf(response?.data));
      }
      throw FailureMapper.fromDioException(exception);
    } on Failure {
      rethrow;
    } on Object catch (error) {
      throw UnexpectedFailure(cause: error);
    }
  }

  /// Lit `attempts_remaining` (entier typé) sur le corps d'un `400`.
  static int? _attemptsRemainingOf(dynamic data) {
    if (data is! Map) return null;
    final value = data['attempts_remaining'];
    return value is int ? value : null;
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
