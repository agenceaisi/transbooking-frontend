import 'package:drift/drift.dart';

/// Dernier profil connu de l'utilisateur connecté.
///
/// Une seule ligne (`id = 0`). Elle sert à rouvrir l'application **sans
/// réseau** : les jetons vivent dans le coffre sécurisé, mais ils ne disent
/// pas le rôle, et sans rôle le routeur ne sait pas quel espace ouvrir. Un
/// agent qui démarre sa journée hors ligne serait sinon renvoyé à l'écran de
/// connexion, ce que le CLAUDE.md §6 interdit.
///
/// 🔴 Aucun jeton, aucun mot de passe ici : uniquement l'identité affichable.
/// Le rôle mis en cache ne sert qu'à l'aiguillage local — le serveur reste seul
/// juge des permissions, et le profil est revérifié dès le retour du réseau.
class SessionProfiles extends Table {
  IntColumn get id => integer().withDefault(const Constant(0))();

  TextColumn get prenom => text()();

  TextColumn get nom => text()();

  TextColumn get phone => text()();

  TextColumn get email => text().nullable()();

  /// Valeur technique du rôle (`agent_guichet`, `company_admin`, …).
  TextColumn get role => text()();

  /// Horodatage de la dernière confirmation par le serveur.
  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
