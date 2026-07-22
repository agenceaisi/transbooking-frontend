import 'package:drift/drift.dart';

import '../../../core/storage/local_database.dart';
import '../domain/account_profile.dart';
import '../domain/user_role.dart';

/// Conservation locale du dernier profil connu.
///
/// Permet de rouvrir l'application hors réseau sans renvoyer l'utilisateur à la
/// connexion (CLAUDE.md §6 : ne jamais bloquer l'agent faute de réseau).
class SessionProfileCache {
  const SessionProfileCache(this._db);

  final LocalDatabase _db;

  /// Ligne unique de la table.
  static const int _rowId = 0;

  Future<AccountProfile?> read() async {
    final row = await (_db.select(
      _db.sessionProfiles,
    )..where((t) => t.id.equals(_rowId))).getSingleOrNull();
    if (row == null) return null;

    final role = UserRole.fromWire(row.role);
    // Rôle devenu inconnu (valeur retirée de l'API) : on préfère une
    // reconnexion à un aiguillage au hasard.
    if (role == null) return null;

    return AccountProfile(
      phone: row.phone,
      role: role,
      prenom: row.prenom,
      nom: row.nom,
      email: row.email,
    );
  }

  Future<void> write(AccountProfile profile) {
    return _db
        .into(_db.sessionProfiles)
        .insertOnConflictUpdate(
          SessionProfilesCompanion.insert(
            id: const Value(_rowId),
            prenom: profile.prenom ?? '',
            nom: profile.nom ?? '',
            phone: profile.phone,
            email: Value(profile.email),
            role: profile.role.wireName,
            cachedAt: DateTime.now().toUtc(),
          ),
        );
  }

  Future<void> clear() => _db.delete(_db.sessionProfiles).go();
}
