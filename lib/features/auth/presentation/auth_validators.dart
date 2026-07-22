import '../../../core/utils/phone_number.dart';
import 'auth_form_state.dart';

/// Validations locales des formulaires d'authentification.
///
/// Elles n'ont pas vocation à doubler le serveur : elles évitent seulement un
/// aller-retour réseau pour une erreur évidente. Le serveur reste l'autorité —
/// ses messages, en français, remplacent ceux-ci dès qu'il en renvoie.
abstract final class AuthValidators {
  /// Longueur minimale imposée par l'API (schéma `UserRegistration`).
  static const int minPasswordLength = 8;

  /// Forme volontairement permissive : le serveur tranche.
  static final RegExp _email = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  static AuthFieldError? phone(String localPart) {
    if (localPart.trim().isEmpty) {
      return const AuthFieldError.local(AuthFieldIssue.required);
    }
    if (!BfPhone.isCompleteLocal(localPart)) {
      return const AuthFieldError.local(AuthFieldIssue.phoneIncomplete);
    }
    return null;
  }

  static AuthFieldError? required(String value) {
    return value.trim().isEmpty
        ? const AuthFieldError.local(AuthFieldIssue.required)
        : null;
  }

  static AuthFieldError? password(String value) {
    if (value.isEmpty) {
      return const AuthFieldError.local(AuthFieldIssue.required);
    }
    if (value.length < minPasswordLength) {
      return const AuthFieldError.local(AuthFieldIssue.passwordTooShort);
    }
    return null;
  }

  /// E-mail obligatoire (demande de compte compagnie).
  static AuthFieldError? email(String value) {
    if (value.trim().isEmpty) {
      return const AuthFieldError.local(AuthFieldIssue.required);
    }
    return _email.hasMatch(value.trim())
        ? null
        : const AuthFieldError.local(AuthFieldIssue.emailInvalid);
  }

  /// E-mail facultatif (inscription voyageur) : vide est valide.
  static AuthFieldError? optionalEmail(String value) {
    if (value.trim().isEmpty) return null;
    return _email.hasMatch(value.trim())
        ? null
        : const AuthFieldError.local(AuthFieldIssue.emailInvalid);
  }
}
