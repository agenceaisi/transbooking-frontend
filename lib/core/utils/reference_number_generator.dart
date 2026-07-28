import 'dart:math';

/// Génère les références locales des saisies hors ligne du guichet.
///
/// Le `ticket_number` / `tracking_number` sert de **clé d'idempotence**
/// côté serveur (CLAUDE.md §6) : il est donc généré ici, avant tout appel
/// réseau, identique que l'agent soit en ligne ou hors ligne — cela permet de
/// retrouver la réservation/le colis créés par un `GET .../{référence}/`
/// juste après l'envoi, même quand la réponse de création ne les porte pas
/// (CLAUDE.md §0 : le schéma type ces réponses comme un écho de la requête).
abstract final class ReferenceNumberGenerator {
  static final Random _random = Random();

  /// `BF<année><6 chiffres>` — numéro de billet.
  static String ticketNumber({DateTime? now}) => _reference('BF', now);

  /// `COL<année><6 chiffres>` — numéro de suivi colis.
  static String trackingNumber({DateTime? now}) => _reference('COL', now);

  static String _reference(String prefix, DateTime? now) {
    final year = (now ?? DateTime.now()).year;
    final suffix = _random.nextInt(1000000).toString().padLeft(6, '0');
    return '$prefix$year$suffix';
  }
}
