import 'package:dio/dio.dart';

import '../error/failure.dart';

/// Traduit les erreurs dio et les enveloppes d'erreur DRF en [Failure].
///
/// Deux formes de corps sont documentées (guide d'intégration §4) :
/// ```jsonc
/// { "phone": ["Ce numero de telephone est deja utilise."] }  // 400, par champ
/// { "detail": "Informations d'authentification non fournies." } // 401/403/404/409/429
/// ```
abstract final class FailureMapper {
  /// Clé du message générique DRF.
  static const String _detailKey = 'detail';

  /// En-tête standard de temporisation renvoyé avec un 429.
  static const String _retryAfterHeader = 'retry-after';

  static Failure fromDioException(DioException exception) {
    return switch (exception.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.transformTimeout => const TimeoutFailure(),
      DioExceptionType.connectionError => const NoConnectionFailure(),
      DioExceptionType.cancel => const CancelledFailure(),
      DioExceptionType.badCertificate => UnexpectedFailure(
        cause: exception.error,
      ),
      DioExceptionType.badResponse => _fromResponse(exception.response),
      DioExceptionType.unknown => _fromUnknown(exception),
    };
  }

  /// Sans réponse HTTP, une erreur inconnue vient presque toujours d'un socket
  /// injoignable : on la traite comme une absence de connexion.
  static Failure _fromUnknown(DioException exception) {
    final error = exception.error;
    if (error is Exception && exception.response == null) {
      return const NoConnectionFailure();
    }
    return UnexpectedFailure(cause: error ?? exception.message);
  }

  static Failure _fromResponse(Response<dynamic>? response) {
    if (response == null) return const UnexpectedFailure();

    final status = response.statusCode ?? 0;
    final body = _asMap(response.data);
    final detail = _detailOf(body);

    return switch (status) {
      400 => _validationFailure(body, detail),
      401 => const UnauthorizedFailure(),
      // L'API ne distingue pas « rôle insuffisant » de « compagnie suspendue » :
      // les deux renvoient un 403 sans champ typé. La promotion vers l'écran
      // « compte suspendu » appartient donc à la feature company_admin, qui
      // seule connaît le contexte d'appel (cf. guide §6.17).
      403 => ForbiddenFailure(detail: detail),
      404 => const NotFoundFailure(),
      409 => ConflictFailure(detail: detail),
      429 => RateLimitFailure(
        retryAfter: _retryAfterOf(response.headers),
        detail: detail,
      ),
      >= 500 => ServerFailure(statusCode: status),
      _ => ServerFailure(statusCode: status),
    };
  }

  /// Découpe un corps 400 en erreurs par champ.
  static Failure _validationFailure(
    Map<String, dynamic>? body,
    String? detail,
  ) {
    if (body == null) {
      return ValidationFailure(fieldErrors: const {}, detail: detail);
    }

    final fieldErrors = <String, List<String>>{};
    for (final entry in body.entries) {
      if (entry.key == _detailKey) continue;
      final messages = _asMessages(entry.value);
      if (messages.isNotEmpty) fieldErrors[entry.key] = messages;
    }

    return ValidationFailure(fieldErrors: fieldErrors, detail: detail);
  }

  /// Normalise une valeur d'erreur : DRF renvoie une liste, parfois une chaîne.
  static List<String> _asMessages(dynamic value) {
    if (value is String) return [value];
    if (value is List) {
      return value.whereType<Object>().map((e) => e.toString()).toList();
    }
    return const [];
  }

  static Map<String, dynamic>? _asMap(dynamic data) =>
      data is Map<String, dynamic> ? data : null;

  static String? _detailOf(Map<String, dynamic>? body) {
    final detail = body?[_detailKey];
    return detail is String ? detail : null;
  }

  static Duration? _retryAfterOf(Headers headers) {
    final raw = headers.value(_retryAfterHeader);
    final seconds = raw == null ? null : int.tryParse(raw);
    return seconds == null ? null : Duration(seconds: seconds);
  }
}
