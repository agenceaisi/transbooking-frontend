import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/utils/phone_number.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/inline_alert.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/perforated_divider.dart';
import '../../../../core/widgets/phone_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/secondary_button.dart';
import '../../../traveler/presentation/widgets/qr_code_view.dart';
import '../../domain/agent_trip.dart';
import '../../domain/passenger_registration.dart';
import '../agent_schedule_controller.dart';
import '../passenger_registration_controller.dart';
import '../widgets/agent_task_scaffold.dart';

/// Enregistrement d'un passager au guichet (guide §6.7).
///
/// Deux simplifications par rapport à la maquette, faute de champ d'API sur
/// `AgentBookingCreate` — omises plutôt qu'inventées (CLAUDE.md §0) :
///  - pas de saisie de pièce d'identité (CNIB/passeport) ;
///  - pas de code de réduction.
/// Le siège reste **attribué par le serveur** (guide) : jamais choisi ici, et
/// inconnu tant que la vente n'est pas confirmée (ou synchronisée, hors ligne).
class AgentPassengerRegistrationScreen extends ConsumerStatefulWidget {
  const AgentPassengerRegistrationScreen({this.initialTrip, super.key});

  final AgentTrip? initialTrip;

  @override
  ConsumerState<AgentPassengerRegistrationScreen> createState() =>
      _AgentPassengerRegistrationScreenState();
}

class _AgentPassengerRegistrationScreenState
    extends ConsumerState<AgentPassengerRegistrationScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _transactionRefController = TextEditingController();

  AgentTrip? _trip;
  String _paymentMethod = 'cash';
  bool _touched = false;

  static const List<String> _mobileMoneyMethods = [
    'orange_money',
    'moov_money',
    'coris_money',
    'telecel_money',
  ];

  @override
  void initState() {
    super.initState();
    _trip = widget.initialTrip;
    // Le tarif dépend d'un aller-retour réseau (guide §6.6) : si le
    // programme du jour est resté figé sur un instantané hors ligne (échec
    // ponctuel au démarrage, jamais réessayé depuis), l'agent ouvrirait cet
    // écran de vente sans jamais revoir le vrai tarif. On retente à chaque
    // ouverture, sans bloquer l'affichage — la logique en ligne/hors ligne
    // existante du repository reste seule responsable du résultat.
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ref.read(agentScheduleControllerProvider.notifier).refresh(),
    );
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _transactionRefController.dispose();
    super.dispose();
  }

  Map<String, String> _validate() {
    final errors = <String, String>{};
    final l10n = context.l10n;
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
    if (_trip == null) errors['trip'] = l10n.agentPassengerTripRequired;
    return errors;
  }

  Future<void> _submit() async {
    setState(() => _touched = true);
    final errors = _validate();
    if (errors.isNotEmpty) return;

    await ref
        .read(passengerRegistrationControllerProvider.notifier)
        .submit(
          trip: _trip!,
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim().toUpperCase(),
          phone: BfPhone.full(_phoneController.text),
          paymentMethodWire: _paymentMethod,
          transactionRef: _paymentMethod == 'cash'
              ? null
              : _transactionRefController.text.trim(),
        );
  }

  void _newPassenger() {
    ref.read(passengerRegistrationControllerProvider.notifier).reset();
    setState(() {
      _firstNameController.clear();
      _lastNameController.clear();
      _phoneController.clear();
      _transactionRefController.clear();
      _paymentMethod = 'cash';
      _touched = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final formState = ref.watch(passengerRegistrationControllerProvider);
    final errors = _touched ? _validate() : const <String, String>{};

    // Un trajet sélectionné avant la fin du rafraîchissement peut porter un
    // tarif périmé (`null`, venu du cache) : on le remplace par l'instance à
    // jour dès qu'elle arrive, sans perdre la sélection de l'agent.
    ref.listen(agentScheduleControllerProvider, (previous, next) {
      final trip = _trip;
      if (trip == null) return;
      final trips = next.value?.trips;
      if (trips == null) return;
      for (final updated in trips) {
        if (updated.id == trip.id && updated != trip) {
          setState(() => _trip = updated);
          return;
        }
      }
    });

    if (formState.isConfirmed) {
      return AgentTaskScaffold(
        title: l10n.agentPassengerConfirmedTitle,
        child: _ConfirmationView(
          registration: formState.result!,
          onPrint: () => ref
              .read(passengerRegistrationControllerProvider.notifier)
              .print(formState.result!.ticketNumber),
          onNewPassenger: _newPassenger,
        ),
      );
    }

    return AgentTaskScaffold(
      title: l10n.agentPassengerTitle,
      offlineNotice: l10n.agentPassengerOfflineNotice,
      bottomBar: PrimaryButton(
        label: l10n.agentPassengerSubmit,
        isLoading: formState.submitting,
        onPressed: formState.submitting ? null : _submit,
      ),
      child: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: [
          if (formState.error != null)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: ErrorState(failure: formState.error),
            ),
          _SectionHeader(l10n.agentPassengerStepTrip),
          const SizedBox(height: AppSpacing.sm),
          _TripPicker(
            selected: _trip,
            onSelected: (trip) => setState(() => _trip = trip),
          ),
          if (errors['trip'] != null)
            Padding(
              padding: const EdgeInsets.only(top: AppSpacing.xxs),
              child: Text(
                errors['trip']!,
                style: AppTextStyles.caption.copyWith(
                  color: AppStatusColors.danger.foreground,
                ),
              ),
            ),
          const SizedBox(height: AppSpacing.lg),
          _SectionHeader(l10n.agentPassengerStepInfo),
          const SizedBox(height: AppSpacing.sm),
          Container(
            padding: const EdgeInsets.all(AppSpacing.md - 1),
            decoration: const BoxDecoration(
              color: AppColors.surface,
              borderRadius: AppRadii.brCard,
              border: AppBorders.card,
            ),
            child: Column(
              children: [
                AppTextField(
                  label: l10n.agentPassengerFirstName,
                  controller: _firstNameController,
                  errorText: errors['firstName'],
                  textCapitalization: TextCapitalization.words,
                ),
                const SizedBox(height: AppSpacing.sm + 1),
                AppTextField(
                  label: l10n.agentPassengerLastName,
                  controller: _lastNameController,
                  errorText: errors['lastName'],
                  textCapitalization: TextCapitalization.characters,
                ),
                const SizedBox(height: AppSpacing.sm + 1),
                PhoneField(
                  controller: _phoneController,
                  errorText: errors['phone'],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          _SectionHeader(l10n.agentPassengerStepSeat),
          const SizedBox(height: AppSpacing.sm),
          const _SeatPlaceholder(),
          const SizedBox(height: AppSpacing.lg),
          _SectionHeader(l10n.agentPassengerStepPayment),
          const SizedBox(height: AppSpacing.sm),
          _PaymentMethodPicker(
            selected: _paymentMethod,
            onSelected: (method) => setState(() => _paymentMethod = method),
          ),
          if (_paymentMethod != 'cash') ...[
            const SizedBox(height: AppSpacing.sm + 2),
            AppTextField(
              label: l10n.agentPassengerTransactionRef,
              controller: _transactionRefController,
              hintText: l10n.agentPassengerTransactionRefHint,
              errorText: errors['transactionRef'],
            ),
          ],
          const SizedBox(height: AppSpacing.md),
          _AmountCard(trip: _trip),
        ],
      ),
    );
  }
}

/// En-tête numéroté d'étape (« 1 · Choix du voyage »…), déjà présent dans le
/// libellé traduit — reprend le style discret de la maquette (13/600,
/// graphite), plus petit que les titres de section standard.
class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: AppTextStyles.label);
  }
}

class _TripPicker extends ConsumerWidget {
  const _TripPicker({required this.selected, required this.onSelected});

  final AgentTrip? selected;
  final ValueChanged<AgentTrip> onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedule = ref.watch(agentScheduleControllerProvider);
    final l10n = context.l10n;

    return switch (schedule) {
      AsyncValue(:final value?) => Column(
        children: [
          for (final trip in value.trips.where((t) => t.acceptsNewPassengers))
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.xs),
              child: _TripTile(
                trip: trip,
                selected: trip.id == selected?.id,
                onTap: () => onSelected(trip),
              ),
            ),
          if (value.trips.where((t) => t.acceptsNewPassengers).isEmpty)
            Text(l10n.agentScheduleEmptyTitle, style: AppTextStyles.caption),
        ],
      ),
      AsyncValue(:final error?) => Text(
        error.toString(),
        style: AppTextStyles.caption,
      ),
      _ => const LoadingSkeleton(height: 64, borderRadius: AppRadii.brCard),
    };
  }
}

class _TripTile extends StatelessWidget {
  const _TripTile({
    required this.trip,
    required this.selected,
    required this.onTap,
  });

  final AgentTrip trip;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brCard,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.sm + 2),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary50 : AppColors.surface,
          borderRadius: AppRadii.brCard,
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
            width: selected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(trip.destinationCity, style: AppTextStyles.bodyStrong),
                  if (trip.vehicleRegistration != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      trip.vehicleRegistration!,
                      style: AppTextStyles.referenceSmall,
                    ),
                  ],
                  const SizedBox(height: 3),
                  Text(
                    trip.isFull
                        ? l10n.agentSeatsFull
                        : l10n.agentSeatsAvailable(trip.availableSeats ?? 0),
                    style: AppTextStyles.caption.copyWith(
                      fontWeight: FontWeight.w600,
                      color: _seatColor(trip),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              selected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: selected ? AppColors.primary : AppColors.textTertiary,
            ),
          ],
        ),
      ),
    );
  }

  /// Vert si suffisamment de places, orange si peu, rouge si complet — même
  /// code couleur que la maquette.
  Color _seatColor(AgentTrip trip) {
    if (trip.isFull) return AppStatusColors.danger.foreground;
    final seats = trip.availableSeats ?? 0;
    if (seats <= 5) return AppStatusColors.warning.foreground;
    return AppStatusColors.success.foreground;
  }
}

class _SeatPlaceholder extends StatelessWidget {
  const _SeatPlaceholder();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm + 2),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.brCard,
        border: AppBorders.card,
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary50,
              borderRadius: AppRadii.brLg,
            ),
            child: const Icon(
              Icons.event_seat_outlined,
              color: AppColors.primary900,
            ),
          ),
          const SizedBox(width: AppSpacing.sm + 1),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.agentPassengerSeatLabel,
                  style: AppTextStyles.bodyStrong,
                ),
                const SizedBox(height: 2),
                Text(l10n.agentPassengerSeatAuto, style: AppTextStyles.caption),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PaymentMethodPicker extends StatelessWidget {
  const _PaymentMethodPicker({
    required this.selected,
    required this.onSelected,
  });

  final String selected;
  final ValueChanged<String> onSelected;

  /// Couleurs de marque des opérateurs — reprises telles quelles du handoff
  /// (identité visuelle officielle), seule exception volontaire à la règle
  /// « pas de couleur en dur » (CLAUDE.md §4).
  static const Map<String, Color> _brandColor = {
    'orange_money': Color(0xFFFF6600),
    'moov_money': Color(0xFF0A66C2),
    'coris_money': Color(0xFFC8102E),
    'telecel_money': AppColors.accent700,
  };

  static const Map<String, String> _abbr = {
    'cash': 'ESP',
    'orange_money': 'OM',
    'moov_money': 'MM',
    'coris_money': 'CM',
    'telecel_money': 'TM',
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final labels = {
      'cash': l10n.agentPaymentCash,
      'orange_money': l10n.paymentMethodOrangeMoney,
      'moov_money': l10n.paymentMethodMoovMoney,
      'coris_money': l10n.paymentMethodCorisMoney,
      'telecel_money': l10n.paymentMethodTelecelMoney,
    };
    final methods = [
      'cash',
      ..._AgentPassengerRegistrationScreenState._mobileMoneyMethods,
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        const columns = 2;
        final itemWidth =
            (constraints.maxWidth - AppSpacing.sm * (columns - 1)) / columns;
        return Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: [
            for (final method in methods)
              SizedBox(
                width: itemWidth,
                child: _MethodCard(
                  label: labels[method]!,
                  abbr: _abbr[method]!,
                  badgeColor: _brandColor[method] ?? AppColors.surfaceSubtle,
                  badgeForeground: _brandColor[method] == null
                      ? AppColors.textStrong
                      : AppColors.white,
                  selected: selected == method,
                  onTap: () => onSelected(method),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _MethodCard extends StatelessWidget {
  const _MethodCard({
    required this.label,
    required this.abbr,
    required this.badgeColor,
    required this.badgeForeground,
    required this.selected,
    this.onTap,
  });

  final String label;
  final String abbr;
  final Color badgeColor;
  final Color badgeForeground;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.brLg,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary50 : AppColors.surface,
          borderRadius: AppRadii.brLg,
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
            width: selected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: badgeColor,
                borderRadius: AppRadii.brMd,
              ),
              child: Text(
                abbr,
                style: AppTypography.sans(
                  size: 11,
                  weight: FontWeight.w800,
                  color: badgeForeground,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.xs + 1),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.bodyStrong.copyWith(fontSize: 12.5),
              ),
            ),
            Icon(
              selected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              size: 18,
              color: selected ? AppColors.primary : AppColors.textTertiary,
            ),
          ],
        ),
      ),
    );
  }
}

class _AmountCard extends StatelessWidget {
  const _AmountCard({required this.trip});

  final AgentTrip? trip;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final price = trip?.price;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm + 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.surfaceSubtle,
        borderRadius: AppRadii.brCard,
        border: Border.all(
          color: AppColors.borderStrong,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              l10n.agentPassengerAmountLabel,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyStrong,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Flexible(
            child: Text(
              price != null
                  ? '${Fcfa.format(price)} ${l10n.currencySuffix}'
                  : l10n.agentAmountPendingSync,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: AppTextStyles.kpi.copyWith(fontSize: 21),
            ),
          ),
        ],
      ),
    );
  }
}

class _ConfirmationView extends StatelessWidget {
  const _ConfirmationView({
    required this.registration,
    required this.onPrint,
    required this.onNewPassenger,
  });

  final PassengerRegistration registration;
  final VoidCallback onPrint;
  final VoidCallback onNewPassenger;

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
              ? l10n.agentPassengerQueuedTitle
              : l10n.agentPassengerConfirmedTitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.pageTitle.copyWith(fontSize: 19),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          registration.ticketNumber,
          textAlign: TextAlign.center,
          style: AppTextStyles.reference,
        ),
        const SizedBox(height: AppSpacing.lg),
        if (registration.isOffline)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.md),
            child: InlineAlert(
              type: StatusType.warning,
              message: l10n.agentPassengerQueuedNotice,
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
              Container(
                width: double.infinity,
                color: AppColors.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm + 2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.ticketLabel.toUpperCase(),
                      style: AppTextStyles.eyebrow.copyWith(
                        color: AppColors.primary300,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      registration.ticketNumber,
                      style: AppTextStyles.reference.copyWith(
                        color: AppColors.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              _TicketRow(
                label: l10n.agentPassengerTicketLabel,
                value: registration.passengerName,
              ),
              _TicketRow(
                label: l10n.agentPassengerTripLabel,
                value:
                    '${registration.originCity} → ${registration.destinationCity}',
              ),
              _TicketRow(
                label: l10n.agentPassengerSeatLabel,
                value: registration.seatNumber ?? l10n.agentAmountPendingSync,
              ),
              _TicketRow(
                label: l10n.agentPassengerAmountLabel,
                value: registration.amount != null
                    ? '${Fcfa.format(registration.amount!)} ${l10n.currencySuffix}'
                    : l10n.agentAmountPendingSync,
                isLast: true,
              ),
              if (!registration.isOffline) ...[
                const PerforatedDivider(padding: EdgeInsets.zero),
                Padding(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: QrCodeView(base64Png: registration.qrCode),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        if (registration.canPrint)
          PrimaryButton(
            label: l10n.agentPassengerPrint,
            icon: Icons.print_outlined,
            onPressed: onPrint,
          ),
        const SizedBox(height: AppSpacing.sm),
        SecondaryButton(
          label: l10n.agentPassengerNewOne,
          onPressed: onNewPassenger,
        ),
      ],
    );
  }
}

class _TicketRow extends StatelessWidget {
  const _TicketRow({
    required this.label,
    required this.value,
    this.isLast = false,
  });

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
          Text(value, style: AppTextStyles.bodyStrong),
        ],
      ),
    );
  }
}
