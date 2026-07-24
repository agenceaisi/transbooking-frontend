import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_snapshot.dart';

part 'traveler_payment.freezed.dart';

/// Un paiement de l'historique voyageur (`GET /payments/`, `PaymentRead`).
///
/// Distinct de [PaymentSnapshot] (parcours OTP en cours) : ici on ne garde que
/// ce qu'affiche l'onglet « Paiements » du profil.
@freezed
abstract class TravelerPayment with _$TravelerPayment {
  const factory TravelerPayment({
    required int id,
    required String ticketNumber,

    /// Montant, lecture seule (chaîne décimale de l'API).
    required String amount,
    required String methodDisplay,
    PaymentStatus? status,
    required String statusDisplay,

    /// Date de paiement si réglé, sinon date de création.
    required DateTime date,
  }) = _TravelerPayment;
}
