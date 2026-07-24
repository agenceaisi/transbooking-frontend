import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../domain/traveler_booking.dart';
import '../booking_cancel_controller.dart';

/// Ouvre la modale d'annulation d'une réservation (maquette « Mes réservations »
/// — modale d'annulation avec politique de remboursement).
Future<void> showBookingCancelDialog(
  BuildContext context,
  WidgetRef ref, {
  required TravelerBooking booking,
}) {
  return showDialog<void>(
    context: context,
    barrierColor: AppColors.scrim,
    builder: (_) => _BookingCancelDialog(booking: booking),
  );
}

class _BookingCancelDialog extends ConsumerStatefulWidget {
  const _BookingCancelDialog({required this.booking});

  final TravelerBooking booking;

  @override
  ConsumerState<_BookingCancelDialog> createState() =>
      _BookingCancelDialogState();
}

class _BookingCancelDialogState extends ConsumerState<_BookingCancelDialog> {
  final _reasonController = TextEditingController();

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  Future<void> _confirm() async {
    final l10n = context.l10n;
    final reason = _reasonController.text.trim().isEmpty
        ? l10n.bookingsCancelDefaultReason
        : _reasonController.text.trim();

    final ok = await ref
        .read(bookingCancelProvider.notifier)
        .cancel(bookingId: widget.booking.id, reason: reason);

    if (!mounted) return;
    if (ok) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l10n.bookingsCancelSuccess)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = ref.watch(bookingCancelProvider);
    final booking = widget.booking;

    return Dialog(
      insetPadding: const EdgeInsets.all(AppSpacing.lg),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 440),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 52,
                height: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppStatusColors.danger.background,
                  borderRadius: AppRadii.brMd,
                ),
                child: Icon(
                  Icons.warning_amber_rounded,
                  size: 26,
                  color: AppStatusColors.danger.foreground,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(l10n.bookingsCancelTitle, style: AppTextStyles.dialogTitle),
              const SizedBox(height: AppSpacing.xs),
              Text.rich(
                TextSpan(
                  style: AppTypography.sans(
                    size: 14,
                    height: 1.55,
                    color: AppColors.textSecondary,
                  ),
                  children: [
                    TextSpan(text: l10n.bookingsCancelIntro),
                    TextSpan(
                      text: ' ${booking.ticketNumber} ',
                      style: AppTextStyles.referenceSmall,
                    ),
                    TextSpan(
                      text:
                          '(${booking.originCity} → ${booking.destinationCity}). ',
                    ),
                    TextSpan(text: l10n.bookingsCancelIrreversible),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              InlineAlert(
                type: StatusType.warning,
                message: l10n.bookingsCancelRefundNote,
              ),
              const SizedBox(height: AppSpacing.md),
              AppTextField(
                label: l10n.bookingsCancelReasonLabel,
                controller: _reasonController,
                optional: true,
                hintText: l10n.bookingsCancelReasonHint,
                maxLength: 200,
                enabled: !state.isLoading,
              ),
              if (state.hasError) ...[
                const SizedBox(height: AppSpacing.md),
                InlineAlert(
                  type: StatusType.danger,
                  message: state.error is Failure
                      ? (state.error! as Failure).localizedMessage(l10n)
                      : l10n.failureUnexpected,
                ),
              ],
              const SizedBox(height: AppSpacing.lg),
              Row(
                children: [
                  Expanded(
                    child: SecondaryButton(
                      label: l10n.bookingsCancelKeep,
                      onPressed: state.isLoading
                          ? null
                          : () => Navigator.of(context).pop(),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _DestructiveButton(
                      label: l10n.bookingsCancelConfirm,
                      isLoading: state.isLoading,
                      onPressed: state.isLoading ? null : _confirm,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Bouton d'action destructive plein rouge (confirmation d'annulation).
class _DestructiveButton extends StatelessWidget {
  const _DestructiveButton({
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: AppStatusColors.danger.dot,
        foregroundColor: AppColors.white,
        disabledBackgroundColor: AppColors.borderStrong,
        minimumSize: const Size.fromHeight(AppSizes.control),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.brMd),
        textStyle: AppTextStyles.button,
      ),
      child: isLoading
          ? const SizedBox(
              height: 18,
              width: 18,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.white,
              ),
            )
          : Text(label),
    );
  }
}
