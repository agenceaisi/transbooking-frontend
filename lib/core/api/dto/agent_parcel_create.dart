// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_parcel_create.freezed.dart';
part 'agent_parcel_create.g.dart';

/// Enregistrement d'un colis au guichet (mode hors ligne supporte).
/// 
/// La compagnie et la gare de depart sont deduites du profil agent dans la vue.
/// Le tarif et le `tracking_number` sont calcules par le service, jamais fournis
/// par le client (sauf `tracking_number` en mode hors ligne).
@freezed
abstract class AgentParcelCreate with _$AgentParcelCreate {
  const factory AgentParcelCreate({
    @JsonKey(name: 'origin_city')
    required int originCity,
    @JsonKey(name: 'destination_city')
    required int destinationCity,
    @JsonKey(name: 'destination_station')
    int? destinationStation,
    int? trip,
    @JsonKey(name: 'sender_name')
    required String senderName,
    @JsonKey(name: 'sender_phone')
    required String senderPhone,
    @JsonKey(name: 'recipient_name')
    required String recipientName,
    @JsonKey(name: 'recipient_phone')
    required String recipientPhone,
    String? description,
    @JsonKey(name: 'weight_kg')
    required String weightKg,
    @JsonKey(name: 'tracking_number')
    String? trackingNumber,
    @JsonKey(name: 'is_offline')
    bool? isOffline,
    @JsonKey(name: 'offline_created_at')
    DateTime? offlineCreatedAt,
  }) = _AgentParcelCreate;

  factory AgentParcelCreate.fromJson(Map<String, dynamic> json) =>
      _$AgentParcelCreateFromJson(json);
}
