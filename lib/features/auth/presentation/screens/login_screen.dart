import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../login_controller.dart';
import '../widgets/auth_error_text.dart';
import '../widgets/auth_page.dart';

/// Écran de connexion (maquette « Écrans publics · Écran 2 »).
///
/// L'API n'accepte que le téléphone comme identifiant (guide §6.1) : la
/// bascule « Téléphone / E-mail » de la maquette n'est donc pas reprise, plutôt
/// que d'afficher un champ qui échouerait à coup sûr.
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _phone = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _phone.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    await ref
        .read(loginControllerProvider.notifier)
        .signIn(localPhone: _phone.text, password: _password.text);
    // En cas de succès, le routeur aiguille seul : la session a changé.
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = ref.watch(loginControllerProvider);

    return AuthPage(
      title: l10n.loginTitle,
      subtitle: l10n.loginSubtitle,
      footer: AuthFooterLink(
        question: l10n.loginNoAccount,
        actionLabel: l10n.loginCreateAccount,
        onPressed: () => context.goNamed(AppRoutes.registerName),
      ),
      child: AuthCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AuthFormBanner(state: state, invalidCredentialsAsLogin: true),
            PhoneField(
              controller: _phone,
              enabled: !state.isSubmitting,
              autofocus: true,
              textInputAction: TextInputAction.next,
              errorText: authFieldMessage(l10n, state.errorFor('phone')),
              onChanged: (_) =>
                  ref.read(loginControllerProvider.notifier).clearFailure(),
            ),
            const SizedBox(height: AppSpacing.md),
            AppTextField(
              label: l10n.loginPasswordLabel,
              controller: _password,
              obscure: true,
              enabled: !state.isSubmitting,
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.password],
              errorText: authFieldMessage(l10n, state.errorFor('password')),
              onSubmitted: (_) => state.isBusy ? null : _submit(),
              labelTrailing: const _ForgotPasswordLink(),
            ),
            const SizedBox(height: AppSpacing.lg),
            PrimaryButton(
              label: state.isThrottled
                  ? l10n.loginRetryIn(state.retryIn.inSeconds)
                  : l10n.actionSignIn,
              isLoading: state.isSubmitting,
              onPressed: state.isBusy ? null : _submit,
            ),
          ],
        ),
      ),
    );
  }
}

/// Lien « Mot de passe oublié ? ».
///
/// Inactif : aucune route publique de réinitialisation n'existe côté API
/// (CLAUDE.md §7 — ne rien brancher qui n'existe pas). Une pression explique
/// la marche à suivre plutôt que de ne rien faire.
class _ForgotPasswordLink extends StatelessWidget {
  const _ForgotPasswordLink();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Tooltip(
      message: l10n.featureComingSoon,
      child: GestureDetector(
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.loginForgotPasswordUnavailable)),
        ),
        child: Text(
          l10n.loginForgotPassword,
          style: AppTextStyles.caption.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.textTertiary,
          ),
        ),
      ),
    );
  }
}
