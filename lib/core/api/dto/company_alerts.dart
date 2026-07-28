// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_alerts.freezed.dart';
part 'company_alerts.g.dart';

@freezed
abstract class CompanyAlerts with _$CompanyAlerts {
  const factory CompanyAlerts({
    @JsonKey(name: 'unresolved_claims')
    required int unresolvedClaims,
    @JsonKey(name: 'unreturned_parcels')
    required int unreturnedParcels,
    @JsonKey(name: 'speed_reports_pending')
    required int speedReportsPending,
  }) = _CompanyAlerts;

  factory CompanyAlerts.fromJson(Map<String, dynamic> json) =>
      _$CompanyAlertsFromJson(json);
}
