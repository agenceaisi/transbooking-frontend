import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/theme/app_status_colors.dart';
import 'monogram.dart';

part 'trip_result.freezed.dart';

/// État d'un voyage — reprise des valeurs techniques de l'API (`StatusF60Enum`).
///
/// Redéclaré dans le domaine public pour que la présentation ne dépende pas
/// d'un type généré (CLAUDE.md §3).
enum TripPublicStatus {
  scheduled('scheduled'),
  inProgress('in_progress'),
  delayed('delayed'),
  cancelled('cancelled'),
  completed('completed');

  const TripPublicStatus(this.wire);

  final String wire;

  static TripPublicStatus? fromWire(String? wire) {
    if (wire == null) return null;
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return null;
  }

  /// Ouvert à la réservation : seuls les voyages programmés le sont.
  bool get isBookable => this == TripPublicStatus.scheduled;
}

/// Un voyage renvoyé par la recherche publique (`GET /trips/search/`,
/// `TripRead`).
///
/// Depuis le complément d'API (2026-07-23), `TripRead` expose la **compagnie**
/// (`company`, `company_name`, `company_sigle`), sa **note** (`company_rating`),
/// le **type de trajet** (`is_direct`, `stops_count`) et la **durée**
/// (`duration_minutes`) — champs de la maquette « Résultats » rétablis ici.
@freezed
abstract class TripResult with _$TripResult {
  const factory TripResult({
    required int id,
    required String routeLabel,
    required String originCity,
    required String destinationCity,
    required DateTime departureTime,
    DateTime? arrivalTime,

    /// Montant en FCFA, tel que renvoyé par l'API (chaîne décimale). En lecture
    /// seule : jamais recalculé côté client (CLAUDE.md §13).
    required String price,

    /// Places restantes ; `null` si l'API ne l'indique pas.
    int? availableSeats,
    required String statusDisplay,
    TripPublicStatus? status,

    /// Immatriculation du véhicule, seule information « transporteur » exposée.
    String? vehicleRegistration,

    /// Identité de la compagnie exploitante (`TripRead.company*`).
    @Default(0) int company,
    @Default('') String companyName,
    String? companySigle,

    /// Note moyenne de la compagnie sur 5 ; `null` si aucune n'est agrégée.
    double? companyRating,

    /// Trajet sans escale (`is_direct`) et nombre d'escales (`stops_count`).
    @Default(true) bool isDirect,
    @Default(0) int stopsCount,

    /// Durée du trajet en minutes renvoyée par l'API (`duration_minutes`),
    /// prioritaire sur le calcul dérivé de l'heure d'arrivée.
    int? apiDurationMinutes,
  }) = _TripResult;

  const TripResult._();

  /// Monogramme de repli de la compagnie (le sigle, sinon les initiales).
  String get companyMono =>
      companyMonogram(sigle: companySigle, name: companyName);

  /// Seuil des places restantes basses (aligné sur la maquette : orange en
  /// dessous, vert au-dessus).
  static const int lowSeatsThreshold = 5;

  bool get isFull => (availableSeats ?? 0) <= 0;

  bool get isAlmostFull =>
      !isFull && (availableSeats ?? 0) <= lowSeatsThreshold;

  /// Un voyage n'est réservable que s'il est programmé et qu'il reste des
  /// places.
  bool get isBookable => (status?.isBookable ?? true) && !isFull;

  /// Minute de départ dans la journée locale — pour le filtre par période.
  int get departureMinuteOfDay {
    final local = departureTime.toLocal();
    return local.hour * 60 + local.minute;
  }

  /// Durée du trajet en minutes. On privilégie la valeur renvoyée par l'API
  /// (`duration_minutes`) ; à défaut, on la dérive de l'heure d'arrivée.
  int? get durationMinutes {
    final api = apiDurationMinutes;
    if (api != null && api > 0) return api;
    final arrival = arrivalTime;
    if (arrival == null) return null;
    final minutes = arrival.difference(departureTime).inMinutes;
    return minutes > 0 ? minutes : null;
  }

  /// Couleur de la pastille de places restantes.
  StatusType get seatStatusType {
    if (status == TripPublicStatus.cancelled) return StatusType.neutral;
    if (isFull) return StatusType.danger;
    return isAlmostFull ? StatusType.warning : StatusType.success;
  }
}
