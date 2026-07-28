import 'package:drift/drift.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/storage/local_database.dart';
import '../../../core/sync/outbox_writer.dart';
import '../../../core/utils/reference_number_generator.dart';
import '../domain/agent_parcel_repository.dart';
import '../domain/arrived_parcel.dart';
import '../domain/parcel_registration.dart';
import 'agent_parcel_remote_data_source.dart';

/// Implémentation des colis au guichet (guide §6.9, CLAUDE.md §6).
class AgentParcelRepositoryImpl implements AgentParcelRepository {
  const AgentParcelRepositoryImpl({required this.remote, required this.outbox});

  final AgentParcelRemoteDataSource remote;
  final OutboxWriter outbox;

  @override
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
  }) async {
    final trackingNumber = ReferenceNumberGenerator.trackingNumber();
    final fullDescription = _describe(nature: nature, extra: description);

    try {
      final parcel = await remote.create(
        dto.AgentParcelCreate(
          originCity: originCityId,
          destinationCity: destinationCityId,
          senderName: senderName,
          senderPhone: senderPhone,
          recipientName: recipientName,
          recipientPhone: recipientPhone,
          description: fullDescription,
          weightKg: weightKg,
          trackingNumber: trackingNumber,
        ),
      );
      return ParcelRegistration(
        trackingNumber: parcel.trackingNumber,
        senderName: parcel.senderName,
        recipientName: parcel.recipientName,
        originCity: parcel.originCity,
        destinationCity: parcel.destinationCity,
        nature: nature,
        weightKg: parcel.weightKg,
        isOffline: false,
        tariff: parcel.tariff,
        qrCode: parcel.qrCode,
      );
    } on NoConnectionFailure {
      return _queueOffline(
        trackingNumber: trackingNumber,
        originCityId: originCityId,
        originCityLabel: originCityLabel,
        destinationCityId: destinationCityId,
        destinationCityLabel: destinationCityLabel,
        senderName: senderName,
        senderPhone: senderPhone,
        recipientName: recipientName,
        recipientPhone: recipientPhone,
        nature: nature,
        weightKg: weightKg,
        description: fullDescription,
      );
    } on TimeoutFailure {
      return _queueOffline(
        trackingNumber: trackingNumber,
        originCityId: originCityId,
        originCityLabel: originCityLabel,
        destinationCityId: destinationCityId,
        destinationCityLabel: destinationCityLabel,
        senderName: senderName,
        senderPhone: senderPhone,
        recipientName: recipientName,
        recipientPhone: recipientPhone,
        nature: nature,
        weightKg: weightKg,
        description: fullDescription,
      );
    }
  }

  Future<ParcelRegistration> _queueOffline({
    required String trackingNumber,
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
  }) async {
    await outbox.queueParcel(
      OfflineParcelsCompanion.insert(
        trackingNumber: trackingNumber,
        originCity: originCityId,
        destinationCity: destinationCityId,
        senderName: senderName,
        senderPhone: senderPhone,
        recipientName: recipientName,
        recipientPhone: recipientPhone,
        description: Value(description),
        weightKg: weightKg,
        offlineCreatedAt: DateTime.now().toUtc(),
      ),
    );

    return ParcelRegistration(
      trackingNumber: trackingNumber,
      senderName: senderName,
      recipientName: recipientName,
      originCity: originCityLabel,
      destinationCity: destinationCityLabel,
      nature: nature,
      weightKg: weightKg,
      isOffline: true,
    );
  }

  @override
  Future<List<ArrivedParcel>> arrivals() async {
    final parcels = await remote.arrivals();
    return parcels.map(_fromParcelRead).toList(growable: false);
  }

  @override
  Future<void> notify({
    required int parcelId,
    required String trackingNumber,
    required bool bySms,
  }) async {
    if (bySms) {
      // Jamais de file d'attente pour un SMS : il ne doit jamais partir « en
      // différé » sans que l'agent le sache (guide §6.9).
      await remote.notify(parcelId: parcelId, bySms: true);
      return;
    }

    try {
      await remote.notify(parcelId: parcelId, bySms: false);
    } on NoConnectionFailure {
      await _queueNotification(trackingNumber);
    } on TimeoutFailure {
      await _queueNotification(trackingNumber);
    }
  }

  Future<void> _queueNotification(String trackingNumber) {
    return outbox.queueParcelNotification(
      OfflineParcelNotificationsCompanion.insert(
        trackingNumber: trackingNumber,
        offlineCreatedAt: DateTime.now().toUtc(),
      ),
    );
  }

  static ArrivedParcel _fromParcelRead(dto.ParcelRead parcel) {
    return ArrivedParcel(
      id: parcel.id,
      trackingNumber: parcel.trackingNumber,
      recipientName: parcel.recipientName,
      recipientPhone: parcel.recipientPhone,
      destinationCity: parcel.destinationCity,
      smsAlreadySent: parcel.notifications.any(
        (notification) =>
            notification.method == dto.ParcelNotificationMethodEnum.sms,
      ),
    );
  }

  /// La nature du colis n'a pas de champ dédié dans `AgentParcelCreate` — elle
  /// est repliée en tête de `description` (guide §6.9 : `description?` est le
  /// seul champ libre disponible), en respectant une éventuelle précision
  /// saisie séparément.
  static String _describe({required String nature, String? extra}) {
    final trimmedExtra = extra?.trim();
    if (trimmedExtra == null || trimmedExtra.isEmpty) return nature;
    return '$nature — $trimmedExtra';
  }
}
