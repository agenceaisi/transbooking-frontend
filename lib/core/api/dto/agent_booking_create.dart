// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'baggage_write.dart';

part 'agent_booking_create.freezed.dart';
part 'agent_booking_create.g.dart';

/// Enregistrement d'un passager au guichet (mode hors ligne supporte).
/// 
/// L'agent encaisse au guichet : la reservation est creee au statut `paid`.
/// `transaction_ref` est requis pour les paiements non-especes.
@freezed
abstract class AgentBookingCreate with _$AgentBookingCreate {
  const factory AgentBookingCreate({
    required int trip,
    @JsonKey(name: 'first_name')
    required String firstName,
    @JsonKey(name: 'last_name')
    required String lastName,
    required String phone,
    @JsonKey(name: 'seat_number')
    String? seatNumber,
    String? amount,
    @JsonKey(name: 'payment_method')
    required String paymentMethod,
    @JsonKey(name: 'transaction_ref')
    String? transactionRef,
    @JsonKey(name: 'ticket_number')
    String? ticketNumber,
    @JsonKey(name: 'is_offline')
    bool? isOffline,
    @JsonKey(name: 'offline_created_at')
    DateTime? offlineCreatedAt,
    List<BaggageWrite>? baggage,
  }) = _AgentBookingCreate;

  factory AgentBookingCreate.fromJson(Map<String, dynamic> json) =>
      _$AgentBookingCreateFromJson(json);
}
