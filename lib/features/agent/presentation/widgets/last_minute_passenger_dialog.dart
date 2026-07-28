import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/phone_number.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/phone_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../boarding_list_controller.dart';

/// Modale « Passager de dernière minute » (maquette « Liste passagers &
/// Embarquement »).
///
/// La maquette propose un simple bouton payé/non payé : `AgentBookingCreate`
/// crée toujours au statut `paid` (guide §6.7), quel que soit le moyen — le
/// choix binaire n'a donc pas d'équivalent d'API. Remplacé par le même
/// sélecteur de moyen de paiement que « Enregistrer un passager » (5B), pour
/// ne pas dupliquer une règle métier à deux endroits différents.
Future<void> showLastMinutePassengerDialog(
  BuildContext context,
  WidgetRef ref, {
  required int tripId,
}) {
  return showDialog<void>(
    context: context,
    barrierColor: AppColors.scrim,
    builder: (_) => _LastMinutePassengerDialog(tripId: tripId),
  );
}

class _LastMinutePassengerDialog extends ConsumerStatefulWidget {
  const _LastMinutePassengerDialog({required this.tripId});

  final int tripId;

  @override
  ConsumerState<_LastMinutePassengerDialog> createState() =>
      _LastMinutePassengerDialogState();
}

class _LastMinutePassengerDialogState
    extends ConsumerState<_LastMinutePassengerDialog> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _transactionRefController = TextEditingController();

  String _paymentMethod = 'cash';
  bool _submitting = false;
  bool _touched = false;
  Failure? _error;

  static const List<(String, String)> _mobileMoneyMethods = [
    ('orange_money', 'Orange Money'),
    ('moov_money', 'Moov Money'),
    ('coris_money', 'Coris Money'),
    ('telecel_money', 'Telecel Money'),
  ];

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _transactionRefController.dispose();
    super.dispose();
  }

  Map<String, String> _validate(AppLocalizations l10n) {
    final errors = <String, String>{};
    if (_firstNameController.text.trim().isEmpty) {
      errors['firstName'] = l10n.agentPassengerFirstNameRequired;
    }
    if (_lastNameController.text.trim().isEmpty) {
      errors['lastName'] = l10n.agentPassengerLastNameRequired;
    }
    if (!BfPhone.isCompleteLocal(_phoneController.text)) {
      errors['phone'] = l10n.agentPassengerPhoneInvalid;
    }
    if (_paymentMethod != 'cash' &&
        _transactionRefController.text.trim().isEmpty) {
      errors['transactionRef'] = l10n.agentPassengerTransactionRefRequired;
    }
    return errors;
  }

  Future<void> _submit() async {
    final l10n = context.l10n;
    setState(() => _touched = true);
    if (_validate(l10n).isNotEmpty) return;

    setState(() {
      _submitting = true;
      _error = null;
    });
    try {
      await ref
          .read(boardingListControllerProvider(widget.tripId).notifier)
          .addLastMinutePassenger(
            firstName: _firstNameController.text.trim(),
            lastName: _lastNameController.text.trim().toUpperCase(),
            phone: BfPhone.full(_phoneController.text),
            paymentMethodWire: _paymentMethod,
            transactionRef: _paymentMethod == 'cash'
                ? null
                : _transactionRefController.text.trim(),
          );
      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(l10n.agentBoardingLastMinuteAdded)),
        );
    } on Failure catch (failure) {
      setState(() {
        _submitting = false;
        _error = failure;
      });
      return;
    }
    if (mounted) setState(() => _submitting = false);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final errors = _touched ? _validate(l10n) : const <String, String>{};

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
              Text(
                l10n.agentBoardingLastMinuteTitle,
                style: AppTextStyles.dialogTitle,
              ),
              const SizedBox(height: AppSpacing.md),
              TextField(
                controller: _firstNameController,
                enabled: !_submitting,
                decoration: InputDecoration(
                  labelText: l10n.agentPassengerFirstName,
                  errorText: errors['firstName'],
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              TextField(
                controller: _lastNameController,
                enabled: !_submitting,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  labelText: l10n.agentPassengerLastName,
                  errorText: errors['lastName'],
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              PhoneField(
                controller: _phoneController,
                enabled: !_submitting,
                errorText: errors['phone'],
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                l10n.agentPassengerStepPayment,
                style: AppTextStyles.label,
              ),
              const SizedBox(height: AppSpacing.xs),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  _MethodChip(
                    label: l10n.agentPaymentCash,
                    selected: _paymentMethod == 'cash',
                    onTap: _submitting
                        ? null
                        : () => setState(() => _paymentMethod = 'cash'),
                  ),
                  for (final method in _mobileMoneyMethods)
                    _MethodChip(
                      label: method.$2,
                      selected: _paymentMethod == method.$1,
                      onTap: _submitting
                          ? null
                          : () => setState(() => _paymentMethod = method.$1),
                    ),
                ],
              ),
              if (_paymentMethod != 'cash') ...[
                const SizedBox(height: AppSpacing.sm),
                TextField(
                  controller: _transactionRefController,
                  enabled: !_submitting,
                  decoration: InputDecoration(
                    labelText: l10n.agentPassengerTransactionRef,
                    errorText: errors['transactionRef'],
                  ),
                ),
              ],
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
                      label: l10n.agentBoardingLastMinuteConfirm,
                      isLoading: _submitting,
                      onPressed: _submitting ? null : _submit,
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

class _MethodChip extends StatelessWidget {
  const _MethodChip({required this.label, required this.selected, this.onTap});

  final String label;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brMd,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm + 2,
          vertical: AppSpacing.xs + 2,
        ),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary50 : AppColors.surface,
          borderRadius: AppRadii.brMd,
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
            width: selected ? 2 : 1,
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.bodyStrong.copyWith(fontSize: 12.5),
        ),
      ),
    );
  }
}
