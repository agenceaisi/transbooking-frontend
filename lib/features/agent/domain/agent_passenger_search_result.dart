import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_passenger_search_result.freezed.dart';

/// Un passager du programme du jour, pour la recherche rapide du tableau de
/// bord (nom ou numéro de billet, guide §6.15 — paquet du matin).
@freezed
abstract class AgentPassengerSearchResult with _$AgentPassengerSearchResult {
  const factory AgentPassengerSearchResult({
    required String ticketNumber,
    required String passengerName,
    String? phone,
    String? seatNumber,
    required int tripId,
    required String destinationCity,
    required DateTime departureTime,
    String? vehicleRegistration,
  }) = _AgentPassengerSearchResult;
}
