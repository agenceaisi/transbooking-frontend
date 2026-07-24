/// Moyens de paiement offerts au voyageur.
///
/// Aligné sur `Method80cEnum`, **carte exclue** : `method: "card"` est refusé
/// par l'API (400) tant qu'aucun PSP n'est contractualisé (CLAUDE.md §7). La
/// carte n'est donc pas proposée dans l'interface.
enum TravelerPaymentMethod {
  cash('cash'),
  orangeMoney('orange_money'),
  moovMoney('moov_money'),
  corisMoney('coris_money'),
  telecelMoney('telecel_money');

  const TravelerPaymentMethod(this.wire);

  /// Valeur technique envoyée à l'API.
  final String wire;

  /// Mobile Money : réglé par un code de confirmation (OTP). Les espèces
  /// restent `pending` jusqu'à l'encaissement au guichet.
  bool get isMobileMoney => this != TravelerPaymentMethod.cash;
}
