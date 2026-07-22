/// Erreurs du domaine.
///
/// La couche `data` traduit toute exception technique (dio, Drift, parsing) en
/// une `Failure` ; l'UI ne voit jamais de `DioException` ni de trace.
/// Le texte affiché est produit par `failure_messages.dart`, à partir des
/// chaînes traduites — une `Failure` ne porte pas de message en dur.
sealed class Failure implements Exception {
  const Failure();
}

/// Aucune connectivité, ou serveur injoignable.
///
/// En module agent, ce n'est pas une erreur : l'action part dans l'outbox.
class NoConnectionFailure extends Failure {
  const NoConnectionFailure();
}

/// Le serveur n'a pas répondu dans les délais.
class TimeoutFailure extends Failure {
  const TimeoutFailure();
}

/// Erreur serveur (5xx).
class ServerFailure extends Failure {
  const ServerFailure({this.statusCode});

  final int? statusCode;
}

/// Validation refusée (400) — erreurs par champ renvoyées par DRF.
///
/// Format d'origine : `{ "phone": ["Ce numero est deja utilise."] }`. Les
/// messages viennent du serveur, déjà en français : on les affiche tels quels
/// sous le champ concerné.
class ValidationFailure extends Failure {
  const ValidationFailure({required this.fieldErrors, this.detail});

  /// Messages indexés par nom de champ.
  final Map<String, List<String>> fieldErrors;

  /// Message global éventuel, quand l'erreur ne vise pas un champ précis.
  final String? detail;

  /// Premier message disponible pour [field].
  String? firstErrorFor(String field) {
    final messages = fieldErrors[field];
    return (messages == null || messages.isEmpty) ? null : messages.first;
  }

  /// Vrai si aucune erreur n'est rattachée à un champ identifié.
  bool get isGlobal => fieldErrors.isEmpty;
}

/// Session absente ou expirée (401) — après échec du rafraîchissement.
class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure();
}

/// Accès refusé (403) : rôle insuffisant, ou compagnie hors périmètre.
class ForbiddenFailure extends Failure {
  const ForbiddenFailure({this.detail});

  final String? detail;
}

/// Compagnie suspendue / rejetée, ou abonnement expiré (403).
///
/// Distingué de [ForbiddenFailure] car l'app doit ouvrir l'écran « compte
/// suspendu » plutôt qu'un simple message (cf. CLAUDE.md §1).
class AccountSuspendedFailure extends Failure {
  const AccountSuspendedFailure({this.detail});

  final String? detail;
}

/// Ressource introuvable ou hors périmètre du tenant (404).
class NotFoundFailure extends Failure {
  const NotFoundFailure();
}

/// Conflit (409) — typiquement un siège déjà attribué.
class ConflictFailure extends Failure {
  const ConflictFailure({this.detail});

  final String? detail;
}

/// Débit dépassé (429).
///
/// Concerne l'authentification (10 req/min/IP) et le renvoi d'un code de
/// paiement (1 / 30 s). [retryAfter] alimente le back-off quand l'en-tête
/// `Retry-After` est présent.
class RateLimitFailure extends Failure {
  const RateLimitFailure({this.retryAfter, this.detail});

  final Duration? retryAfter;
  final String? detail;
}

/// Requête annulée (navigation, écran quitté).
class CancelledFailure extends Failure {
  const CancelledFailure();
}

/// Tout le reste — y compris une réponse illisible.
class UnexpectedFailure extends Failure {
  const UnexpectedFailure({this.cause});

  final Object? cause;
}
