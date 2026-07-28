import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../boarding_list_controller.dart';

/// Modale « Embarquer tous les passagers ? » (maquette « Liste passagers &
/// Embarquement »).
Future<void> showBoardAllDialog(
  BuildContext context,
  WidgetRef ref, {
  required int tripId,
  required int remainingToBoard,
}) {
  return showDialog<void>(
    context: context,
    barrierColor: AppColors.scrim,
    builder: (_) => _BoardAllDialog(tripId: tripId, remaining: remainingToBoard),
  );
}

class _BoardAllDialog extends ConsumerStatefulWidget {
  const _BoardAllDialog({required this.tripId, required this.remaining});

  final int tripId;
  final int remaining;

  @override
  ConsumerState<_BoardAllDialog> createState() => _BoardAllDialogState();
}

class _BoardAllDialogState extends ConsumerState<_BoardAllDialog> {
  bool _submitting = false;
  Failure? _error;

  Future<void> _confirm() async {
    final l10n = context.l10n;
    setState(() {
      _submitting = true;
      _error = null;
    });
    try {
      final count = await ref
          .read(boardingListControllerProvider(widget.tripId).notifier)
          .boardAllPaid();
      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(l10n.agentBoardingAllBoarded(count))),
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
        constraints: const BoxConstraints(maxWidth: 420),
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
                  color: AppStatusColors.info.background,
                  borderRadius: AppRadii.brMd,
                ),
                child: Icon(
                  Icons.done_all,
                  color: AppStatusColors.info.foreground,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                l10n.agentBoardingAllTitle,
                style: AppTextStyles.dialogTitle,
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                l10n.agentBoardingAllMessage(widget.remaining),
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
                      label: l10n.actionCancel,
                      onPressed: _submitting
                          ? null
                          : () => Navigator.of(context).pop(),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: PrimaryButton(
                      label: l10n.actionConfirm,
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
