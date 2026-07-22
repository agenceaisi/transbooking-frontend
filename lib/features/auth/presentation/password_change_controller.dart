import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_form_controller.dart';
import 'auth_form_state.dart';
import 'auth_providers.dart';
import 'auth_validators.dart';

/// Changement de mot de passe de l'utilisateur connecté.
final passwordChangeControllerProvider =
    NotifierProvider<PasswordChangeController, AuthFormState>(
      PasswordChangeController.new,
    );

/// `POST /auth/password/change/`.
///
/// Les jetons en cours restent valides après le changement (guide §6.1) : on
/// ne déconnecte donc pas l'utilisateur.
class PasswordChangeController extends AuthFormController {
  Future<bool> change({
    required String currentPassword,
    required String newPassword,
    required String confirmation,
  }) async {
    final errors = <String, AuthFieldError>{};
    final currentError = AuthValidators.required(currentPassword);
    if (currentError != null) errors['old_password'] = currentError;
    final newError = AuthValidators.password(newPassword);
    if (newError != null) errors['new_password'] = newError;
    if (newError == null && confirmation != newPassword) {
      errors[confirmationField] = const AuthFieldError.local(
        AuthFieldIssue.mismatch,
      );
    }

    if (errors.isNotEmpty) {
      showLocalErrors(errors);
      return false;
    }

    return submit(() async {
      await ref
          .read(authRepositoryProvider)
          .changePassword(
            currentPassword: currentPassword,
            newPassword: newPassword,
          );
    });
  }

  /// Champ local sans équivalent API : la confirmation de saisie.
  static const String confirmationField = 'confirmation';
}
