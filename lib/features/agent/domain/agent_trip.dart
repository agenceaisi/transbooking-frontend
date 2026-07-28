import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_dashboard.dart' show TripStatus;

part 'agent_trip.freezed.dart';

/// Un voyage du programme du jour (`GET /agent/trips/today/`).
///
/// Distinct de [AgentDeparture][] (tableau de bord, phase 3) : celui-ci porte
/// le tarif et sert aussi à la sélection de voyage dans « Enregistrer un
/// passager » / « Enregistrer un colis ».
@freezed
abstract class AgentTrip with _$AgentTrip {
  const factory AgentTrip({
    required int id,
    required String originCity,
    required String destinationCity,
    required DateTime departureTime,
    String? vehicleRegistration,
    int? availableSeats,

    /// Tarif de base du trajet, lecture seule (CLAUDE.md §13) — jamais
    /// recalculé côté app.
    ///
    /// `null` quand le voyage vient du cache hors ligne (paquet du matin,
    /// `OfflineTrip` ne porte pas le tarif) : la vente au guichet omet alors
    /// `amount`, calculé côté serveur à la synchronisation.
    String? price,
    TripStatus? status,
  }) = _AgentTrip;

  const AgentTrip._();

  bool get isFull => (availableSeats ?? 1) <= 0;

  bool get isCancelled => status == TripStatus.cancelled;

  /// Un départ complet ou annulé n'accepte plus de nouveau passager.
  bool get acceptsNewPassengers => !isFull && !isCancelled;
}
