import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_registration.freezed.dart';

/// Issue de l'enregistrement d'un passager au guichet
/// (`POST /agent/bookings/`, ou file d'attente hors ligne).
///
/// [seatNumber], [amount] et [qrCode] restent `null` quand la saisie part
/// dans l'outbox : le serveur les attribue à la synchronisation
/// (CLAUDE.md §6) — l'écran l'affiche explicitement plutôt que d'inventer un
/// siège ou un tarif.
@freezed
abstract class PassengerRegistration with _$PassengerRegistration {
  const factory PassengerRegistration({
    required String ticketNumber,
    required String firstName,
    required String lastName,
    required String phone,
    required String originCity,
    required String destinationCity,
    required DateTime departureTime,
    required bool isOffline,
    String? companyName,
    String? seatNumber,
    String? amount,
    String? qrCode,
    DateTime? printedAt,
    int? printCount,
  }) = _PassengerRegistration;

  const PassengerRegistration._();

  String get passengerName => '$lastName $firstName';

  bool get canPrint => !isOffline && qrCode != null;
}
