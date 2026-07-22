import 'package:drift/drift.dart';

/// Écritures réalisées hors ligne, en attente d'envoi.
///
/// Deux niveaux, conformément au CLAUDE.md §6 :
///  1. les **données métier** dans des tables typées, requêtables (listes,
///     filtres, compteurs d'embarquement) et calquées sur les schémas
///     `OfflineBooking` / `OfflineParcel` / `OfflineValidation` ;
///  2. l'**outbox** ([OutboxEntries]), file d'opérations qui suit l'état
///     d'envoi de chaque enregistrement.
///
/// 🔴 Le `ticket_number` / `tracking_number` est généré localement et sert de
/// **clé d'idempotence** côté serveur : rejouer une synchronisation ne crée pas
/// de doublon et n'envoie pas deux fois le SMS.

/// Entité concernée par une opération en attente.
///
/// Aligné sur `EntityEnum` du schéma OpenAPI.
enum OutboxEntity { booking, parcel, validation }

/// Cycle de vie d'une opération dans la file.
enum OutboxStatus {
  /// En attente d'envoi.
  pending,

  /// Envoi en cours — évite qu'une seconde passe reprenne la même opération.
  syncing,

  /// Acceptée par le serveur.
  synced,

  /// Rejetée : `lastError` porte la raison, l'agent est informé.
  failed,
}

/// Réservation saisie hors ligne au guichet.
class OfflineBookings extends Table {
  /// Numéro de billet généré localement — clé d'idempotence.
  TextColumn get ticketNumber => text().withLength(max: 20)();

  IntColumn get tripId => integer()();

  TextColumn get firstName => text().withLength(max: 100)();

  TextColumn get lastName => text().withLength(max: 100)();

  TextColumn get phone => text().withLength(max: 30)();

  TextColumn get seatNumber => text().withLength(max: 10).nullable()();

  /// Montant décimal conservé en texte : les tarifs viennent de l'API et sont
  /// renvoyés tels quels, sans arrondi flottant (CLAUDE.md §13).
  TextColumn get amount => text().nullable()();

  /// Valeur technique de `Method80cEnum` (cash, orange_money, …).
  TextColumn get paymentMethod => text().withLength(max: 20).nullable()();

  /// Instant de la saisie sur le terrain, transmis tel quel au serveur.
  DateTimeColumn get offlineCreatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {ticketNumber};
}

/// Colis enregistré hors ligne au guichet.
class OfflineParcels extends Table {
  /// Code de suivi généré localement — clé d'idempotence.
  TextColumn get trackingNumber => text().withLength(max: 20)();

  IntColumn get originCity => integer()();

  IntColumn get destinationCity => integer()();

  IntColumn get destinationStation => integer().nullable()();

  IntColumn get tripId => integer().nullable()();

  TextColumn get senderName => text().withLength(max: 150)();

  TextColumn get senderPhone => text().withLength(max: 30)();

  TextColumn get recipientName => text().withLength(max: 150)();

  TextColumn get recipientPhone => text().withLength(max: 30)();

  TextColumn get description => text().nullable()();

  /// Poids décimal, conservé en texte pour les mêmes raisons que le montant.
  TextColumn get weightKg => text()();

  DateTimeColumn get offlineCreatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {trackingNumber};
}

/// Embarquement validé hors ligne par un contrôleur.
class OfflineValidations extends Table {
  /// Billet validé — clé d'idempotence (un billet n'embarque qu'une fois).
  TextColumn get ticketNumber => text().withLength(max: 20)();

  DateTimeColumn get offlineCreatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {ticketNumber};
}

/// File d'opérations à synchroniser.
///
/// Une ligne par enregistrement hors ligne. [reference] pointe la clé
/// d'idempotence de la table métier correspondante.
class OutboxEntries extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get entity => textEnum<OutboxEntity>()();

  /// `ticket_number` ou `tracking_number` de l'enregistrement concerné.
  TextColumn get reference => text().withLength(max: 30)();

  TextColumn get status =>
      textEnum<OutboxStatus>().withDefault(const Constant('pending'))();

  /// Nombre d'envois tentés, pour espacer les relances.
  IntColumn get attempts => integer().withDefault(const Constant(0))();

  /// Dernier message d'erreur du serveur, affiché à l'agent en clair.
  TextColumn get lastError => text().nullable()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get syncedAt => dateTime().nullable()();

  /// Une même référence ne doit jamais produire deux entrées de file.
  @override
  List<Set<Column<Object>>> get uniqueKeys => [
    {entity, reference},
  ];
}

/// État de la dernière synchronisation.
///
/// Table à ligne unique ([id] = 0) : alimente le bandeau de connexion et le
/// message « Dernière mise à jour à HHhMM ».
class SyncStateEntries extends Table {
  IntColumn get id => integer().withDefault(const Constant(0))();

  /// Dernier téléchargement réussi du paquet du jour.
  DateTimeColumn get lastOfflineDataAt => dateTime().nullable()();

  /// Dernier envoi réussi de l'outbox.
  DateTimeColumn get lastSyncAt => dateTime().nullable()();

  /// Message de l'échec le plus récent — le bandeau doit rester honnête et
  /// passer au rouge tant qu'il est renseigné (CLAUDE.md §6).
  TextColumn get lastSyncError => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
