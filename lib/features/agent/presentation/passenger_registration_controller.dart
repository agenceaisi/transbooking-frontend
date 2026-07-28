import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../domain/agent_trip.dart';
import '../domain/passenger_registration.dart';
import 'agent_providers.dart';

/// État de l'enregistrement d'un passager — un seul écran, deux temps
/// (formulaire puis confirmation), comme la maquette.
@immutable
class PassengerRegistrationState {
  const PassengerRegistrationState({
    this.submitting = false,
    this.result,
    this.error,
  });

  final bool submitting;

  /// Non nul une fois l'enregistrement accepté (en ligne ou mis en file).
  final PassengerRegistration? result;

  final Failure? error;

  bool get isConfirmed => result != null;

  PassengerRegistrationState copyWith({
    bool? submitting,
    PassengerRegistration? result,
    Failure? error,
    bool clearError = false,
  }) {
    return PassengerRegistrationState(
      submitting: submitting ?? this.submitting,
      result: result ?? this.result,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

/// `autoDispose` : chaque visite de l'écran repart d'un formulaire vide.
final passengerRegistrationControllerProvider =
    NotifierProvider.autoDispose<
      PassengerRegistrationController,
      PassengerRegistrationState
    >(PassengerRegistrationController.new);

class PassengerRegistrationController
    extends Notifier<PassengerRegistrationState> {
  @override
  PassengerRegistrationState build() => const PassengerRegistrationState();

  Future<void> submit({
    required AgentTrip trip,
    required String firstName,
    required String lastName,
    required String phone,
    required String paymentMethodWire,
    String? transactionRef,
  }) async {
    if (state.submitting) return;
    state = state.copyWith(submitting: true, clearError: true);

    try {
      final result = await ref
          .read(agentBookingRepositoryProvider)
          .registerPassenger(
            trip: trip,
            firstName: firstName,
            lastName: lastName,
            phone: phone,
            paymentMethodWire: paymentMethodWire,
            transactionRef: transactionRef,
          );
      state = state.copyWith(submitting: false, result: result);
    } on Failure catch (failure) {
      state = state.copyWith(submitting: false, error: failure);
    }
  }

  /// Réimpression après correction de siège à la synchronisation.
  Future<void> print(String ticketNumber) async {
    try {
      final updated = await ref
          .read(agentBookingRepositoryProvider)
          .printTicket(ticketNumber);
      state = state.copyWith(result: updated);
    } on Failure catch (failure) {
      state = state.copyWith(error: failure);
    }
  }

  void reset() => state = const PassengerRegistrationState();
}
