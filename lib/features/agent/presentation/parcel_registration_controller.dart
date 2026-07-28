import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../domain/parcel_registration.dart';
import 'agent_providers.dart';

@immutable
class ParcelRegistrationState {
  const ParcelRegistrationState({
    this.submitting = false,
    this.result,
    this.error,
  });

  final bool submitting;
  final ParcelRegistration? result;
  final Failure? error;

  bool get isConfirmed => result != null;

  ParcelRegistrationState copyWith({
    bool? submitting,
    ParcelRegistration? result,
    Failure? error,
    bool clearError = false,
  }) {
    return ParcelRegistrationState(
      submitting: submitting ?? this.submitting,
      result: result ?? this.result,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

/// `autoDispose` : chaque visite de l'écran repart d'un formulaire vide.
final parcelRegistrationControllerProvider =
    NotifierProvider.autoDispose<
      ParcelRegistrationController,
      ParcelRegistrationState
    >(ParcelRegistrationController.new);

class ParcelRegistrationController extends Notifier<ParcelRegistrationState> {
  @override
  ParcelRegistrationState build() => const ParcelRegistrationState();

  Future<void> submit({
    required int originCityId,
    required String originCityLabel,
    required int destinationCityId,
    required String destinationCityLabel,
    required String senderName,
    required String senderPhone,
    required String recipientName,
    required String recipientPhone,
    required String nature,
    required String weightKg,
  }) async {
    if (state.submitting) return;
    state = state.copyWith(submitting: true, clearError: true);

    try {
      final result = await ref
          .read(agentParcelRepositoryProvider)
          .registerParcel(
            originCityId: originCityId,
            originCityLabel: originCityLabel,
            destinationCityId: destinationCityId,
            destinationCityLabel: destinationCityLabel,
            senderName: senderName,
            senderPhone: senderPhone,
            recipientName: recipientName,
            recipientPhone: recipientPhone,
            nature: nature,
            weightKg: weightKg,
          );
      state = state.copyWith(submitting: false, result: result);
    } on Failure catch (failure) {
      state = state.copyWith(submitting: false, error: failure);
    }
  }

  void reset() => state = const ParcelRegistrationState();
}
