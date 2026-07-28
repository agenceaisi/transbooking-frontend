import 'scan_outcome.dart';

/// Ligne de l'historique des scans (maquette « Scanner QR code »).
///
/// Amorcé depuis `GET /agent/scan/history/` à l'ouverture (si en ligne), puis
/// complété localement à chaque scan — hors ligne y compris, pour ne jamais
/// laisser l'historique muet faute de réseau.
class ScanHistoryEntry {
  const ScanHistoryEntry({
    required this.ticketNumber,
    required this.kind,
    required this.scannedAt,
  });

  final String ticketNumber;
  final ScanOutcomeKind kind;
  final DateTime scannedAt;
}
