// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method80c_enum.dart';

part 'agent_payment.freezed.dart';
part 'agent_payment.g.dart';

/// Encaissement au guichet : especes en une etape, Mobile Money par OTP.
@freezed
abstract class AgentPayment with _$AgentPayment {
  const factory AgentPayment({
    @JsonKey(name: 'booking_id')
    required int bookingId,
    required Method80cEnum method,
    @JsonKey(name: 'transaction_ref')
    String? transactionRef,
    String? phone,
  }) = _AgentPayment;

  factory AgentPayment.fromJson(Map<String, dynamic> json) =>
      _$AgentPaymentFromJson(json);
}
