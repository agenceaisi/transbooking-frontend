import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/phone_number.dart';
import 'auth_form_controller.dart';
import 'auth_form_state.dart';
import 'auth_providers.dart';
import 'auth_validators.dart';

/// Inscription d'un voyageur.
final travelerRegistrationControllerProvider =
    NotifierProvider<TravelerRegistrationController, AuthFormState>(
      TravelerRegistrationController.new,
    );

/// Demande de création d'un compte compagnie.
final companyRequestControllerProvider =
    NotifierProvider<CompanyRequestController, AuthFormState>(
      CompanyRequestController.new,
    );

/// `POST /auth/register/` — crée un compte voyageur actif immédiatement.
class TravelerRegistrationController extends AuthFormController {
  Future<bool> register({
    required String prenom,
    required String nom,
    required String localPhone,
    required String password,
    required String email,
    required bool termsAccepted,
  }) async {
    final errors = <String, AuthFieldError>{};
    final prenomError = AuthValidators.required(prenom);
    if (prenomError != null) errors['prenom'] = prenomError;
    final nomError = AuthValidators.required(nom);
    if (nomError != null) errors['nom'] = nomError;
    final phoneError = AuthValidators.phone(localPhone);
    if (phoneError != null) errors['phone'] = phoneError;
    final emailError = AuthValidators.optionalEmail(email);
    if (emailError != null) errors['email'] = emailError;
    final passwordError = AuthValidators.password(password);
    if (passwordError != null) errors['password'] = passwordError;
    if (!termsAccepted) {
      errors[termsField] = const AuthFieldError.local(
        AuthFieldIssue.termsRequired,
      );
    }

    if (errors.isNotEmpty) {
      showLocalErrors(errors);
      return false;
    }

    return submit(() async {
      await ref
          .read(authRepositoryProvider)
          .registerTraveler(
            prenom: prenom.trim(),
            nom: nom.trim(),
            phone: BfPhone.full(localPhone),
            password: password,
            email: email.trim().isEmpty ? null : email.trim(),
          );
    });
  }

  /// Champ local sans équivalent API : l'acceptation des conditions.
  static const String termsField = 'terms';
}

/// `POST /auth/company/register/` — dépose une demande au statut `pending`.
///
/// Aucun compte n'est créé : la compagnie attend la validation du super
/// administrateur (guide §6.2).
class CompanyRequestController extends AuthFormController {
  Future<bool> submitRequest({
    required String companyName,
    required String managerName,
    required String localPhone,
    required String email,
    required String city,
  }) async {
    final errors = <String, AuthFieldError>{};
    final companyError = AuthValidators.required(companyName);
    if (companyError != null) errors['company_name'] = companyError;
    final managerError = AuthValidators.required(managerName);
    if (managerError != null) errors['manager_name'] = managerError;
    final phoneError = AuthValidators.phone(localPhone);
    if (phoneError != null) errors['phone'] = phoneError;
    final emailError = AuthValidators.email(email);
    if (emailError != null) errors['email'] = emailError;
    final cityError = AuthValidators.required(city);
    if (cityError != null) errors['city'] = cityError;

    if (errors.isNotEmpty) {
      showLocalErrors(errors);
      return false;
    }

    return submit(() async {
      await ref
          .read(authRepositoryProvider)
          .requestCompanyAccount(
            companyName: companyName.trim(),
            managerName: managerName.trim(),
            phone: BfPhone.full(localPhone),
            email: email.trim(),
            city: city.trim(),
          );
    });
  }
}
