import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/phone_number.dart';
import 'auth_form_controller.dart';
import 'auth_form_state.dart';
import 'auth_providers.dart';
import 'auth_validators.dart';
import 'session_controller.dart';

/// Formulaire de connexion.
final loginControllerProvider =
    NotifierProvider<LoginController, AuthFormState>(LoginController.new);

/// Connexion par téléphone + mot de passe.
///
/// L'API n'accepte que le téléphone comme identifiant (guide §6.1) : l'écran
/// n'expose donc pas la bascule « e-mail » de la maquette.
class LoginController extends AuthFormController {
  /// [localPhone] ne contient que les huit chiffres locaux.
  Future<bool> signIn({
    required String localPhone,
    required String password,
  }) async {
    final errors = <String, AuthFieldError>{};
    final phoneError = AuthValidators.phone(localPhone);
    if (phoneError != null) errors['phone'] = phoneError;
    final passwordError = AuthValidators.required(password);
    if (passwordError != null) errors['password'] = passwordError;

    if (errors.isNotEmpty) {
      showLocalErrors(errors);
      return false;
    }

    return submit(() async {
      final profile = await ref
          .read(authRepositoryProvider)
          .signIn(phone: BfPhone.full(localPhone), password: password);
      // Le routeur observe la session : l'aiguillage par rôle suit tout seul.
      ref.read(sessionControllerProvider.notifier).signedIn(profile);
    });
  }
}
