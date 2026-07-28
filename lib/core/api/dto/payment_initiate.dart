// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method80c_enum.dart';

part 'payment_initiate.freezed.dart';
part 'payment_initiate.g.dart';

/// Initiation d'un paiement par un voyageur (reservation + moyen).
/// 
/// Mobile Money : le paiement passe a `otp_required` et un code est envoye au
/// payeur. Especes : le paiement reste `pending` jusqu'a encaissement guichet.
@freezed
abstract class PaymentInitiate with _$PaymentInitiate {
  const factory PaymentInitiate({
    @JsonKey(name: 'booking_id')
    int? bookingId,
    @JsonKey(name: 'parcel_id')
    int? parcelId,
    required Method80cEnum method,
    String? phone,
  }) = _PaymentInitiate;

  factory PaymentInitiate.fromJson(Map<String, dynamic> json) =>
      _$PaymentInitiateFromJson(json);
}
