import 'package:freezed_annotation/freezed_annotation.dart';

part 'parcel_tracking.freezed.dart';

/// Étape du cycle de vie d'un colis — valeurs techniques de l'API
/// (`Status62aEnum`), dans l'ordre de progression.
enum ParcelStage {
  registered('registered'),
  inTransit('in_transit'),
  arrived('arrived'),
  notified('notified'),
  collected('collected');

  const ParcelStage(this.wire);

  final String wire;

  static ParcelStage? fromWire(String? wire) {
    if (wire == null) return null;
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return null;
  }
}

/// Position d'une étape par rapport à l'avancement courant.
enum ParcelStageState { done, current, pending }

/// Un événement horodaté de l'historique de suivi (`ParcelHistoryEntry`).
@immutable
class ParcelHistoryEvent {
  const ParcelHistoryEvent({
    required this.stage,
    required this.statusDisplay,
    required this.timestamp,
    this.location,
    this.note,
  });

  /// Étape atteinte ; `null` si l'API renvoie un statut hors cycle connu.
  final ParcelStage? stage;
  final String statusDisplay;
  final DateTime timestamp;
  final String? location;
  final String? note;
}

/// Une étape de la timeline, dérivée de l'étape courante du colis et enrichie de
/// l'événement d'historique correspondant (lieu, horodatage, note) s'il existe.
@immutable
class ParcelTimelineStep {
  const ParcelTimelineStep({
    required this.stage,
    required this.state,
    this.location,
    this.timestamp,
    this.note,
  });

  final ParcelStage stage;
  final ParcelStageState state;

  /// Lieu / horodatage / précision de l'événement réel, `null` si l'étape n'a
  /// pas encore eu lieu (ou si l'API ne fournit pas d'historique).
  final String? location;
  final DateTime? timestamp;
  final String? note;
}

/// Suivi public d'un colis (`GET /parcels/track/{tracking_number}/`,
/// `ParcelTrack`).
///
/// Depuis le complément d'API (2026-07-23), `history` est **typé**
/// (`ParcelHistoryEntry` : statut, lieu, horodatage, note) et le colis expose sa
/// `current_location` et une `estimated_delivery`. La timeline garde les cinq
/// étapes du cycle de vie (faites / en cours / à venir) et **attache à chacune**
/// l'événement d'historique correspondant ; à défaut d'historique, seule la
/// progression par `status` s'affiche.
@freezed
abstract class ParcelTracking with _$ParcelTracking {
  const factory ParcelTracking({
    required String trackingNumber,
    required String statusDisplay,
    ParcelStage? stage,
    required String originCity,
    required String destinationCity,
    required String recipientName,

    /// Téléphone du destinataire, **déjà masqué** par le serveur.
    required String recipientPhone,

    /// Position actuelle du colis (bandeau « statut actuel »).
    String? currentLocation,

    /// Date de livraison estimée renvoyée par l'API.
    DateTime? estimatedDelivery,

    /// Historique horodaté renvoyé par l'API (chronologique).
    @Default(<ParcelHistoryEvent>[]) List<ParcelHistoryEvent> history,
  }) = _ParcelTracking;

  const ParcelTracking._();

  /// Ordre d'affichage des étapes.
  static const List<ParcelStage> _order = ParcelStage.values;

  /// Timeline dérivée de l'étape courante : tout ce qui précède est « fait »,
  /// l'étape courante est « en cours », le reste est « à venir ». Chaque étape
  /// reçoit le lieu / l'horodatage / la note de son événement d'historique.
  List<ParcelTimelineStep> get timeline {
    final currentIndex = stage == null ? -1 : _order.indexOf(stage!);
    final steps = <ParcelTimelineStep>[];
    for (var i = 0; i < _order.length; i++) {
      final stageAt = _order[i];
      final event = _latestEventFor(stageAt);
      steps.add(
        ParcelTimelineStep(
          stage: stageAt,
          state: switch (currentIndex) {
            -1 => ParcelStageState.pending,
            _ when i < currentIndex => ParcelStageState.done,
            _ when i == currentIndex => ParcelStageState.current,
            _ => ParcelStageState.pending,
          },
          location: event?.location,
          timestamp: event?.timestamp,
          note: event?.note,
        ),
      );
    }
    return steps;
  }

  /// Événement le plus récent de l'historique pour une étape donnée, `null` s'il
  /// n'y en a aucun.
  ParcelHistoryEvent? _latestEventFor(ParcelStage stage) {
    ParcelHistoryEvent? found;
    for (final event in history) {
      if (event.stage != stage) continue;
      if (found == null || event.timestamp.isAfter(found.timestamp)) {
        found = event;
      }
    }
    return found;
  }
}
