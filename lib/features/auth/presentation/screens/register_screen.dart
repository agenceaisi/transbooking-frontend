import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../registration_controllers.dart';
import '../widgets/auth_error_text.dart';
import '../widgets/auth_page.dart';

/// Nature du compte demandé.
enum _RegisterTab { traveler, company }

/// Écran d'inscription (maquette « Écrans publics · Écran 3 »).
///
/// Deux parcours distincts : le voyageur obtient un compte actif immédiatement,
/// la compagnie dépose une **demande** que le super administrateur validera.
class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  _RegisterTab _tab = _RegisterTab.traveler;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return AuthPage(
      maxWidth: 560,
      title: l10n.registerTitle,
      subtitle: l10n.registerSubtitle,
      footer: AuthFooterLink(
        question: l10n.registerHasAccount,
        actionLabel: l10n.actionSignIn,
        onPressed: () => context.goNamed(AppRoutes.loginName),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: _TabCard(
                  icon: Icons.person_outline_rounded,
                  title: l10n.registerTabTraveler,
                  hint: l10n.registerTabTravelerHint,
                  selected: _tab == _RegisterTab.traveler,
                  onTap: () => setState(() => _tab = _RegisterTab.traveler),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: _TabCard(
                  icon: Icons.apartment_rounded,
                  title: l10n.registerTabCompany,
                  hint: l10n.registerTabCompanyHint,
                  selected: _tab == _RegisterTab.company,
                  onTap: () => setState(() => _tab = _RegisterTab.company),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          AuthCard(
            child: switch (_tab) {
              _RegisterTab.traveler => const _TravelerForm(),
              _RegisterTab.company => const _CompanyForm(),
            },
          ),
        ],
      ),
    );
  }
}

/// Formulaire d'inscription voyageur.
class _TravelerForm extends ConsumerStatefulWidget {
  const _TravelerForm();

  @override
  ConsumerState<_TravelerForm> createState() => _TravelerFormState();
}

class _TravelerFormState extends ConsumerState<_TravelerForm> {
  final _prenom = TextEditingController();
  final _nom = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _termsAccepted = false;

  @override
  void dispose() {
    _prenom.dispose();
    _nom.dispose();
    _phone.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final created = await ref
        .read(travelerRegistrationControllerProvider.notifier)
        .register(
          prenom: _prenom.text,
          nom: _nom.text,
          localPhone: _phone.text,
          password: _password.text,
          email: _email.text,
          termsAccepted: _termsAccepted,
        );

    if (!created || !mounted) return;
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    messenger.showSnackBar(
      SnackBar(content: Text(context.l10n.registerSuccess)),
    );
    router.goNamed(AppRoutes.loginName);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = ref.watch(travelerRegistrationControllerProvider);
    final enabled = !state.isSubmitting;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AuthFormBanner(state: state),
        _ResponsivePair(
          first: AppTextField(
            label: l10n.fieldFirstName,
            hintText: l10n.fieldFirstNameHint,
            controller: _prenom,
            enabled: enabled,
            textCapitalization: TextCapitalization.words,
            autofillHints: const [AutofillHints.givenName],
            errorText: authFieldMessage(l10n, state.errorFor('prenom')),
          ),
          second: AppTextField(
            label: l10n.fieldLastName,
            hintText: l10n.fieldLastNameHint,
            controller: _nom,
            enabled: enabled,
            textCapitalization: TextCapitalization.words,
            autofillHints: const [AutofillHints.familyName],
            errorText: authFieldMessage(l10n, state.errorFor('nom')),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        PhoneField(
          controller: _phone,
          enabled: enabled,
          errorText: authFieldMessage(l10n, state.errorFor('phone')),
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          label: l10n.fieldEmail,
          hintText: l10n.fieldEmailHint,
          controller: _email,
          enabled: enabled,
          optional: true,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          errorText: authFieldMessage(l10n, state.errorFor('email')),
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          label: l10n.loginPasswordLabel,
          hintText: l10n.fieldPasswordHint,
          controller: _password,
          enabled: enabled,
          obscure: true,
          autofillHints: const [AutofillHints.newPassword],
          errorText: authFieldMessage(l10n, state.errorFor('password')),
        ),
        const SizedBox(height: AppSpacing.md),
        _TermsCheckbox(
          value: _termsAccepted,
          enabled: enabled,
          onChanged: (value) => setState(() => _termsAccepted = value),
          errorText: authFieldMessage(
            l10n,
            state.errorFor(TravelerRegistrationController.termsField),
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        PrimaryButton(
          label: state.isThrottled
              ? l10n.loginRetryIn(state.retryIn.inSeconds)
              : l10n.registerSubmitTraveler,
          isLoading: state.isSubmitting,
          onPressed: state.isBusy ? null : _submit,
        ),
      ],
    );
  }
}

/// Demande de compte compagnie — aucun compte n'est créé à ce stade.
class _CompanyForm extends ConsumerStatefulWidget {
  const _CompanyForm();

  @override
  ConsumerState<_CompanyForm> createState() => _CompanyFormState();
}

class _CompanyFormState extends ConsumerState<_CompanyForm> {
  final _companyName = TextEditingController();
  final _managerName = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _city = TextEditingController();

  @override
  void dispose() {
    _companyName.dispose();
    _managerName.dispose();
    _phone.dispose();
    _email.dispose();
    _city.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final sent = await ref
        .read(companyRequestControllerProvider.notifier)
        .submitRequest(
          companyName: _companyName.text,
          managerName: _managerName.text,
          localPhone: _phone.text,
          email: _email.text,
          city: _city.text,
        );

    if (!sent || !mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(context.l10n.companyRequestSuccess)));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = ref.watch(companyRequestControllerProvider);
    final enabled = !state.isSubmitting;

    if (state.succeeded) {
      return InlineAlert(
        type: StatusType.success,
        title: l10n.companyRequestSuccess,
        message: l10n.companyRequestNotice,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AuthFormBanner(state: state),
        InlineAlert(
          title: l10n.companyRequestNoticeTitle,
          message: l10n.companyRequestNotice,
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          label: l10n.fieldCompanyName,
          hintText: l10n.fieldCompanyNameHint,
          controller: _companyName,
          enabled: enabled,
          textCapitalization: TextCapitalization.words,
          errorText: authFieldMessage(l10n, state.errorFor('company_name')),
        ),
        const SizedBox(height: AppSpacing.md),
        _ResponsivePair(
          first: AppTextField(
            label: l10n.fieldManagerName,
            hintText: l10n.fieldManagerNameHint,
            controller: _managerName,
            enabled: enabled,
            textCapitalization: TextCapitalization.words,
            errorText: authFieldMessage(l10n, state.errorFor('manager_name')),
          ),
          second: PhoneField(
            controller: _phone,
            enabled: enabled,
            errorText: authFieldMessage(l10n, state.errorFor('phone')),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          label: l10n.fieldProEmail,
          hintText: l10n.fieldProEmailHint,
          controller: _email,
          enabled: enabled,
          keyboardType: TextInputType.emailAddress,
          errorText: authFieldMessage(l10n, state.errorFor('email')),
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          label: l10n.fieldCompanyCity,
          hintText: l10n.fieldCompanyCityHint,
          controller: _city,
          enabled: enabled,
          textCapitalization: TextCapitalization.sentences,
          errorText: authFieldMessage(l10n, state.errorFor('city')),
        ),
        const SizedBox(height: AppSpacing.md),
        const _DocumentsPlaceholder(),
        const SizedBox(height: AppSpacing.lg),
        PrimaryButton(
          label: state.isThrottled
              ? l10n.loginRetryIn(state.retryIn.inSeconds)
              : l10n.companyRequestSubmit,
          isLoading: state.isSubmitting,
          onPressed: state.isBusy ? null : _submit,
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          l10n.companyRequestFootnote,
          style: AppTextStyles.caption.copyWith(color: AppColors.textTertiary),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

/// Deux champs côte à côte sur large écran, empilés sur mobile.
class _ResponsivePair extends StatelessWidget {
  const _ResponsivePair({required this.first, required this.second});

  final Widget first;
  final Widget second;

  /// En dessous, la colonne unique reste plus lisible qu'une paire écrasée.
  static const double _breakpoint = 420;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < _breakpoint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              first,
              const SizedBox(height: AppSpacing.md),
              second,
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: first),
            const SizedBox(width: AppSpacing.sm),
            Expanded(child: second),
          ],
        );
      },
    );
  }
}

/// Sélecteur de type de compte, en tête de l'écran.
class _TabCard extends StatelessWidget {
  const _TabCard({
    required this.icon,
    required this.title,
    required this.hint,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String hint;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      selected: selected,
      button: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brCard,
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: selected ? AppColors.primary50 : AppColors.surface,
            borderRadius: AppRadii.brCard,
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: selected ? AppColors.primary : AppColors.background,
                  borderRadius: AppRadii.brMd,
                ),
                child: Icon(
                  icon,
                  size: 20,
                  color: selected
                      ? AppColors.onPrimary
                      : AppColors.textTertiary,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.bodyStrong.copyWith(
                        fontSize: 14.5,
                        color: selected
                            ? AppColors.primary900
                            : AppColors.textStrong,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      hint,
                      style: AppTextStyles.caption.copyWith(
                        fontSize: 11.5,
                        color: AppColors.textTertiary,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Acceptation des conditions — obligatoire avant l'envoi.
class _TermsCheckbox extends StatelessWidget {
  const _TermsCheckbox({
    required this.value,
    required this.enabled,
    required this.onChanged,
    this.errorText,
  });

  final bool value;
  final bool enabled;
  final ValueChanged<bool> onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: enabled ? () => onChanged(!value) : null,
          borderRadius: AppRadii.brSm,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: value,
                onChanged: enabled
                    ? (checked) => onChanged(checked ?? false)
                    : null,
                activeColor: AppColors.primary,
                visualDensity: VisualDensity.compact,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.xs + 2),
                  child: Text(
                    // Les liens vers les documents contractuels ne sont pas
                    // encore fournis : le texte reste informatif.
                    l10n.registerTerms,
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.textStrong,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(left: AppSpacing.xxs),
            child: Text(
              errorText!,
              style: AppTextStyles.caption.copyWith(
                color: AppStatusColors.danger.foreground,
              ),
            ),
          ),
      ],
    );
  }
}

/// Zone d'import de documents, présente mais inactive.
///
/// Le schéma attend une URI (`CompanyRegistrationRequest.documents`) : aucun
/// service de dépôt de fichier n'est exposé à l'application. On l'annonce
/// plutôt que de proposer un bouton qui échouerait (CLAUDE.md §7).
class _DocumentsPlaceholder extends StatelessWidget {
  const _DocumentsPlaceholder();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.companyDocumentsLabel, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xxs + 2),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
          decoration: BoxDecoration(
            color: AppColors.surfaceSubtle,
            borderRadius: AppRadii.brLg,
            border: Border.all(color: AppColors.borderStrong),
          ),
          child: Column(
            children: [
              const Icon(
                Icons.description_outlined,
                color: AppColors.textTertiary,
                size: 22,
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                l10n.featureComingSoon,
                style: AppTextStyles.bodyStrong.copyWith(
                  fontSize: 13.5,
                  color: AppColors.textTertiary,
                ),
              ),
              const SizedBox(height: AppSpacing.xxs / 2),
              Text(
                l10n.companyDocumentsHint,
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.textTertiary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
