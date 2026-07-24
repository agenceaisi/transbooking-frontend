import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/failure_messages.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/app_time_format.dart';
import '../../../../core/utils/fcfa.dart';
import '../../../../core/utils/phone_number.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_skeleton.dart';
import '../../../../core/widgets/phone_field.dart';
import '../../../../core/widgets/status_badge.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../auth/domain/auth_state.dart';
import '../../../auth/presentation/session_controller.dart';
import '../../domain/trip_booking_detail.dart';
import '../booking_form_controller.dart';
import '../booking_submit_controller.dart';
import '../traveler_providers.dart';
import '../widgets/booking_stepper.dart';
import '../widgets/booking_summary_panel.dart';
import '../widgets/payment_method_selector.dart';
import '../widgets/seat_selector.dart';

/// Écran « Détail trajet & Réservation » — stepper en 4 étapes + récapitulatif.
///
/// Réservation d'**une place** : `POST /bookings/` crée une réservation par
/// siège (le contrat ne gère pas d'achat groupé — les champs sexe/CNIB/bagages
/// de la maquette n'ont pas d'API et sont omis, cf. domaine).
class BookingScreen extends ConsumerStatefulWidget {
  const BookingScreen({required this.tripId, super.key});

  final int? tripId;

  @override
  ConsumerState<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends ConsumerState<BookingScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _passengerPhone = TextEditingController();
  final _payerPhone = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _prefill());
  }

  void _prefill() {
    final auth = ref.read(sessionControllerProvider);
    if (auth is! Authenticated) return;
    _firstName.text = auth.prenom ?? '';
    _lastName.text = auth.nom ?? '';
    ref
        .read(bookingFormProvider.notifier)
        .prefill(firstName: auth.prenom, lastName: auth.nom);
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _passengerPhone.dispose();
    _payerPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tripId = widget.tripId;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(l10n.bookingTitle, style: AppTextStyles.dialogTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.goNamed(AppRoutes.searchResultsName),
        ),
      ),
      body: tripId == null
          ? Center(child: ErrorState(message: l10n.failureNotFound))
          : _Body(tripId: tripId, controllers: this),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.tripId, required this.controllers});

  final int tripId;
  final _BookingScreenState controllers;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trip = ref.watch(tripBookingDetailProvider(tripId));

    return trip.when(
      loading: () => const _BookingLoading(),
      error: (error, _) => Center(
        child: ErrorState(
          failure: error is Failure ? error : null,
          onRetry: () => ref.invalidate(tripBookingDetailProvider(tripId)),
        ),
      ),
      data: (detail) => _BookingContent(
        tripId: tripId,
        detail: detail,
        controllers: controllers,
      ),
    );
  }
}

class _BookingContent extends ConsumerWidget {
  const _BookingContent({
    required this.tripId,
    required this.detail,
    required this.controllers,
  });

  final int tripId;
  final TripBookingDetail detail;
  final _BookingScreenState controllers;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(bookingFormProvider);
    final submitting = ref.watch(bookingSubmitProvider).isLoading;
    final isDesktop = AppBreakpoints.isDesktop(
      MediaQuery.sizeOf(context).width,
    );

    final stepContent = _StepContent(
      detail: detail,
      form: form,
      controllers: controllers,
    );

    final summary = BookingSummaryPanel(
      originCity: detail.originCity,
      destinationCity: detail.destinationCity,
      price: detail.price,
      form: form,
      primaryLabel: _primaryLabel(context, form, detail),
      primaryEnabled: _primaryEnabled(form),
      isLoading: submitting,
      onPrimary: () => _onPrimary(context, ref, form),
      compact: !isDesktop,
    );

    final header = Padding(
      padding: EdgeInsets.fromLTRB(
        isDesktop ? AppSpacing.xxl : AppSpacing.md,
        AppSpacing.md,
        isDesktop ? AppSpacing.xxl : AppSpacing.md,
        0,
      ),
      child: BookingStepper(
        current: form.step,
        onGoBackTo: (step) => ref.read(bookingFormProvider.notifier).goTo(step),
      ),
    );

    if (isDesktop) {
      return Column(
        children: [
          header,
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.xxl),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _Card(child: stepContent)),
                      const SizedBox(width: AppSpacing.lg),
                      SizedBox(width: 320, child: summary),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        header,
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: stepContent,
          ),
        ),
        summary,
      ],
    );
  }

  String _primaryLabel(
    BuildContext context,
    BookingFormState form,
    TripBookingDetail detail,
  ) {
    final l10n = context.l10n;
    return switch (form.step) {
      BookingStep.detail => l10n.bookingActionChooseSeat,
      BookingStep.seat || BookingStep.passenger => l10n.actionContinue,
      BookingStep.payment => l10n.bookingActionPay(Fcfa.format(detail.price)),
    };
  }

  bool _primaryEnabled(BookingFormState form) {
    return switch (form.step) {
      BookingStep.detail || BookingStep.passenger => true,
      BookingStep.seat => form.hasSeatChoice,
      BookingStep.payment => form.canPay,
    };
  }

  Future<void> _onPrimary(
    BuildContext context,
    WidgetRef ref,
    BookingFormState form,
  ) async {
    if (form.step != BookingStep.payment) {
      ref.read(bookingFormProvider.notifier).next();
      return;
    }
    await _pay(context, ref, form);
  }

  Future<void> _pay(
    BuildContext context,
    WidgetRef ref,
    BookingFormState form,
  ) async {
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    final l10n = context.l10n;

    final submission = await ref
        .read(bookingSubmitProvider.notifier)
        .submit(tripId: tripId, form: form);

    if (submission == null) {
      final error = ref.read(bookingSubmitProvider).error;
      // Un siège vient d'être pris : on renvoie au choix du siège.
      if (error is ConflictFailure) {
        ref.read(bookingFormProvider.notifier).goTo(BookingStep.seat);
      }
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(_errorMessage(l10n, error))));
      return;
    }

    final payment = submission.payment;
    // Mobile Money en attente de code → écran OTP ; sinon (espèces, ou déjà
    // payé) → écran de résultat.
    if (payment.awaitsOtp) {
      router.goNamed(
        AppRoutes.travelerPaymentName,
        pathParameters: {'paymentId': '${payment.id}'},
        extra: payment,
      );
    } else {
      router.goNamed(
        AppRoutes.travelerReceiptName,
        pathParameters: {'paymentId': '${payment.id}'},
        extra: payment,
      );
    }
  }

  String _errorMessage(AppLocalizations l10n, Object? error) {
    if (error is Failure) return error.localizedMessage(l10n);
    return l10n.failureUnexpected;
  }
}

/// Contenu de l'étape courante.
class _StepContent extends ConsumerWidget {
  const _StepContent({
    required this.detail,
    required this.form,
    required this.controllers,
  });

  final TripBookingDetail detail;
  final BookingFormState form;
  final _BookingScreenState controllers;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formNotifier = ref.read(bookingFormProvider.notifier);

    return switch (form.step) {
      BookingStep.detail => _TripDetailStep(detail: detail),
      BookingStep.seat => SeatSelector(
        availableSeats: detail.availableSeatNumbers,
        selectedSeat: form.selectedSeat,
        autoAssign: form.autoAssignSeat,
        onSelect: formNotifier.selectSeat,
        onAutoAssign: formNotifier.enableAutoAssign,
      ),
      BookingStep.passenger => _PassengerStep(
        controllers: controllers,
        form: form,
      ),
      BookingStep.payment => PaymentMethodSelector(
        selected: form.method,
        onSelect: formNotifier.setMethod,
        phoneController: controllers._payerPhone,
        phoneError: _phoneError(context, form.payerLocalPhone),
        onPhoneChanged: formNotifier.setPayerPhone,
      ),
    };
  }

  /// Erreur de numéro : affichée seulement si une saisie incomplète est entamée.
  static String? _phoneError(BuildContext context, String localPhone) {
    if (localPhone.isEmpty || BfPhone.isCompleteLocal(localPhone)) return null;
    return context.l10n.fieldPhoneIncomplete;
  }
}

/// Étape 1 — récapitulatif du trajet.
class _TripDetailStep extends StatelessWidget {
  const _TripDetailStep({required this.detail});

  final TripBookingDetail detail;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final departure = AppTimeFormat.hourMinute(context, detail.departureTime);
    final arrival = detail.arrivalTime == null
        ? null
        : AppTimeFormat.hourMinute(context, detail.arrivalTime!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.bookingDetailTitle,
          style: AppTypography.serif(size: 18, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          detail.routeLabel,
          style: AppTypography.sans(size: 16, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.md),
        Row(
          children: [
            Expanded(
              child: _TimeBlock(
                label: l10n.bookingDepartureLabel,
                time: departure,
                city: detail.originCity,
              ),
            ),
            const Icon(Icons.arrow_forward, color: AppColors.textTertiary),
            Expanded(
              child: _TimeBlock(
                label: l10n.bookingArrivalLabel,
                time: arrival ?? '—',
                city: detail.destinationCity,
                alignEnd: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        _SpecRow(
          label: l10n.bookingSeatsAvailableLabel,
          value: detail.availableSeats == null
              ? '—'
              : l10n.tripSeatsAvailable(detail.availableSeats!),
        ),
        if (detail.vehicleRegistration != null)
          _SpecRow(
            label: l10n.bookingVehicleLabel,
            value: detail.vehicleRegistration!,
          ),
        _SpecRow(
          label: l10n.bookingPriceLabel,
          value: '${Fcfa.format(detail.price)} ${l10n.currencySuffix}',
        ),
        const SizedBox(height: AppSpacing.md),
        StatusBadge(label: detail.statusDisplay, type: StatusType.info),
      ],
    );
  }
}

class _TimeBlock extends StatelessWidget {
  const _TimeBlock({
    required this.label,
    required this.time,
    required this.city,
    this.alignEnd = false,
  });

  final String label;
  final String time;
  final String city;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignEnd
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: AppTypography.sans(
            size: 10.5,
            weight: FontWeight.w600,
            letterSpacing: 0.4,
            color: AppColors.textTertiary,
          ),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          time,
          style: AppTypography.sans(
            size: 22,
            weight: FontWeight.w700,
            tabular: true,
          ),
        ),
        Text(
          city,
          style: AppTypography.sans(size: 12.5, color: AppColors.textSecondary),
        ),
      ],
    );
  }
}

class _SpecRow extends StatelessWidget {
  const _SpecRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTypography.sans(
                size: 13.5,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Text(
            value,
            style: AppTypography.sans(size: 13.5, weight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

/// Étape 3 — informations du passager.
class _PassengerStep extends ConsumerWidget {
  const _PassengerStep({required this.controllers, required this.form});

  final _BookingScreenState controllers;
  final BookingFormState form;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final formNotifier = ref.read(bookingFormProvider.notifier);
    final localPhone = form.passenger.localPhone;
    final phoneError =
        localPhone.isNotEmpty && !BfPhone.isCompleteLocal(localPhone)
        ? l10n.fieldPhoneIncomplete
        : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.bookingPassengerTitle,
          style: AppTypography.serif(size: 18, weight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          l10n.bookingPassengerSubtitle,
          style: AppTypography.sans(
            size: 13.5,
            height: 1.5,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          label: l10n.fieldFirstName,
          controller: controllers._firstName,
          hintText: l10n.fieldFirstNameHint,
          textCapitalization: TextCapitalization.words,
          onChanged: formNotifier.setFirstName,
        ),
        const SizedBox(height: AppSpacing.sm),
        AppTextField(
          label: l10n.fieldLastName,
          controller: controllers._lastName,
          hintText: l10n.fieldLastNameHint,
          textCapitalization: TextCapitalization.words,
          onChanged: formNotifier.setLastName,
        ),
        const SizedBox(height: AppSpacing.sm),
        PhoneField(
          controller: controllers._passengerPhone,
          label: l10n.phoneFieldLabel,
          errorText: phoneError,
          onChanged: formNotifier.setPassengerPhone,
        ),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: AppRadii.brLg,
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: child,
    );
  }
}

class _BookingLoading extends StatelessWidget {
  const _BookingLoading();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: const [
        LoadingSkeleton(height: 40, borderRadius: AppRadii.brMd),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 220, borderRadius: AppRadii.brLg),
        SizedBox(height: AppSpacing.md),
        LoadingSkeleton(height: 120, borderRadius: AppRadii.brLg),
      ],
    );
  }
}
