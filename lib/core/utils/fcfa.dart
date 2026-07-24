/// Mise en forme des montants en FCFA.
///
/// Les montants viennent de l'API en **lecture seule** (chaîne décimale, ex.
/// « 8500.00 ») : on ne fait que les afficher, jamais les recalculer
/// (CLAUDE.md §13). Le suffixe « FCFA » reste dans les `.arb` (`currencySuffix`)
/// et s'ajoute côté widget.
abstract final class Fcfa {
  /// Groupe les milliers avec une espace insécable — « 8500.00 » → « 8 500 ».
  ///
  /// La partie décimale est retirée (les tarifs sont en francs entiers). Une
  /// chaîne illisible est renvoyée telle quelle plutôt que masquée : mieux vaut
  /// un montant brut qu'un montant faux.
  static String format(String amount) {
    final trimmed = amount.trim();
    final dotIndex = trimmed.indexOf('.');
    final integerPart = dotIndex >= 0
        ? trimmed.substring(0, dotIndex)
        : trimmed;

    final negative = integerPart.startsWith('-');
    final digits = negative ? integerPart.substring(1) : integerPart;
    if (digits.isEmpty || !_isDigits(digits)) return trimmed;

    return (negative ? '-' : '') + _group(digits);
  }

  /// Variante numérique — pour les montants déjà calculés côté client
  /// (jamais un tarif : uniquement des totaux d'affichage).
  static String formatNum(num amount) => format(amount.toStringAsFixed(0));

  static String _group(String digits) {
    final buffer = StringBuffer();
    final length = digits.length;
    for (var i = 0; i < length; i++) {
      if (i > 0 && (length - i) % 3 == 0) buffer.write(' ');
      buffer.write(digits[i]);
    }
    return buffer.toString();
  }

  static bool _isDigits(String value) =>
      value.runes.every((rune) => rune >= 0x30 && rune <= 0x39);
}
