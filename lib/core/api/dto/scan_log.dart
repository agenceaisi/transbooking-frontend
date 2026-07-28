// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'result_enum.dart';

part 'scan_log.freezed.dart';
part 'scan_log.g.dart';

/// Historique des scans d'un controleur.
@freezed
abstract class ScanLog with _$ScanLog {
  const factory ScanLog({
    required int id,
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    required ResultEnum result,
    @JsonKey(name: 'result_display')
    required String resultDisplay,
    @JsonKey(name: 'passenger_name')
    required String? passengerName,
    @JsonKey(name: 'seat_number')
    required String? seatNumber,
    @JsonKey(name: 'scanned_at')
    required DateTime scannedAt,
  }) = _ScanLog;

  factory ScanLog.fromJson(Map<String, dynamic> json) =>
      _$ScanLogFromJson(json);
}
