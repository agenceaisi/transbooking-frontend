import 'package:freezed_annotation/freezed_annotation.dart';

part 'traveler_claim.freezed.dart';

/// Type de réclamation (guide §5, `ClaimType`).
enum ClaimTypeKind {
  retard('retard'),
  perteBagage('perte_bagage'),
  bagageEndommage('bagage_endommage'),
  comportement('comportement'),
  surcharge('surcharge'),
  remboursement('remboursement'),
  autre('autre');

  const ClaimTypeKind(this.wire);

  final String wire;

  static ClaimTypeKind fromWire(String? wire) {
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return ClaimTypeKind.autre;
  }
}

/// Statut d'une réclamation (guide §5, `ClaimStatus`).
enum ClaimStatusKind {
  submitted('submitted'),
  inProgress('in_progress'),
  resolved('resolved'),
  closed('closed'),
  escalated('escalated');

  const ClaimStatusKind(this.wire);

  final String wire;

  static ClaimStatusKind? fromWire(String? wire) {
    if (wire == null) return null;
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return null;
  }
}

/// Réclamation du voyageur (`ClaimRead`, guide §6.10).
@freezed
abstract class TravelerClaim with _$TravelerClaim {
  const factory TravelerClaim({
    required int id,
    required String companyName,
    required String ticketNumber,
    required ClaimTypeKind claimType,
    required String claimTypeDisplay,
    required String subject,
    required String description,
    ClaimStatusKind? status,
    required String statusDisplay,
    String? response,
    DateTime? respondedAt,

    /// Vrai si aucune réponse n'est arrivée sous 48 h (annoté côté serveur).
    required bool isOverdue,
    required DateTime createdAt,
  }) = _TravelerClaim;
}
