import 'claim_attachment_draft.dart';
import 'traveler_claim.dart';

/// Réclamations du voyageur (guide §6.10).
abstract interface class ClaimRepository {
  /// `GET /claims/` — mes réclamations, avec leur suivi d'état.
  Future<List<TravelerClaim>> myClaims();

  /// `POST /claims/` — dépose une réclamation ; renvoie la réclamation créée
  /// (avec son `id` de référence et son statut initial).
  ///
  /// Fournir **soit** [bookingId] (la compagnie est déduite du trajet) **soit**
  /// [companyId] (guide §6.10). [bookingId] doit appartenir au voyageur.
  ///
  /// [attachment] : pièce jointe facultative (PDF/photo) envoyée en multipart
  /// via le champ `attachment` de `ClaimCreate` (schéma OpenAPI).
  Future<TravelerClaim> submitClaim({
    int? bookingId,
    int? companyId,
    required ClaimTypeKind type,
    required String subject,
    required String description,
    ClaimAttachmentDraft? attachment,
  });
}
