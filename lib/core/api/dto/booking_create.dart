// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_create.freezed.dart';
part 'booking_create.g.dart';

/// Creation d'une reservation par un voyageur authentifie.
/// 
/// L'identite du passager reprend par defaut le compte voyageur. Le siege est
/// auto-attribue si non fourni. La reservation est creee au statut `pending`
/// (paiement a confirmer).
@freezed
abstract class BookingCreate with _$BookingCreate {
  const factory BookingCreate({
    required int trip,
    @JsonKey(name: 'seat_number')
    String? seatNumber,
    @JsonKey(name: 'first_name')
    String? firstName,
    @JsonKey(name: 'last_name')
    String? lastName,
    String? phone,
  }) = _BookingCreate;

  factory BookingCreate.fromJson(Map<String, dynamic> json) =>
      _$BookingCreateFromJson(json);
}
