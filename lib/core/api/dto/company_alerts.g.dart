// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_alerts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyAlerts _$CompanyAlertsFromJson(Map<String, dynamic> json) =>
    _CompanyAlerts(
      unresolvedClaims: (json['unresolved_claims'] as num).toInt(),
      unreturnedParcels: (json['unreturned_parcels'] as num).toInt(),
      speedReportsPending: (json['speed_reports_pending'] as num).toInt(),
    );

Map<String, dynamic> _$CompanyAlertsToJson(_CompanyAlerts instance) =>
    <String, dynamic>{
      'unresolved_claims': instance.unresolvedClaims,
      'unreturned_parcels': instance.unreturnedParcels,
      'speed_reports_pending': instance.speedReportsPending,
    };
