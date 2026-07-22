import 'package:drift/drift.dart';

/// Cache du **paquet de travail du jour** de l'agent.
///
/// Alimenté par `GET /api/v1/agent/offline-data/`, qui renvoie
/// `{ trips[], bookings[], parcel_arrivals[] }` (guide d'intégration §6.15).
///
/// > Dérogation assumée : le schéma OpenAPI type cette réponse comme un
/// > `OfflineTrip` unique — il est incomplet sur cette vue. Les colonnes
/// > ci-dessous suivent donc le guide, seule source décrivant les trois listes.
///
/// Ces tables sont en **lecture seule** côté application : elles sont
/// remplacées à chaque téléchargement matinal, jamais modifiées à la main.

/// Voyages du jour de la gare / du véhicule de l'agent.
class CachedTrips extends Table {
  /// Identifiant serveur du voyage.
  IntColumn get id => integer()();

  TextColumn get originCity => text()();

  TextColumn get destinationCity => text()();

  DateTimeColumn get departureTime => dateTime()();

  IntColumn get availableSeats => integer().nullable()();

  TextColumn get vehicle => text()();

  /// Plan de salle brut (JSON), rendu tel quel par l'écran d'embarquement.
  TextColumn get seatPlan => text().nullable()();

  /// Valeur technique de `StatusF60Enum` (scheduled, in_progress, …).
  TextColumn get status => text().nullable()();

  /// Horodatage du téléchargement, pour l'affichage
  /// « Dernière mise à jour à HHhMM ».
  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Réservations déjà enregistrées côté serveur pour ces voyages.
class CachedBookings extends Table {
  /// Numéro de billet officiel (`BF2026…`) — identifiant naturel.
  TextColumn get ticketNumber => text()();

  IntColumn get tripId => integer()();

  TextColumn get passengerName => text()();

  TextColumn get phone => text().nullable()();

  TextColumn get seatNumber => text().nullable()();

  /// Contenu du QR code, pour la validation hors ligne.
  TextColumn get qrCode => text().nullable()();

  /// Valeur technique de `BookingReadStatusEnum`.
  TextColumn get status => text().nullable()();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {ticketNumber};
}

/// Colis arrivés, en attente de remise au destinataire.
class CachedParcelArrivals extends Table {
  /// Code de suivi officiel (`COL2026…`).
  TextColumn get trackingNumber => text()();

  TextColumn get recipientName => text()();

  TextColumn get recipientPhone => text().nullable()();

  TextColumn get destinationCity => text().nullable()();

  /// Valeur technique de `Status62aEnum` (registered, arrived, …).
  TextColumn get status => text().nullable()();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {trackingNumber};
}
