import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../boarding_list_controller.dart';

/// Modale « Valider l'embarquement ? » (maquette « Liste passagers &
/// Embarquement ») — action définitive, verrouille la liste
/// (`boarding/validate`, guide §6.7).
Future<void> showValidateBoardingDialog(
  BuildContext context,
  WidgetRef ref, {
  required int tripId,
  required int boardedCount,
  required int absentCount,
}) {
  return showDialog<void>(
    context: context,
    barrierColor: AppColors.scrim,
    builder: (_) => _ValidateBoardingDialog(
      tripId: tripId,
      boardedCount: boardedCount,
      absentCount: absentCount,
    ),
  );
}

class _ValidateBoardingDialog extends ConsumerStatefulWidget {
  const _ValidateBoardingDialog({
    required this.tripId,
    required this.boardedCount,
    required this.absentCount,
  });

  final int tripId;
  final int boardedCount;
  final int absentCount;

  @override
  ConsumerState<_ValidateBoardingDialog> createState() =>
      _ValidateBoardingDialogState();
}

class _ValidateBoardingDialogState
    extends ConsumerState<_ValidateBoardingDialog> {
  bool _submitting = false;
  Failure? _error;

  Future<void> _confirm() async {
    final l10n = context.l10n;
    setState(() {
      _submitting = true;
      _error = null;
    });
    try {
      await ref
          .read(boardingListControllerProvider(widget.tripId).notifier)
          .validate();
      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(l10n.agentBoardingValidatedToast)),
        );
    } on Failure catch (failure) {
      setState(() {
        _submitting = false;
        _error = failure;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Dialog(
      insetPadding: const EdgeInsets.all(AppSpacing.lg),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 440),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppStatusColors.warning.background,
                  borderRadius: AppRadii.brMd,
                ),
                child: Icon(
                  Icons.warning_amber_rounded,
                  color: AppStatusColors.warning.foreground,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                l10n.agentBoardingValidateTitle,
                style: AppTextStyles.dialogTitle,
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                l10n.agentBoardingValidateMessage(
                  widget.boardedCount,
                  widget.absentCount,
                ),
                style: AppTextStyles.body.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              if (_error != null) ...[
                const SizedBox(height: AppSpacing.md),
                InlineAlert(
                  type: StatusType.danger,
                  message: _error!.localizedMessage(l10n),
                ),
              ],
              const SizedBox(height: AppSpacing.lg),
              Row(
                children: [
                  Expanded(
                    child: SecondaryButton(
                      label: l10n.actionBack,
                      onPressed: _submitting
                          ? null
                          : () => Navigator.of(context).pop(),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _DestructiveButton(
                      label: l10n.agentBoardingValidateConfirm,
                      isLoading: _submitting,
                      onPressed: _submitting ? null : _confirm,
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

/// Bouton d'action destructive plein rouge — même style que l'annulation de
/// réservation voyageur (`booking_cancel_dialog.dart`).
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
