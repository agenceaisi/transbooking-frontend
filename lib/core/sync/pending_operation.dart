import '../storage/tables/outbox_tables.dart';

/// Une écriture hors ligne en attente d'envoi, telle que l'agent la voit.
///
/// Vue de lecture de l'outbox : le bandeau de connexion en compte les lignes,
/// la feuille « données en attente » les liste. Le moteur qui les envoie
/// arrive en phase 5A ; la file, elle, existe déjà.
class PendingOperation {
  const PendingOperation({
    required this.entity,
    required this.reference,
    required this.status,
    required this.createdAt,
    this.lastError,
  });

  /// Nature de l'écriture : passager, colis ou embarquement.
  final OutboxEntity entity;

  /// Clé d'idempotence — n° de billet ou code de suivi généré localement.
  final String reference;

  final OutboxStatus status;

  /// Instant de la saisie sur le terrain.
  final DateTime createdAt;

  /// Motif du dernier refus du serveur, affiché tel quel à l'agent.
  final String? lastError;

  /// Vrai tant que l'opération n'a pas été acceptée par le serveur.
  bool get isOutstanding => status != OutboxStatus.synced;
}
