import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/utils/phone_number.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/phone_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../../public/domain/city_ref.dart';
import '../../../public/presentation/public_providers.dart';
import '../../../traveler/presentation/widgets/qr_code_view.dart';
import '../../domain/parcel_registration.dart';
import '../agent_origin_city_provider.dart';
import '../parcel_registration_controller.dart';
import '../widgets/agent_task_scaffold.dart';

/// Enregistrement d'un colis au guichet (guide §6.9).
///
/// Le tarif n'a **aucune formule côté client** — la maquette en calcule un en
/// direct, mais le guide est explicite : « tarif calculé côté serveur »
/// (CLAUDE.md §13, jamais recalculé côté app). Il n'apparaît donc qu'après
/// validation, dans la confirmation — jamais deviné pendant la saisie.
class AgentParcelRegistrationScreen extends ConsumerStatefulWidget {
  const AgentParcelRegistrationScreen({super.key});

  @override
  ConsumerState<AgentParcelRegistrationScreen> createState() =>
      _AgentParcelRegistrationScreenState();
}

class _AgentParcelRegistrationScreenState
    extends ConsumerState<AgentParcelRegistrationScreen> {
  final _senderNameController = TextEditingController();
  final _senderPhoneController = TextEditingController();
  final _recipientNameController = TextEditingController();
  final _recipientPhoneController = TextEditingController();
  final _natureController = TextEditingController();
  final _weightController = TextEditingController();

  CityRef? _destCity;
  bool _touched = false;

  @override
  void dispose() {
    _senderNameController.dispose();
    _senderPhoneController.dispose();
    _recipientNameController.dispose();
    _recipientPhoneController.dispose();
    _natureController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  Map<String, String> _validate() {
    final l10n = context.l10n;
    final errors = <String, String>{};
    if (_senderNameController.text.trim().isEmpty) {
      errors['senderName'] = l10n.agentParcelNameRequired;
    }
    if (!BfPhone.isCompleteLocal(_senderPhoneController.text)) {
      errors['senderPhone'] = l10n.agentParcelPhoneInvalid;
    }
    if (_recipientNameController.text.trim().isEmpty) {
      errors['recipientName'] = l10n.agentParcelNameRequired;
    }
    if (!BfPhone.isCompleteLocal(_recipientPhoneController.text)) {
      errors['recipientPhone'] = l10n.agentParcelPhoneInvalid;
    }
    if (_destCity == null) errors['destCity'] = l10n.agentParcelCityRequired;
    if (_natureController.text.trim().isEmpty) {
      errors['nature'] = l10n.agentParcelNatureRequired;
    }
    final weight = double.tryParse(_weightController.text.replaceAll(',', '.'));
    if (weight == null || weight <= 0) {
      errors['weight'] = l10n.agentParcelWeightRequired;
    }
    return errors;
  }

  Future<void> _submit(CityRef origin) async {
    setState(() => _touched = true);
    final errors = _validate();
    if (errors.isNotEmpty) return;

    final weight = double.parse(
      _weightController.text.replaceAll(',', '.'),
    ).toStringAsFixed(2);

    await ref
        .read(parcelRegistrationControllerProvider.notifier)
        .submit(
          originCityId: origin.id,
          originCityLabel: origin.name,
          destinationCityId: _destCity!.id,
          destinationCityLabel: _destCity!.name,
          senderName: _senderNameController.text.trim(),
          senderPhone: BfPhone.full(_senderPhoneController.text),
          recipientName: _recipientNameController.text.trim(),
          recipientPhone: BfPhone.full(_recipientPhoneController.text),
          nature: _natureController.text.trim(),
          weightKg: weight,
        );
  }

  void _newParcel() {
    ref.read(parcelRegistrationControllerProvider.notifier).reset();
    setState(() {
      _senderNameController.clear();
      _senderPhoneController.clear();
      _recipientNameController.clear();
      _recipientPhoneController.clear();
      _natureController.clear();
      _weightController.clear();
      _destCity = null;
      _touched = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final formState = ref.watch(parcelRegistrationControllerProvider);
    final origin = ref.watch(agentOriginCityProvider);
    final cities = ref.watch(citiesProvider).value ?? const <CityRef>[];
    final errors = _touched ? _validate() : const <String, String>{};

    if (formState.isConfirmed) {
      return AgentTaskScaffold(
        title: l10n.agentParcelConfirmedTitle,
        child: _ParcelConfirmationView(
          registration: formState.result!,
          onNewParcel: _newParcel,
        ),
      );
    }

    if (origin == null) {
      return AgentTaskScaffold(
        title: l10n.agentParcelTitle,
        child: ErrorState(
          title: l10n.agentParcelOriginUnknownTitle,
          message: l10n.agentParcelOriginUnknownMessage,
        ),
      );
    }

    return AgentTaskScaffold(
      title: l10n.agentParcelTitle,
      offlineNotice: l10n.agentPassengerOfflineNotice,
      bottomBar: PrimaryButton(
        label: l10n.agentParcelSubmit,
        isLoading: formState.submitting,
        onPressed: formState.submitting ? null : () => _submit(origin),
      ),
      child: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          if (formState.error != null)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: ErrorState(failure: formState.error),
            ),
          Text(l10n.agentParcelStepSender, style: AppTextStyles.subtitle),
          const SizedBox(height: AppSpacing.sm),
          TextField(
            controller: _senderNameController,
            decoration: InputDecoration(
              labelText: l10n.agentParcelFullName,
              errorText: errors['senderName'],
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          PhoneField(
            controller: _senderPhoneController,
            errorText: errors['senderPhone'],
          ),
          const SizedBox(height: AppSpacing.sm),
          _ReadOnlyField(label: l10n.agentParcelOriginCity, value: origin.name),
          const SizedBox(height: AppSpacing.lg),
          Text(l10n.agentParcelStepRecipient, style: AppTextStyles.subtitle),
          const SizedBox(height: AppSpacing.sm),
          TextField(
            controller: _recipientNameController,
            decoration: InputDecoration(
              labelText: l10n.agentParcelFullName,
              errorText: errors['recipientName'],
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          PhoneField(
            controller: _recipientPhoneController,
            errorText: errors['recipientPhone'],
          ),
          const SizedBox(height: AppSpacing.sm),
          DropdownButtonFormField<CityRef>(
            initialValue: _destCity,
            isExpanded: true,
            decoration: InputDecoration(
              labelText: l10n.agentParcelDestCity,
              errorText: errors['destCity'],
            ),
            items: [
              for (final city in cities.where((c) => c.id != origin.id))
                DropdownMenuItem(value: city, child: Text(city.name)),
            ],
            onChanged: (value) => setState(() => _destCity = value),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(l10n.agentParcelStepParcel, style: AppTextStyles.subtitle),
          const SizedBox(height: AppSpacing.sm),
          TextField(
            controller: _natureController,
            decoration: InputDecoration(
              labelText: l10n.agentParcelNature,
              errorText: errors['nature'],
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          TextField(
            controller: _weightController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: l10n.agentParcelWeight,
              errorText: errors['weight'],
            ),
          ),
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
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: AppSizes.iconSm,
                color: AppColors.primary,
              ),
              const SizedBox(width: AppSpacing.xs),
              Text(value, style: AppTextStyles.bodyStrong),
            ],
          ),
        ),
      ],
    );
  }
}

class _ParcelConfirmationView extends StatelessWidget {
  const _ParcelConfirmationView({
    required this.registration,
    required this.onNewParcel,
  });

  final ParcelRegistration registration;
  final VoidCallback onNewParcel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        Center(
          child: Container(
            width: 72,
            height: 72,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppStatusColors.success.dot,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check, color: AppColors.white, size: 34),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          registration.isOffline
              ? l10n.agentParcelQueuedTitle
              : l10n.agentParcelConfirmedTitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.pageTitle.copyWith(fontSize: 19),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          registration.trackingNumber,
          textAlign: TextAlign.center,
          style: AppTextStyles.reference,
        ),
        const SizedBox(height: AppSpacing.lg),
        if (registration.isOffline)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.md),
            child: InlineAlert(
              type: StatusType.warning,
              message: l10n.agentParcelQueuedNotice,
            ),
          ),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadii.brCard,
            border: AppBorders.card,
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              _Row(
                label: l10n.agentParcelSenderLabel,
                value: registration.senderName,
              ),
              _Row(
                label: l10n.agentParcelRecipientLabel,
                value: registration.recipientName,
              ),
              _Row(
                label: l10n.agentParcelTripLabel,
                value:
                    '${registration.originCity} → ${registration.destinationCity}',
              ),
              _Row(
                label: l10n.agentParcelWeightLabel,
                value: '${registration.weightKg} kg',
              ),
              _Row(
                label: l10n.agentParcelTariffLabel,
                value: registration.tariff != null
                    ? '${Fcfa.format(registration.tariff!)} ${l10n.currencySuffix}'
                    : l10n.agentAmountPendingSync,
                isLast: true,
              ),
              if (!registration.isOffline)
                Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: QrCodeView(base64Png: registration.qrCode),
                ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        SecondaryButton(
          label: l10n.agentParcelNewOne,
          onPressed: onNewParcel,
        ),
      ],
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.label, required this.value, this.isLast = false});

  final String label;
  final String value;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: AppColors.borderSoft)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.caption),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: AppTextStyles.bodyStrong,
            ),
          ),
        ],
      ),
    );
  }
}
