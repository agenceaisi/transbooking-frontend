import '../../../core/error/failure.dart';

/// Motif d'erreur d'un champ, indépendant de la langue.
///
/// La validation locale produit un [AuthFieldIssue] ; l'API, elle, renvoie déjà
/// ses messages en français (guide §4) — ils sont alors repris tels quels via
/// [AuthFieldError.fromServer]. L'écran est le seul à traduire.
enum AuthFieldIssue {
  required,
  phoneIncomplete,
  emailInvalid,
  passwordTooShort,
  mismatch,
  termsRequired,
}

/// Erreur attachée à un champ de formulaire.
class AuthFieldError {
  const AuthFieldError.local(this.issue) : message = null;

  const AuthFieldError.fromServer(this.message) : issue = null;

  /// Motif de la validation locale.
  final AuthFieldIssue? issue;

  /// Message renvoyé par l'API, déjà en français.
  final String? message;
}

/// État partagé par les formulaires d'authentification.
class AuthFormState {
  const AuthFormState({
    this.isSubmitting = false,
    this.fieldErrors = const {},
    this.failure,
    this.retryIn = Duration.zero,
    this.succeeded = false,
  });

  /// Envoi en cours : le bouton reste en place, l'action est bloquée.
  final bool isSubmitting;

  /// Erreurs indexées par nom de champ de l'API (`phone`, `new_password`, …).
  final Map<String, AuthFieldError> fieldErrors;

  /// Échec global à afficher au-dessus du formulaire.
  final Failure? failure;

  /// Temporisation restante après un `429` (10 requêtes/min/IP sur les routes
  /// d'authentification, guide §4).
  final Duration retryIn;

  /// L'opération a abouti — l'écran peut naviguer ou afficher son message.
  final bool succeeded;

  /// Vrai quand l'utilisateur doit patienter avant un nouvel essai.
  bool get isThrottled => retryIn > Duration.zero;

  /// Vrai quand aucune action n'est possible pour l'instant.
  bool get isBusy => isSubmitting || isThrottled;

  AuthFieldError? errorFor(String field) => fieldErrors[field];

  AuthFormState copyWith({
    bool? isSubmitting,
    Map<String, AuthFieldError>? fieldErrors,
    Failure? failure,
    bool clearFailure = false,
    Duration? retryIn,
    bool? succeeded,
  }) {
    return AuthFormState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      fieldErrors: fieldErrors ?? this.fieldErrors,
      failure: clearFailure ? null : (failure ?? this.failure),
      retryIn: retryIn ?? this.retryIn,
      succeeded: succeeded ?? this.succeeded,
    );
  }
}
