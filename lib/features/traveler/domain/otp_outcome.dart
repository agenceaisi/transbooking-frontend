import 'payment_snapshot.dart';

/// Résultat d'une vérification de code de confirmation (`verify-otp`).
///
/// Le flux OTP a trois issues distinctes (guide §6.8), qu'on modélise
/// explicitement pour que l'UI ne devine rien :
///  - [OtpAccepted] : `200` + paiement `paid` ;
///  - [OtpRejected] : `400` code faux, avec le nombre de tentatives restantes ;
///  - [OtpFailed] : plus de tentative ou code expiré → paiement `failed`, il
///    faut relancer un paiement.
sealed class OtpOutcome {
  const OtpOutcome();
}

/// Code correct : paiement confirmé.
class OtpAccepted extends OtpOutcome {
  const OtpAccepted(this.payment);

  final PaymentSnapshot payment;
}

/// Code faux : il reste des tentatives.
class OtpRejected extends OtpOutcome {
  const OtpRejected({required this.attemptsRemaining});

  /// Tentatives restantes annoncées par l'API (`attempts_remaining`), `null`
  /// si le serveur ne l'a pas précisé.
  final int? attemptsRemaining;
}

/// Paiement échoué : tentatives épuisées ou code expiré. Relancer un paiement.
class OtpFailed extends OtpOutcome {
  const OtpFailed({this.payment});

  /// Instantané du paiement passé `failed`, s'il a été renvoyé.
  final PaymentSnapshot? payment;
}
