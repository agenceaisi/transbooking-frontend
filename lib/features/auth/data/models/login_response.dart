/// Réponse de `POST /api/v1/auth/login/`.
///
/// ⚠️ Écrite à la main, et non générée : le schéma OpenAPI décrit
/// `TransBookingTokenObtainPair` avec les seuls champs `writeOnly`
/// `phone`/`password` — il ne documente pas la réponse. Le guide §6.1 fait
/// donc foi ici :
///
/// ```json
/// { "access": "<jwt>", "refresh": "<jwt>", "role": "voyageur", "prenom": "Awa" }
/// ```
///
/// Le CLAUDE.md §5 annonce de son côté `user.role.name` : [parseRole] accepte
/// les deux formes plutôt que de casser si le serveur suit l'autre convention.
class LoginResponse {
  const LoginResponse({
    required this.access,
    required this.refresh,
    required this.role,
    this.prenom,
  });

  final String access;
  final String refresh;

  /// Valeur technique du rôle, telle que reçue (`agent_guichet`, …).
  final String? role;

  final String? prenom;

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
      role: parseRole(json),
      prenom: json['prenom'] as String?,
    );
  }

  /// Extrait le rôle, que le serveur le renvoie à plat (`"role": "voyageur"`,
  /// guide §6.1) ou imbriqué (`"user": {"role": {"name": …}}`, CLAUDE.md §5).
  static String? parseRole(Map<String, dynamic> json) {
    final direct = json['role'];
    if (direct is String) return direct;
    if (direct is Map && direct['name'] is String) {
      return direct['name'] as String;
    }

    final user = json['user'];
    if (user is Map) {
      final userRole = user['role'];
      if (userRole is String) return userRole;
      if (userRole is Map && userRole['name'] is String) {
        return userRole['name'] as String;
      }
    }
    return null;
  }

  /// Jamais de jeton dans les journaux (CLAUDE.md §13).
  @override
  String toString() => 'LoginResponse(role: $role, tokens: ***)';
}
