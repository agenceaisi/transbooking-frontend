import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../password_change_controller.dart';
import '../widgets/auth_error_text.dart';

/// Changement de mot de passe de l'utilisateur connecté.
///
/// Accessible depuis « Mon profil » (phase 4C) ; l'écran existe déjà pour que
/// le parcours soit complet dès l'authentification.
class PasswordChangeScreen extends ConsumerStatefulWidget {
  const PasswordChangeScreen({super.key});

  @override
  ConsumerState<PasswordChangeScreen> createState() =>
      _PasswordChangeScreenState();
}

class _PasswordChangeScreenState extends ConsumerState<PasswordChangeScreen> {
  final _current = TextEditingController();
  final _next = TextEditingController();
  final _confirmation = TextEditingController();

  @override
  void dispose() {
    _current.dispose();
    _next.dispose();
    _confirmation.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final changed = await ref
        .read(passwordChangeControllerProvider.notifier)
        .change(
          currentPassword: _current.text,
          newPassword: _next.text,
          confirmation: _confirmation.text,
        );

    if (!changed || !mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(context.l10n.passwordChangeSuccess)));
    await Navigator.of(context).maybePop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = ref.watch(passwordChangeControllerProvider);
    final enabled = !state.isSubmitting;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(l10n.passwordChangeTitle)),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 460),
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.xl),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: AppRadii.brCard,
                  border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      l10n.passwordChangeSubtitle,
                      style: AppTextStyles.caption,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    AuthFormBanner(state: state),
                    AppTextField(
                      label: l10n.fieldCurrentPassword,
                      controller: _current,
                      obscure: true,
                      enabled: enabled,
                      errorText: authFieldMessage(
                        l10n,
                        state.errorFor('old_password'),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    AppTextField(
                      label: l10n.fieldNewPassword,
                      hintText: l10n.fieldPasswordHint,
                      controller: _next,
                      obscure: true,
                      enabled: enabled,
                      autofillHints: const [AutofillHints.newPassword],
                      errorText: authFieldMessage(
                        l10n,
                        state.errorFor('new_password'),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    AppTextField(
                      label: l10n.fieldConfirmPassword,
                      controller: _confirmation,
                      obscure: true,
                      enabled: enabled,
                      errorText: authFieldMessage(
                        l10n,
                        state.errorFor(
                          PasswordChangeController.confirmationField,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    PrimaryButton(
                      label: state.isThrottled
                          ? l10n.loginRetryIn(state.retryIn.inSeconds)
                          : l10n.passwordChangeSubmit,
                      isLoading: state.isSubmitting,
                      onPressed: state.isBusy ? null : _submit,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
