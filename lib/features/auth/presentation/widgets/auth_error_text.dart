import 'package:flutter/material.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../../l10n/app_localizations.dart';
import '../auth_form_state.dart';

/// Traduit l'erreur d'un champ.
///
/// Les messages de l'API arrivent déjà en français (guide §4) : on les affiche
/// tels quels. Seules les validations locales sont traduites ici.
String? authFieldMessage(AppLocalizations l10n, AuthFieldError? error) {
  if (error == null) return null;
  if (error.message != null) return error.message;

  return switch (error.issue!) {
    AuthFieldIssue.required => l10n.fieldRequired,
    AuthFieldIssue.phoneIncomplete => l10n.fieldPhoneIncomplete,
    AuthFieldIssue.emailInvalid => l10n.fieldEmailInvalid,
    AuthFieldIssue.passwordTooShort => l10n.passwordTooShort,
    AuthFieldIssue.mismatch => l10n.passwordMismatch,
    AuthFieldIssue.termsRequired => l10n.registerTermsRequired,
  };
}

/// Bandeau d'erreur global d'un formulaire d'authentification.
///
/// Ne s'affiche que lorsqu'une erreur ne vise aucun champ précis.
class AuthFormBanner extends StatelessWidget {
  const AuthFormBanner({
    required this.state,
    this.invalidCredentialsAsLogin = false,
    super.key,
  });

  final AuthFormState state;

  /// Sur l'écran de connexion, un `401` n'est pas une session expirée mais un
  /// mauvais couple numéro / mot de passe : le message doit le dire.
  final bool invalidCredentialsAsLogin;

  @override
  Widget build(BuildContext context) {
    final failure = state.failure;
    if (failure == null) return const SizedBox.shrink();

    final l10n = AppLocalizations.of(context);
    final message = invalidCredentialsAsLogin && failure is UnauthorizedFailure
        ? l10n.loginInvalidCredentials
        : failure.localizedMessage(l10n);

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: InlineAlert(message: message, type: StatusType.danger),
    );
  }
}
