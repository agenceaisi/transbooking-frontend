import 'scan_history_entry.dart';
import 'scan_outcome.dart';

/// Scan d'un billet à l'embarquement (guide §6.7).
abstract interface class ScanRepository {
  /// `POST /agent/scan/` si le réseau répond. Hors ligne : vérification
  /// entièrement locale contre le paquet du jour (`CachedBookings`) et le
  /// journal d'embarquement (`BoardedTickets`) — jamais bloqué faute de
  /// réseau (CLAUDE.md §6), au prix d'une distinction plus grossière (un
  /// billet absent du cache ne peut pas être qualifié d'expiré/invalide/autre
  /// compagnie : il ressort « non reconnu »).
  Future<ScanOutcome> scan(String rawValue);

  /// Confirme l'embarquement d'un billet scanné valide — délègue à
  /// [BoardingRepository.confirmBoarding] pour ne pas dupliquer la logique
  /// en ligne/hors ligne.
  Future<void> confirmBoarding(String ticketNumber);

  /// Historique serveur (50 derniers), pour amorcer l'écran à l'ouverture.
  /// Vide silencieusement hors ligne — l'historique continue localement.
  Future<List<ScanHistoryEntry>> fetchServerHistory();
}
