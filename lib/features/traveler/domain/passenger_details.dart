import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_details.freezed.dart';

/// Identité du passager saisie à la réservation.
///
/// ⚠️ `BookingCreate` n'accepte que `first_name, last_name, phone` (+ `trip`,
/// `seat_number`). Les champs **sexe, CNIB/passeport et bagages** de la maquette
/// n'ont **aucun champ d'API** → non collectés (jamais envoyés à un endpoint qui
/// les ignore, CLAUDE.md §7). Tous facultatifs : laissés vides, le serveur
/// reprend l'identité du compte voyageur (guide §6.7).
@freezed
abstract class PassengerDetails with _$PassengerDetails {
  const factory PassengerDetails({
    @Default('') String firstName,
    @Default('') String lastName,

    /// Numéro local à 8 chiffres (sans l'indicatif +226).
    @Default('') String localPhone,
  }) = _PassengerDetails;

  const PassengerDetails._();

  String? get firstNameOrNull =>
      firstName.trim().isEmpty ? null : firstName.trim();

  String? get lastNameOrNull =>
      lastName.trim().isEmpty ? null : lastName.trim();

  String? get localPhoneOrNull =>
      localPhone.trim().isEmpty ? null : localPhone.trim();
}
