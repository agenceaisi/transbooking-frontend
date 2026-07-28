import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrived_parcel.freezed.dart';

/// Colis arrivé, en attente de remise (`GET /agent/parcels/arrivals/`).
@freezed
abstract class ArrivedParcel with _$ArrivedParcel {
  const factory ArrivedParcel({
    required int id,
    required String trackingNumber,
    required String recipientName,
    required String recipientPhone,
    required String destinationCity,

    /// Vrai si un SMS a déjà été envoyé pour ce colis — empêche le double
    /// envoi (CLAUDE.md §6, guide §6.9).
    required bool smsAlreadySent,
  }) = _ArrivedParcel;
}
