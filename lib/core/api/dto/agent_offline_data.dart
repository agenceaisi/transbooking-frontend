// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'offline_booking_read.dart';
import 'offline_parcel_read.dart';
import 'offline_trip.dart';

part 'agent_offline_data.freezed.dart';
part 'agent_offline_data.g.dart';

/// Reponse de `GET /api/v1/agent/offline-data/` : paquet de travail du jour.
/// 
/// Enveloppe les trois listes du paquet hors ligne (voyages du jour,
/// reservations associees, colis en attente de remise) dans un objet unique.
@freezed
abstract class AgentOfflineData with _$AgentOfflineData {
  const factory AgentOfflineData({
    required List<OfflineTrip> trips,
    required List<OfflineBookingRead> bookings,
    @JsonKey(name: 'parcel_arrivals')
    required List<OfflineParcelRead> parcelArrivals,
  }) = _AgentOfflineData;

  factory AgentOfflineData.fromJson(Map<String, dynamic> json) =>
      _$AgentOfflineDataFromJson(json);
}
