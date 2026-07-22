import 'package:drift/drift.dart';

/// Cache du **tableau de bord agent**.
///
/// Alimenté par `GET /api/v1/agent/dashboard/`, complété par
/// `GET /api/v1/agent/trips/today/` (immatriculation, retard) et
/// `GET /api/v1/notifications/` (alertes récentes).
///
/// Volontairement distinct du paquet de travail du jour (`CachedTrips`, alimenté
/// par `agent/offline-data/`) : les deux vues décrivent les mêmes voyages mais
/// n'ont ni le même cycle de vie — tableau de bord rafraîchi en continu, paquet
/// téléchargé une fois le matin — ni les mêmes champs. Les fusionner ferait
/// écraser le plan de salle par une réponse qui ne le porte pas.
///
/// Ces tables sont remplacées à chaque chargement réussi ; elles servent
/// uniquement à afficher le dernier état connu hors réseau, avec son
/// horodatage (« Dernière mise à jour à HHhMM », CLAUDE.md §6).

/// Prochains départs affichés sur le tableau de bord.
class CachedAgentDepartures extends Table {
  /// Identifiant serveur du voyage.
  IntColumn get tripId => integer()();

  TextColumn get origin => text()();

  TextColumn get destination => text()();

  DateTimeColumn get departureTime => dateTime()();

  IntColumn get availableSeats => integer()();

  /// Passagers déjà enregistrés sur ce départ.
  IntColumn get passengerCount => integer()();

  /// Immatriculation du véhicule — absente si `agent/trips/today/` n'a pas
  /// répondu lors du dernier chargement.
  TextColumn get vehicleRegistration => text().nullable()();

  /// Valeur technique de `StatusF60Enum` (scheduled, delayed, …).
  TextColumn get status => text().nullable()();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {tripId};
}

/// Alertes récentes de l'agent (notifications in-app non lues).
class CachedAgentAlerts extends Table {
  /// Identifiant serveur de la notification.
  IntColumn get id => integer()();

  TextColumn get title => text()();

  TextColumn get body => text()();

  /// Valeur technique de `TypeEnum` (parcel, trip, system, …).
  TextColumn get type => text()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
