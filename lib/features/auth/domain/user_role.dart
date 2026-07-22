/// Rôles utilisateur.
///
/// Les valeurs de [wireName] sont les **valeurs techniques** de l'API
/// (guide d'intégration §2 et §5) — jamais un libellé affiché.
enum UserRole {
  voyageur('voyageur'),
  agentGuichet('agent_guichet'),
  controleur('controleur'),
  companyAdmin('company_admin'),
  superAdmin('super_admin');

  const UserRole(this.wireName);

  /// Valeur telle qu'échangée avec l'API (champ `role`).
  final String wireName;

  /// Convertit la valeur reçue de l'API.
  ///
  /// Renvoie `null` sur une valeur inconnue : au lieu de deviner, l'appelant
  /// traite le cas comme une session invalide.
  static UserRole? fromWire(String? value) {
    if (value == null) return null;
    for (final role in UserRole.values) {
      if (role.wireName == value) return role;
    }
    return null;
  }

  /// Vrai pour les rôles du module agent (guichet et contrôle), qui partagent
  /// le fonctionnement hors-ligne.
  bool get isAgent => this == UserRole.agentGuichet || this == controleur;
}
