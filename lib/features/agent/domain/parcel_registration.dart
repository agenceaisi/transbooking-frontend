import 'package:freezed_annotation/freezed_annotation.dart';

part 'parcel_registration.freezed.dart';

/// Issue de l'enregistrement d'un colis au guichet
/// (`POST /agent/parcels/`, ou file d'attente hors ligne).
///
/// [tariff] et [qrCode] restent `null` quand la saisie part dans l'outbox :
/// calculés côté serveur à la synchronisation (guide §6.9), jamais devinés
/// côté app (CLAUDE.md §13).
@freezed
abstract class ParcelRegistration with _$ParcelRegistration {
  const factory ParcelRegistration({
    required String trackingNumber,
    required String senderName,
    required String recipientName,
    required String originCity,
    required String destinationCity,
    required String nature,
    required String weightKg,
    required bool isOffline,
    String? tariff,
    String? qrCode,
  }) = _ParcelRegistration;
}
