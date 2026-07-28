import 'arrived_parcel.dart';
import 'parcel_registration.dart';

/// Colis au guichet : enregistrement, arrivées et notification (guide §6.9).
abstract interface class AgentParcelRepository {
  /// `POST /agent/parcels/` si le réseau répond, sinon mise en file d'attente.
  Future<ParcelRegistration> registerParcel({
    required int originCityId,
    required String originCityLabel,
    required int destinationCityId,
    required String destinationCityLabel,
    required String senderName,
    required String senderPhone,
    required String recipientName,
    required String recipientPhone,
    required String nature,
    required String weightKg,
    String? description,
  });

  /// `GET /agent/parcels/arrivals/` — colis arrivés à la gare de l'agent, en
  /// attente de notification.
  Future<List<ArrivedParcel>> arrivals();

  /// `POST /agent/parcels/{id}/notify/` — SMS ou appel manuel.
  ///
  /// Le SMS exige le réseau (jamais mis en file : l'app ne doit jamais
  /// laisser croire qu'un SMS est parti alors qu'il ne l'est pas). L'appel
  /// manuel (« marquer prévenu ») part dans l'outbox hors ligne — guide §6.15,
  /// `OfflineParcelNotification` — d'où [trackingNumber], nécessaire pour la
  /// file (la reprise en ligne ne connaît que [parcelId]).
  Future<void> notify({
    required int parcelId,
    required String trackingNumber,
    required bool bySms,
  });
}
