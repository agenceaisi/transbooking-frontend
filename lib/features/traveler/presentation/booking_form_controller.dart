import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/phone_number.dart';
import '../domain/passenger_details.dart';
import '../domain/traveler_payment_method.dart';

/// Étapes du parcours de réservation (maquette « Détail trajet & Réservation »).
enum BookingStep { detail, seat, passenger, payment }

/// État du formulaire de réservation, saisi le long du stepper.
@immutable
class BookingFormState {
  const BookingFormState({
    this.step = BookingStep.detail,
    this.selectedSeat,
    this.autoAssignSeat = false,
    this.passenger = const PassengerDetails(),
    this.method = TravelerPaymentMethod.orangeMoney,
    this.payerLocalPhone = '',
  });

  final BookingStep step;

  /// Siège choisi, `null` si aucun (ou attribution automatique).
  final String? selectedSeat;

  /// Laisse le serveur attribuer le siège.
  final bool autoAssignSeat;

  final PassengerDetails passenger;

  final TravelerPaymentMethod method;

  /// Numéro local du payeur Mobile Money (8 chiffres).
  final String payerLocalPhone;

  bool get hasSeatChoice => autoAssignSeat || selectedSeat != null;

  /// Numéro de siège à envoyer à l'API (`null` = attribution automatique).
  String? get seatForApi => autoAssignSeat ? null : selectedSeat;

  /// Le paiement Mobile Money exige un numéro complet ; les espèces non.
  bool get canPay =>
      !method.isMobileMoney || BfPhone.isCompleteLocal(payerLocalPhone);

  BookingFormState copyWith({
    BookingStep? step,
    String? selectedSeat,
    bool clearSeat = false,
    bool? autoAssignSeat,
    PassengerDetails? passenger,
    TravelerPaymentMethod? method,
    String? payerLocalPhone,
  }) {
    return BookingFormState(
      step: step ?? this.step,
      selectedSeat: clearSeat ? null : (selectedSeat ?? this.selectedSeat),
      autoAssignSeat: autoAssignSeat ?? this.autoAssignSeat,
      passenger: passenger ?? this.passenger,
      method: method ?? this.method,
      payerLocalPhone: payerLocalPhone ?? this.payerLocalPhone,
    );
  }
}

/// Pilote le formulaire de réservation. `autoDispose` : un nouvel achat repart
/// d'un formulaire vierge.
final bookingFormProvider =
    NotifierProvider.autoDispose<BookingFormController, BookingFormState>(
      BookingFormController.new,
    );

class BookingFormController extends Notifier<BookingFormState> {
  @override
  BookingFormState build() => const BookingFormState();

  /// Pré-remplit l'identité depuis le compte connecté (le serveur la reprendrait
  /// de toute façon, mais l'afficher évite un champ vide).
  void prefill({String? firstName, String? lastName}) {
    if ((firstName ?? '').isEmpty && (lastName ?? '').isEmpty) return;
    state = state.copyWith(
      passenger: state.passenger.copyWith(
        firstName: firstName ?? state.passenger.firstName,
        lastName: lastName ?? state.passenger.lastName,
      ),
    );
  }

  void goTo(BookingStep step) => state = state.copyWith(step: step);

  void next() {
    const order = BookingStep.values;
    final index = order.indexOf(state.step);
    if (index < order.length - 1) {
      state = state.copyWith(step: order[index + 1]);
    }
  }

  void previous() {
    const order = BookingStep.values;
    final index = order.indexOf(state.step);
    if (index > 0) state = state.copyWith(step: order[index - 1]);
  }

  void selectSeat(String seat) {
    // Re-cliquer le siège choisi le désélectionne.
    if (state.selectedSeat == seat) {
      state = state.copyWith(clearSeat: true, autoAssignSeat: false);
      return;
    }
    state = state.copyWith(selectedSeat: seat, autoAssignSeat: false);
  }

  void enableAutoAssign() =>
      state = state.copyWith(autoAssignSeat: true, clearSeat: true);

  void setFirstName(String value) => state = state.copyWith(
    passenger: state.passenger.copyWith(firstName: value),
  );

  void setLastName(String value) => state = state.copyWith(
    passenger: state.passenger.copyWith(lastName: value),
  );

  void setPassengerPhone(String value) => state = state.copyWith(
    passenger: state.passenger.copyWith(localPhone: value),
  );

  void setMethod(TravelerPaymentMethod method) =>
      state = state.copyWith(method: method);

  void setPayerPhone(String value) =>
      state = state.copyWith(payerLocalPhone: value);
}
