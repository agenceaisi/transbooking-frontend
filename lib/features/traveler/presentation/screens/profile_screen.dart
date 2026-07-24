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
import '../../../../core/widgets/status_badge.dart';
import '../../../auth/domain/account_profile.dart';
import '../../../auth/presentation/password_change_controller.dart';
import '../../../auth/presentation/widgets/auth_error_text.dart';
import '../../domain/created_booking.dart';
import '../../domain/payment_snapshot.dart';
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
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        _ProfileHeader(profile: profile),
        const SizedBox(height: AppSpacing.lg),
        _TabBar(current: _tab, onSelect: (tab) => setState(() => _tab = tab)),
        const SizedBox(height: AppSpacing.lg),
        if (_tab == _Tab.info) ...[
          _infoCard(profile),
          const SizedBox(height: AppSpacing.lg),
          _passwordCard(),
        ] else
          _historyList(),
        const SizedBox(height: AppSpacing.md),
        if (_tab == _Tab.info)
          Text(l10n.profileFieldNoteName, style: AppTextStyles.caption),
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
            _SubTab(
              label: l10n.profileHistoryTrips,
              selected: _historyTab == _HistoryTab.trips,
              onTap: () => setState(() => _historyTab = _HistoryTab.trips),
            ),
            const SizedBox(width: AppSpacing.xs),
            _SubTab(
              label: l10n.profileHistoryPayments,
              selected: _historyTab == _HistoryTab.payments,
              onTap: () => setState(() => _historyTab = _HistoryTab.payments),
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
      loading: () => const _ProfileSkeleton(),
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
      loading: () => const _ProfileSkeleton(),
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
      color: selected ? AppColors.primary50 : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.xs + 1,
          ),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brMd,
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
            ),
          ),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 13,
              weight: FontWeight.w600,
              color: selected ? AppColors.primary900 : AppColors.textSecondary,
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
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(payment.ticketNumber, style: AppTextStyles.referenceSmall),
                const SizedBox(height: 2),
                Text(
                  '${payment.methodDisplay} · '
                  '${AppTimeFormat.mediumDate(context, payment.date)}',
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${Fcfa.format(payment.amount)} ${l10n.currencySuffix}',
                style: AppTextStyles.amount,
              ),
              const SizedBox(height: 2),
              StatusBadge(
                label: payment.statusDisplay,
                type: _statusType(payment.status),
                showDot: false,
              ),
            ],
          ),
        ],
      ),
    );
  }

  StatusType _statusType(PaymentStatus? status) => switch (status) {
    PaymentStatus.paid => StatusType.success,
    PaymentStatus.pending || PaymentStatus.otpRequired => StatusType.warning,
    PaymentStatus.failed => StatusType.danger,
    PaymentStatus.refunded => StatusType.neutral,
    null => StatusType.neutral,
  };
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.profile});

  final AccountProfile profile;

  @override
  Widget build(BuildContext context) {
    final name = _profileDisplayName(profile) ?? profile.phone;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.primary,
            child: Text(
              travelerInitials(name),
              style: AppTypography.sans(
                size: 22,
                weight: FontWeight.w700,
                color: AppColors.onPrimary,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppTextStyles.sectionTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(profile.phone, style: AppTextStyles.referenceSmall),
              ],
            ),
          ),
        ],
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
        _TabButton(
          label: l10n.profileTabInfo,
          selected: current == _Tab.info,
          onTap: () => onSelect(_Tab.info),
        ),
        const SizedBox(width: AppSpacing.xs),
        _TabButton(
          label: l10n.profileTabHistory,
          selected: current == _Tab.history,
          onTap: () => onSelect(_Tab.history),
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
      color: selected ? AppColors.primary : AppColors.surface,
      borderRadius: AppRadii.brMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.brMd,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          decoration: BoxDecoration(
            borderRadius: AppRadii.brMd,
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
            ),
          ),
          child: Text(
            label,
            style: AppTypography.sans(
              size: 14,
              weight: FontWeight.w600,
              color: selected ? AppColors.onPrimary : AppColors.textStrong,
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
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
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
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${booking.originCity} → ${booking.destinationCity}',
                  style: AppTypography.sans(
                    size: 13.5,
                    weight: FontWeight.w700,
                  ),
                ),
                Text(
                  AppTimeFormat.mediumDate(context, booking.departureTime),
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              StatusBadge(
                label: cancelled
                    ? l10n.profileTripCancelled
                    : l10n.profileTripCompleted,
                type: cancelled ? StatusType.danger : StatusType.success,
                showDot: false,
              ),
              const SizedBox(height: AppSpacing.xxs),
              Text(
                '${Fcfa.format(booking.amount)} ${l10n.currencySuffix}',
                style: AppTextStyles.amount,
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
