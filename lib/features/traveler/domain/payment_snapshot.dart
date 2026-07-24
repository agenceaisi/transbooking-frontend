import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_snapshot.freezed.dart';

/// Statut d'un paiement — valeurs techniques de l'API
/// (`PaymentReadStatusEnum`), redéclaré dans le domaine.
///
/// `otpRequired` = code de confirmation Mobile Money envoyé, en attente de
/// saisie (état intermédiaire entre `pending` et `paid`).
enum PaymentStatus {
  pending('pending'),
  otpRequired('otp_required'),
  paid('paid'),
  failed('failed'),
  refunded('refunded');

  const PaymentStatus(this.wire);

  final String wire;

  static PaymentStatus? fromWire(String? wire) {
    if (wire == null) return null;
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return null;
  }
}

/// Instantané d'un paiement (`PaymentRead`).
///
/// `otpExpiresAt` est un `String?` **non typé date-time dans le schéma**
/// (divergence connue) : parsé explicitement en [otpExpiresAtDate].
@freezed
abstract class PaymentSnapshot with _$PaymentSnapshot {
  const factory PaymentSnapshot({
    required int id,
    required String ticketNumber,

    /// Montant, lecture seule.
    required String amount,

    /// Valeur technique du moyen (`Method80cEnum`).
    required String methodWire,
    required String methodDisplay,
    PaymentStatus? status,
    required String statusDisplay,

    /// Téléphone du payeur, **masqué** par le serveur (« ****0001 »).
    required String phone,

    /// Expiration du code, `null` hors statut `otp_required`.
    String? otpExpiresAt,

    /// Tentatives restantes, `null` hors statut `otp_required`.
    int? otpAttemptsRemaining,
    String? receiptUrl,
    DateTime? paidAt,
  }) = _PaymentSnapshot;

  const PaymentSnapshot._();

  /// Expiration du code parsée en date (heure locale), `null` si absente ou
  /// illisible — on n'invente pas de compte à rebours faute de date fiable.
  DateTime? get otpExpiresAtDate {
    final raw = otpExpiresAt;
    if (raw == null) return null;
    return DateTime.tryParse(raw)?.toLocal();
  }

  bool get isPaid => status == PaymentStatus.paid;

  bool get isPending => status == PaymentStatus.pending;

  bool get isFailed => status == PaymentStatus.failed;

  bool get awaitsOtp => status == PaymentStatus.otpRequired;

  bool get hasReceipt => receiptUrl != null && receiptUrl!.trim().isNotEmpty;
}
