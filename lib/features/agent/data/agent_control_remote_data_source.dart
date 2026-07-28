import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';
import '../domain/boarding_validation_summary.dart';
import '../domain/scan_history_entry.dart';
import '../domain/scan_outcome.dart';

/// Appels HTTP du contrôleur — scan et embarquement (guide §6.7).
class AgentControlRemoteDataSource {
  const AgentControlRemoteDataSource(this._dio);

  final Dio _dio;

  /// `POST /agent/scan/` — `{ "qr_data": "<contenu brut du QR>" }`.
  ///
  /// Lu à la main (pas de `dto.ScanLog.fromJson`) : la vraie forme de cette
  /// réponse n'est pas fiable dans le schéma (cf. `ScanOutcome`), un champ
  /// manquant ne doit pas faire planter le scan.
  Future<ScanOutcome> scanQrData(String qrData) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/agent/scan/',
        data: {'qr_data': qrData},
      );
      return _parseScanOutcome(response.data ?? const {}, fallback: qrData);
    }, notFoundFallback: () => _notFoundOutcome(qrData));
  }

  /// `GET /agent/scan/history/` — 50 derniers scans, paginé.
  Future<List<ScanHistoryEntry>> scanHistory({int pageSize = 50}) {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/agent/scan/history/',
        queryParameters: {'page_size': pageSize},
      );
      final page = dto.PaginatedScanLogList.fromJson(_requireBody(response));
      return page.results
          .map(
            (log) => ScanHistoryEntry(
              ticketNumber: log.ticketNumber,
              kind: _kindFromWire(log.result.wireValue),
              scannedAt: log.scannedAt,
            ),
          )
          .toList(growable: false);
    });
  }

  /// `POST /agent/trips/{trip}/boarding/{booking}/` — cocher un passager.
  Future<void> boardOne({required int tripId, required int bookingId}) {
    return _guard(() async {
      await _dio.post<Map<String, dynamic>>(
        '/agent/trips/$tripId/boarding/$bookingId/',
        data: const <String, dynamic>{},
      );
    });
  }

  /// `POST /agent/trips/{trip}/boarding/all/` — embarque tous les payés.
  Future<int> boardAll(int tripId) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/agent/trips/$tripId/boarding/all/',
        data: const {'confirm': true},
      );
      final body = _requireBody(response);
      return (body['boarded'] as num?)?.toInt() ?? 0;
    });
  }

  /// `POST /agent/trips/{trip}/boarding/validate/` — verrouille la liste.
  ///
  /// Lu à la main : le schéma type la réponse comme `BoardingValidation`
  /// (lecture d'un embarquement individuel), la forme réelle documentée par
  /// le guide est `{trip, total_paid, boarded, not_boarded, locked}` — même
  /// artefact que les divergences déjà relevées.
  Future<BoardingValidationSummary> validate(int tripId) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/agent/trips/$tripId/boarding/validate/',
        data: const <String, dynamic>{},
      );
      final body = _requireBody(response);
      return BoardingValidationSummary(
        tripId: (body['trip'] as num?)?.toInt() ?? tripId,
        totalPaid: (body['total_paid'] as num?)?.toInt() ?? 0,
        boarded: (body['boarded'] as num?)?.toInt() ?? 0,
        notBoarded: (body['not_boarded'] as num?)?.toInt() ?? 0,
        locked: body['locked'] as bool? ?? true,
      );
    });
  }

  static ScanOutcome _parseScanOutcome(
    Map<String, dynamic> body, {
    required String fallback,
  }) {
    final resultWire = body['result'] as String?;
    return ScanOutcome(
      kind: _kindFromWire(resultWire),
      ticketNumber: body['ticket_number'] as String? ?? fallback,
      passengerName: body['passenger_name'] as String?,
      seatNumber: body['seat_number'] as String?,
      scannedAt:
          DateTime.tryParse(body['scanned_at'] as String? ?? '') ??
          DateTime.now().toUtc(),
    );
  }

  static ScanOutcome _notFoundOutcome(String fallback) => ScanOutcome(
    kind: ScanOutcomeKind.notFound,
    ticketNumber: fallback,
    scannedAt: DateTime.now().toUtc(),
  );

  static ScanOutcomeKind _kindFromWire(String? wire) => switch (wire) {
    'valid' => ScanOutcomeKind.valid,
    'unpaid' => ScanOutcomeKind.unpaid,
    'cancelled' => ScanOutcomeKind.cancelled,
    'refunded' => ScanOutcomeKind.refunded,
    'already_boarded' => ScanOutcomeKind.alreadyBoarded,
    'invalid' => ScanOutcomeKind.invalid,
    _ => ScanOutcomeKind.notFound,
  };

  static Future<T> _guard<T>(
    Future<T> Function() action, {
    T Function()? notFoundFallback,
  }) async {
    try {
      return await action();
    } on DioException catch (exception) {
      final failure = FailureMapper.fromDioException(exception);
      // Le guide documente un 404 pour un billet introuvable, en
      // contradiction avec `ResultEnum.not_found` (200 attendu) — les deux
      // formes sont acceptées (cf. `ScanOutcome`).
      if (failure is NotFoundFailure && notFoundFallback != null) {
        return notFoundFallback();
      }
      throw failure;
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
