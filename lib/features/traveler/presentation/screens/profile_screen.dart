import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/utils/phone_number.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/phone_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../../auth/domain/account_profile.dart';
import '../../../auth/presentation/password_change_controller.dart';
import '../../../auth/presentation/session_controller.dart';
import '../../../auth/presentation/widgets/auth_error_text.dart';
import '../../domain/created_booking.dart';
import '../../domain/traveler_booking.dart';
import '../../domain/traveler_payment.dart';
import '../profile_edit_controller.dart';
import '../traveler_providers.dart';
import '../widgets/traveler_nav.dart';
import '../widgets/traveler_shell.dart';

/// Mon profil (maquette « Mon profil ») : informations modifiables, changement
/// de mot de passe, historique des voyages.
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

enum _Tab { info, history }

enum _HistoryTab { trips, payments }

/// Nom complet affiché, ou `null` si ni prénom ni nom ne sont connus.
String? _profileDisplayName(AccountProfile profile) {
  final parts = [
    profile.prenom,
    profile.nom,
  ].where((part) => part != null && part.trim().isNotEmpty).toList();
  return parts.isEmpty ? null : parts.join(' ');
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _currentPwController = TextEditingController();
  final _newPwController = TextEditingController();
  final _confirmPwController = TextEditingController();

  _Tab _tab = _Tab.info;
  _HistoryTab _historyTab = _HistoryTab.trips;
  String _initialLocalPhone = '';
  String _initialEmail = '';
  bool _initialized = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    _currentPwController.dispose();
    _newPwController.dispose();
    _confirmPwController.dispose();
    super.dispose();
  }

  void _syncFrom(AccountProfile profile) {
    final local = _localPart(profile.phone);
    _initialLocalPhone = local;
    _initialEmail = profile.email ?? '';
    _phoneController.text = local;
    _emailController.text = profile.email ?? '';
    _initialized = true;
  }

  static String _localPart(String phone) {
    final digits = BfPhone.digitsOf(phone);
    return digits.length > BfPhone.localLength
        ? digits.substring(digits.length - BfPhone.localLength)
        : digits;
  }

  bool get _infoChanged =>
      _phoneController.text.trim() != _initialLocalPhone ||
      _emailController.text.trim() != _initialEmail;

  Future<void> _saveInfo() async {
    final localPhone = BfPhone.digitsOf(_phoneController.text);
    final phoneChanged = localPhone != _initialLocalPhone;
    final emailChanged = _emailController.text.trim() != _initialEmail;

    final ok = await ref
        .read(profileEditProvider.notifier)
        .submit(
          phone: phoneChanged ? BfPhone.full(localPhone) : null,
          email: emailChanged ? _emailController.text.trim() : null,
        );

    if (!mounted) return;
    if (ok) {
      _initialLocalPhone = localPhone;
      _initialEmail = _emailController.text.trim();
      setState(() {});
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(context.l10n.profileInfoSaved)));
    }
  }

  Future<void> _savePassword() async {
    final changed = await ref
        .read(passwordChangeControllerProvider.notifier)
        .change(
          currentPassword: _currentPwController.text,
          newPassword: _newPwController.text,
          confirmation: _confirmPwController.text,
        );
    if (!changed || !mounted) return;
    _currentPwController.clear();
    _newPwController.clear();
    _confirmPwController.clear();
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(context.l10n.passwordChangeSuccess)),
      );
  }

  Widget _logoutButton() {
    return SecondaryButton(
      label: context.l10n.actionSignOut,
      icon: Icons.logout,
      isDestructive: true,
      onPressed: _confirmLogout,
    );
  }

  /// Confirmation avant déconnexion : la reconnexion exige les identifiants,
  /// on ne déconnecte donc jamais sur un simple appui accidentel.
  Future<void> _confirmLogout() async {
    final l10n = context.l10n;
    final confirmed = await showDialog<bool>(
      context: context,
      barrierColor: AppColors.scrim,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.profileLogoutTitle, style: AppTextStyles.dialogTitle),
        content: Text(
          l10n.profileLogoutMessage,
          style: AppTypography.sans(
            size: 14,
            height: 1.55,
            color: AppColors.textSecondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.actionCancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            style: TextButton.styleFrom(
              foregroundColor: AppStatusColors.danger.foreground,
            ),
            child: Text(l10n.actionSignOut),
          ),
        ],
      ),
    );

    if (confirmed != true) return;
    await ref.read(sessionControllerProvider.notifier).signOut();
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(travelerProfileProvider);

    return TravelerShell(
      current: TravelerDestination.profile,
      child: profile.when(
        loading: () => const _ProfileSkeleton(),
        error: (error, _) => ErrorState(
          failure: error is Failure ? error : null,
          onRetry: () => ref.invalidate(travelerProfileProvider),
        ),
        data: (data) {
          if (!_initialized) _syncFrom(data);
          return _content(data);
        },
      ),
    );
  }

  Widget _content(AccountProfile profile) {
    final l10n = context.l10n;
    // Le nombre de voyages alimente le sous-titre de l'en-tête ; `null` tant
    // que la liste n'est pas chargée (on n'invente aucun compteur).
    final tripCount = ref.watch(myBookingsProvider).value?.length;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _ProfileHeader(profile: profile, tripCount: tripCount),
        // Bandeau blanc des onglets principaux, flush sous l'en-tête indigo.
        Container(
          color: AppColors.surface,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.sm - 2,
          ),
          child: _TabBar(
            current: _tab,
            onSelect: (tab) => setState(() => _tab = tab),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (_tab == _Tab.info) ...[
                _infoCard(profile),
                const SizedBox(height: AppSpacing.lg),
                _passwordCard(),
                const SizedBox(height: AppSpacing.lg),
                _logoutButton(),
              ] else
                _historyList(),
              const SizedBox(height: AppSpacing.md),
              if (_tab == _Tab.info)
                Text(l10n.profileFieldNoteName, style: AppTextStyles.caption),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoCard(AccountProfile profile) {
    final l10n = context.l10n;
    final edit = ref.watch(profileEditProvider);

    return _Card(
      title: l10n.profilePersonalInfo,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _ReadOnlyField(
            label: l10n.profileFullName,
            value: _profileDisplayName(profile) ?? '—',
          ),
          const SizedBox(height: AppSpacing.md),
          PhoneField(
            label: l10n.profilePhoneEditable,
            controller: _phoneController,
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            label: l10n.profileEmailEditable,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: l10n.fieldEmailHint,
            onChanged: (_) => setState(() {}),
          ),
          if (edit.hasError) ...[
            const SizedBox(height: AppSpacing.md),
            InlineAlert(
              type: StatusType.danger,
              message: edit.error is Failure
                  ? (edit.error! as Failure).localizedMessage(l10n)
                  : l10n.failureUnexpected,
            ),
          ],
          const SizedBox(height: AppSpacing.md),
          PrimaryButton(
            label: _infoChanged ? l10n.profileSaveInfo : l10n.profileNoChanges,
            onPressed: _infoChanged ? _saveInfo : null,
            isLoading: edit.isLoading,
          ),
        ],
      ),
    );
  }

  Widget _passwordCard() {
    final l10n = context.l10n;
    final state = ref.watch(passwordChangeControllerProvider);
    final enabled = !state.isSubmitting;

    return _Card(
      title: l10n.profilePasswordTitle,
      subtitle: l10n.profilePasswordSubtitle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AuthFormBanner(state: state),
          AppTextField(
            label: l10n.fieldCurrentPassword,
            controller: _currentPwController,
            obscure: true,
            enabled: enabled,
            errorText: authFieldMessage(l10n, state.errorFor('old_password')),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            label: l10n.fieldNewPassword,
            hintText: l10n.fieldPasswordHint,
            controller: _newPwController,
            obscure: true,
            enabled: enabled,
            errorText: authFieldMessage(l10n, state.errorFor('new_password')),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            label: l10n.fieldConfirmPassword,
            controller: _confirmPwController,
            obscure: true,
            enabled: enabled,
            errorText: authFieldMessage(
              l10n,
              state.errorFor(PasswordChangeController.confirmationField),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          PrimaryButton(
            label: state.isThrottled
                ? l10n.loginRetryIn(state.retryIn.inSeconds)
                : l10n.profilePasswordSubmit,
            isLoading: state.isSubmitting,
            onPressed: state.isBusy ? null : _savePassword,
          ),
        ],
      ),
    );
  }

  Widget _historyList() {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: _SubTab(
                label: l10n.profileHistoryTrips,
                selected: _historyTab == _HistoryTab.trips,
                onTap: () => setState(() => _historyTab = _HistoryTab.trips),
              ),
            ),
            const SizedBox(width: AppSpacing.xs),
            Expanded(
              child: _SubTab(
                label: l10n.profileHistoryPayments,
                selected: _historyTab == _HistoryTab.payments,
                onTap: () => setState(() => _historyTab = _HistoryTab.payments),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        if (_historyTab == _HistoryTab.trips)
          _pastTrips()
        else
          _paymentsHistory(),
      ],
    );
  }

  Widget _pastTrips() {
    final l10n = context.l10n;
    final bookings = ref.watch(myBookingsProvider);
    return bookings.when(
      loading: () => const _HistorySkeleton(),
      error: (error, _) => ErrorState(
        failure: error is Failure ? error : null,
        onRetry: () => ref.invalidate(myBookingsProvider),
      ),
      data: (list) {
        final past = list.where((booking) => booking.isPast).toList();
        if (past.isEmpty) {
          return EmptyState(
            icon: Icons.history,
            title: l10n.profileHistoryEmptyTitle,
            message: l10n.profileHistoryEmptyMessage,
          );
        }
        return Column(
          children: [
            for (final booking in past)
              Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                child: _HistoryRow(booking: booking),
              ),
          ],
        );
      },
    );
  }

  Widget _paymentsHistory() {
    final l10n = context.l10n;
    final payments = ref.watch(travelerPaymentsProvider);
    return payments.when(
      loading: () => const _HistorySkeleton(),
      error: (error, _) => ErrorState(
        failure: error is Failure ? error : null,
        onRetry: () => ref.invalidate(travelerPaymentsProvider),
      ),
      data: (list) {
        if (list.isEmpty) {
          return EmptyState(
            icon: Icons.receipt_long_outlined,
            title: l10n.profilePaymentsEmptyTitle,
            message: l10n.profilePaymentsEmptyMessage,
          );
        }
        return Column(
          children: [
            for (final payment in list)
              Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                child: _PaymentRow(payment: payment),
              ),
          ],
        );
      },
    );
  }
}

class _SubTab extends StatelessWidget {
  const _SubTab({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary : AppColors.surfaceSubtle,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs + 1),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 13,
              weight: FontWeight.w600,
              color: selected ? AppColors.onPrimary : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}

class _PaymentRow extends StatelessWidget {
  const _PaymentRow({required this.payment});

  final TravelerPayment payment;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md - 2,
        vertical: AppSpacing.sm + 1,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brLg,
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _methodColor(payment.methodWire),
              borderRadius: AppRadii.brMd,
            ),
            child: Text(
              _methodAbbr(payment.methodDisplay),
              style: AppTypography.sans(
                size: 11,
                weight: FontWeight.w800,
                color: AppColors.white,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.sm - 1),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  payment.ticketNumber,
                  style: AppTypography.mono(
                    size: 12.5,
                    weight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  '${payment.methodDisplay} · '
                  '${AppTimeFormat.mediumDate(context, payment.date)}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.sans(
                    size: 11,
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.xs),
          Text(
            '${Fcfa.format(payment.amount)} ${l10n.currencySuffix}',
            style: AppTypography.sans(
              size: 13,
              weight: FontWeight.w700,
              tabular: true,
            ),
          ),
        ],
      ),
    );
  }
}

/// Couleurs de marque des opérateurs Mobile Money (identité externe des
/// prestataires, hors jetons du design system) ; repli sur l'indigo pour les
/// autres moyens (espèces, opérateur inconnu).
Color _methodColor(String methodWire) => switch (methodWire) {
  'orange_money' => const Color(0xFFFF6600),
  'moov_money' => const Color(0xFF0A66C2),
  'coris_money' => const Color(0xFFC8102E),
  _ => AppColors.primary,
};

/// Abréviation deux lettres tirée du libellé : « Orange Money » → « OM ».
String _methodAbbr(String display) {
  final words = display.trim().split(RegExp(r'\s+'))
    ..removeWhere((word) => word.isEmpty);
  if (words.isEmpty) return '—';
  if (words.length == 1) {
    final word = words.first;
    return (word.length >= 2 ? word.substring(0, 2) : word).toUpperCase();
  }
  return words.take(2).map((word) => word[0]).join().toUpperCase();
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.profile, this.tripCount});

  final AccountProfile profile;

  /// Nombre de voyages ; `null` tant que la liste n'est pas chargée.
  final int? tripCount;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final name = _profileDisplayName(profile) ?? profile.phone;
    // En-tête indigo pleine largeur, flush sous la barre système.
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            AppSpacing.lg,
            AppSpacing.md,
            AppSpacing.md + 2,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary50,
                child: Text(
                  travelerInitials(name),
                  style: AppTypography.sans(
                    size: 22,
                    weight: FontWeight.w700,
                    color: AppColors.primary900,
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.sm - 2),
              Text(
                name,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.sans(
                  size: 18,
                  weight: FontWeight.w800,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                l10n.profileHeaderTrips(tripCount ?? 0),
                textAlign: TextAlign.center,
                style: AppTypography.sans(
                  size: 12,
                  color: AppColors.onPrimaryMuted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({required this.current, required this.onSelect});

  final _Tab current;
  final ValueChanged<_Tab> onSelect;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      children: [
        Expanded(
          child: _TabButton(
            label: l10n.profileTabInfo,
            selected: current == _Tab.info,
            onTap: () => onSelect(_Tab.info),
          ),
        ),
        const SizedBox(width: AppSpacing.xs),
        Expanded(
          child: _TabButton(
            label: l10n.profileTabHistory,
            selected: current == _Tab.history,
            onTap: () => onSelect(_Tab.history),
          ),
        ),
      ],
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary : AppColors.surfaceSubtle,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm - 1),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 14,
              weight: FontWeight.w600,
              color: selected ? AppColors.onPrimary : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.title, required this.child, this.subtitle});

  final String title;
  final String? subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title, style: AppTextStyles.subtitle),
          if (subtitle != null) ...[
            const SizedBox(height: 2),
            Text(subtitle!, style: AppTextStyles.caption),
          ],
          const SizedBox(height: AppSpacing.md),
          child,
        ],
      ),
    );
  }
}

class _ReadOnlyField extends StatelessWidget {
  const _ReadOnlyField({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.label),
        const SizedBox(height: AppSpacing.xxs + 2),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.sm + 2,
          ),
          decoration: BoxDecoration(
            color: AppColors.surfaceSubtle,
            borderRadius: AppRadii.brMd,
            border: Border.all(color: AppColors.border),
          ),
          child: Text(
            value,
            style: AppTypography.sans(
              size: 14,
              weight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ),
        ),
      ],
    );
  }
}

class _HistoryRow extends StatelessWidget {
  const _HistoryRow({required this.booking});

  final TravelerBooking booking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cancelled =
        booking.status == BookingStatus.cancelled ||
        booking.status == BookingStatus.refunded;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md - 2,
        vertical: AppSpacing.sm + 1,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brLg,
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.primary50,
                  borderRadius: AppRadii.brMd,
                ),
                child: const Icon(
                  Icons.directions_bus_outlined,
                  size: 18,
                  color: AppColors.primary900,
                ),
              ),
              const SizedBox(width: AppSpacing.sm - 2),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          booking.originCity,
                          style: AppTypography.sans(
                            size: 13,
                            weight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.xxs + 2),
                        const Icon(
                          Icons.arrow_forward,
                          size: 14,
                          color: AppColors.textTertiary,
                        ),
                        const SizedBox(width: AppSpacing.xxs + 2),
                        Flexible(
                          child: Text(
                            booking.destinationCity,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.sans(
                              size: 13,
                              weight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 1),
                    Text(
                      '${AppTimeFormat.mediumDate(context, booking.departureTime)}'
                      ' · ${booking.companyName}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.sans(
                        size: 11,
                        color: AppColors.textTertiary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              StatusBadge(
                label: cancelled
                    ? l10n.profileTripCancelled
                    : l10n.profileTripCompleted,
                type: cancelled ? StatusType.danger : StatusType.success,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs + 2),
          const Divider(height: 1, thickness: 1, color: AppColors.borderSoft),
          const SizedBox(height: AppSpacing.xs + 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.profileTripAmountPaid,
                style: AppTypography.sans(
                  size: 11.5,
                  color: AppColors.textTertiary,
                ),
              ),
              Text(
                '${Fcfa.format(booking.amount)} ${l10n.currencySuffix}',
                style: AppTypography.sans(
                  size: 13,
                  weight: FontWeight.w700,
                  tabular: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProfileSkeleton extends StatelessWidget {
  const _ProfileSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: const [
        LoadingSkeleton(height: 84, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.lg),
        LoadingSkeleton(height: 260, borderRadius: AppRadii.brCard),
      ],
    );
  }
}

/// Squelette non défilant des sous-onglets d'historique : il vit **à
/// l'intérieur** du `ListView` de `_content`, donc jamais de viewport imbriqué.
class _HistorySkeleton extends StatelessWidget {
  const _HistorySkeleton();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoadingSkeleton(height: 72, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.sm),
        LoadingSkeleton(height: 72, borderRadius: AppRadii.brCard),
        SizedBox(height: AppSpacing.sm),
        LoadingSkeleton(height: 72, borderRadius: AppRadii.brCard),
      ],
    );
  }
}
