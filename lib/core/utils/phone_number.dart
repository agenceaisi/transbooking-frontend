/// Numéro de téléphone burkinabè.
///
/// L'utilisateur ne saisit que les huit chiffres locaux ; l'API attend le
/// numéro complet (`+22670000000`, guide §6.1). Les deux formes ne se croisent
/// qu'ici.
abstract final class BfPhone {
  /// Indicatif du Burkina Faso.
  static const String countryCode = '+226';

  /// Longueur de la partie locale.
  static const int localLength = 8;

  /// Recompose le numéro complet à partir d'une saisie locale.
  static String full(String localPart) => '$countryCode${digitsOf(localPart)}';

  /// Vrai si la saisie locale est complète.
  static bool isCompleteLocal(String localPart) =>
      digitsOf(localPart).length == localLength;

  /// Ne garde que les chiffres (l'affichage peut contenir des espaces).
  static String digitsOf(String value) => value.replaceAll(RegExp(r'\D'), '');
}
