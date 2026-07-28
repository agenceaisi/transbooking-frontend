// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method80c_enum.dart';
import 'payment_read_status_enum.dart';

part 'payment_read.freezed.dart';
part 'payment_read.g.dart';

/// Lecture du statut d'un paiement (voyageur, agent, admin).
@freezed
abstract class PaymentRead with _$PaymentRead {
  const factory PaymentRead({
    required int id,
    @JsonKey(name: 'ticket_number')
    required String ticketNumber,
    required String amount,
    required Method80cEnum method,
    @JsonKey(name: 'method_display')
    required String methodDisplay,
    PaymentReadStatusEnum? status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    @JsonKey(name: 'transaction_ref')
    required String transactionRef,
    required String phone,
    @JsonKey(name: 'otp_expires_at')
    required String? otpExpiresAt,
    @JsonKey(name: 'otp_attempts_remaining')
    required int? otpAttemptsRemaining,
    @JsonKey(name: 'receipt_url')
    String? receiptUrl,
    @JsonKey(name: 'paid_at')
    DateTime? paidAt,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
  }) = _PaymentRead;

  factory PaymentRead.fromJson(Map<String, dynamic> json) =>
      _$PaymentReadFromJson(json);
}
