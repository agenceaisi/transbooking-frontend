import 'package:drift/drift.dart';

/// Comment un embarquement a été confirmé (guide §6.7).
enum LocalBoardingMethod { scan, manual }

/// Billets embarqués, source de vérité **locale** du contrôleur (phase 5C).
///
/// Aucun endpoint de lecture ne renvoie « qui est déjà embarqué » pour un
/// voyage (mémoire du projet, point 5) : `boarding/{id}`, `boarding/all` et la
/// synchronisation hors ligne (`validations[]`) sont des écritures pures. Cette
/// table journalise donc, côté app, chaque confirmation réussie — en ligne
/// (immédiatement) comme hors ligne (dès la mise en file) — pour que la liste
/// d'embarquement et le scanner sachent reconnaître un billet déjà traité sans
/// dépendre d'une relecture serveur.
///
/// Clé sur [ticketNumber] seul (pas de voyage) : un billet n'embarque qu'une
/// fois, quel que soit le trajet.
class BoardedTickets extends Table {
  TextColumn get ticketNumber => text().withLength(max: 20)();

  TextColumn get method => textEnum<LocalBoardingMethod>()();

  DateTimeColumn get boardedAt => dateTime()();

  /// Vrai si confirmé via l'outbox (en attente de synchronisation), plutôt
  /// qu'un appel serveur déjà abouti.
  BoolColumn get isOffline => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {ticketNumber};
}

/// Voyages dont l'embarquement a été verrouillé
/// (`POST /agent/trips/{id}/boarding/validate/`), en ligne uniquement.
///
/// Persisté pour que le verrouillage survive un redémarrage de l'app entre la
/// validation et la fin du service — la liste ne se rouvre jamais après coup
/// (CLAUDE.md §6 : le bandeau et les écrans ne doivent jamais revenir sur un
/// état déjà annoncé comme définitif).
class ValidatedTrips extends Table {
  IntColumn get tripId => integer()();

  DateTimeColumn get validatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {tripId};
}
