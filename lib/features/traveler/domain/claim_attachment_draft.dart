import 'dart:typed_data';

/// Fichier choisi par le voyageur pour accompagner une réclamation.
///
/// Porté en **octets** (et non par chemin) pour rester compatible Web, où
/// `dart:io` n'existe pas : le fichier est lu en mémoire au moment du choix.
class ClaimAttachmentDraft {
  const ClaimAttachmentDraft({
    required this.filename,
    required this.bytes,
    this.contentType,
  });

  /// Nom d'origine du fichier (ex. « recu.pdf »).
  final String filename;

  /// Contenu binaire du fichier.
  final Uint8List bytes;

  /// Type MIME déduit de l'extension, si connu (ex. « application/pdf »).
  final String? contentType;

  /// Taille en octets.
  int get sizeBytes => bytes.length;
}
