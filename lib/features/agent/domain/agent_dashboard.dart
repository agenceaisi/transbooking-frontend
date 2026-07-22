import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/theme/app_status_colors.dart';

part 'agent_dashboard.freezed.dart';

/// Instantané du tableau de bord de l'agent.
///
/// Entité du domaine, assemblée à partir de trois réponses de l'API
/// (`agent/dashboard/`, `agent/trips/today/`, `notifications/`). Les DTO
/// générés ne dépassent jamais la couche `data` (CLAUDE.md §3).
@freezed
abstract class AgentDashboardSnapshot with _$AgentDashboardSnapshot {
  const factory AgentDashboardSnapshot({
    required List<AgentDeparture> departures,
    required List<AgentAlert> alerts,

    /// Nombre d'alertes en attente annoncé par le serveur.
    ///
    /// `null` quand l'instantané vient du cache : ce compteur n'est pas
    /// conservé localement, et l'inventer donnerait un chiffre faux.
    int? pendingAlerts,

    /// Horodatage du cache, renseigné **uniquement** si les données affichées
    /// ne viennent pas du réseau. Alimente « Dernière mise à jour à HHhMM ».
    DateTime? cachedAt,
  }) = _AgentDashboardSnapshot;

  const AgentDashboardSnapshot._();

  /// Vrai quand l'écran montre un état passé, pas l'état courant du serveur.
  bool get isFromCache => cachedAt != null;

  /// Départ à venir le plus proche — celui que le contrôleur embarque.
  AgentDeparture? get nextDeparture =>
      departures.isEmpty ? null : departures.first;
}

/// Un départ à venir du périmètre de l'agent.
@freezed
abstract class AgentDeparture with _$AgentDeparture {
  const factory AgentDeparture({
    required int tripId,
    required String origin,
    required String destination,
    required DateTime departureTime,
    required int availableSeats,

    /// Passagers déjà enregistrés sur ce départ.
    required int passengerCount,

    /// Immatriculation du véhicule.
    ///
    /// `null` si `agent/trips/today/` n'a pas répondu : le tableau de bord
    /// s'affiche quand même, sans inventer de plaque.
    String? vehicleRegistration,
    TripStatus? status,
  }) = _AgentDeparture;

  const AgentDeparture._();

  /// Seuil au-delà duquel les places restantes passent en alerte (maquette
  /// « Tableau de bord agent » : vert au-dessus, orange en dessous).
  static const int lowSeatsThreshold = 5;

  bool get isFull => availableSeats <= 0;

  bool get isAlmostFull => !isFull && availableSeats <= lowSeatsThreshold;

  bool get isDelayed => status == TripStatus.delayed;

  /// Un départ complet ou annulé n'accepte plus de passager au guichet.
  bool get acceptsNewPassengers => !isFull && status != TripStatus.cancelled;

  /// Couleur de la pastille de places restantes.
  ///
  /// Un voyage annulé passe au gris : ses places sont sans objet, et un vert
  /// « 32 places » inviterait à vendre un billet sur un départ qui n'aura pas
  /// lieu. Cas observé en production, absent de la maquette.
  StatusType get seatStatusType {
    if (status == TripStatus.cancelled) return StatusType.neutral;
    if (isFull) return StatusType.danger;
    return isAlmostFull ? StatusType.warning : StatusType.success;
  }
}

/// État d'un voyage — reprise des valeurs techniques de l'API (`StatusF60Enum`).
///
/// Redéclaré ici pour que la présentation ne dépende pas d'un type généré.
enum TripStatus {
  scheduled('scheduled'),
  inProgress('in_progress'),
  delayed('delayed'),
  cancelled('cancelled'),
  completed('completed');

  const TripStatus(this.wireValue);

  final String wireValue;

  /// Renvoie `null` sur une valeur inconnue plutôt que de deviner un état.
  static TripStatus? fromWire(String? value) {
    if (value == null) return null;
    for (final status in TripStatus.values) {
      if (status.wireValue == value) return status;
    }
    return null;
  }
}

/// Alerte récente affichée à l'agent (notification in-app non lue).
@freezed
abstract class AgentAlert with _$AgentAlert {
  const factory AgentAlert({
    required int id,
    required String title,
    required String body,
    required AgentAlertKind kind,
    required DateTime createdAt,
  }) = _AgentAlert;
}

/// Nature d'une alerte — reprise des valeurs techniques de `TypeEnum`.
///
/// La gravité associée n'est qu'un code couleur d'affichage : elle ne préjuge
/// pas de l'urgence réelle, que l'API ne qualifie pas.
enum AgentAlertKind {
  booking('booking', StatusType.info),
  payment('payment', StatusType.info),
  parcel('parcel', StatusType.success),
  claim('claim', StatusType.danger),
  review('review', StatusType.neutral),
  trip('trip', StatusType.warning),
  message('message', StatusType.info),
  system('system', StatusType.danger);

  const AgentAlertKind(this.wireValue, this.statusType);

  final String wireValue;

  /// Jeu de couleurs de la pastille d'icône.
  final StatusType statusType;

  /// Type inconnu → [system], le fourre-tout neutre de l'API.
  static AgentAlertKind fromWire(String? value) {
    for (final kind in AgentAlertKind.values) {
      if (kind.wireValue == value) return kind;
    }
    return AgentAlertKind.system;
  }
}
