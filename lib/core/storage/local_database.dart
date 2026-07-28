import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables/agent_dashboard_tables.dart';
import 'tables/boarding_tables.dart';
import 'tables/cache_tables.dart';
import 'tables/outbox_tables.dart';
import 'tables/session_tables.dart';

export 'tables/agent_dashboard_tables.dart';
export 'tables/boarding_tables.dart';
export 'tables/cache_tables.dart';
export 'tables/outbox_tables.dart';
export 'tables/session_tables.dart';

part 'local_database.g.dart';

/// Base locale de l'application (SQLite via Drift).
///
/// Elle porte quatre choses, et **jamais** de jeton JWT ni de donnée de paiement
/// (CLAUDE.md §13) :
///  - le cache du paquet de travail du jour de l'agent ;
///  - le cache du tableau de bord agent, pour l'afficher sans réseau ;
///  - les écritures hors ligne et leur file d'envoi ;
///  - le dernier profil connu, pour rouvrir l'application sans réseau.
///
/// Le moteur de synchronisation (`core/sync/`) viendra s'appuyer dessus.
@DriftDatabase(
  tables: [
    CachedTrips,
    CachedBookings,
    CachedParcelArrivals,
    CachedAgentDepartures,
    CachedAgentAlerts,
    OfflineBookings,
    OfflineParcels,
    OfflineValidations,
    OfflineParcelNotifications,
    OutboxEntries,
    SyncStateEntries,
    SessionProfiles,
    BoardedTickets,
    ValidatedTrips,
  ],
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  /// Constructeur de test : accepte une base en mémoire.
  LocalDatabase.forTesting(super.executor);

  /// Horodatages stockés en texte ISO-8601 plutôt qu'en secondes epoch.
  ///
  /// Indispensable ici : `offline_created_at` est saisi sur le terrain puis
  /// renvoyé tel quel au serveur, qui attend de l'UTC (guide §1). Le stockage
  /// numérique de Drift relit les dates en heure locale et décalerait donc
  /// chaque écriture hors ligne de l'offset de l'appareil.
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);

  /// Nom du fichier SQLite sur l'appareil.
  static const String databaseName = 'transbooking_local';

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (migrator) async {
      await migrator.createAll();
      // La table d'état ne contient qu'une ligne, créée d'emblée pour que les
      // lectures du bandeau de connexion n'aient jamais à gérer son absence.
      await into(
        syncStateEntries,
      ).insert(const SyncStateEntriesCompanion(id: Value(0)));
    },
    onUpgrade: (migrator, from, to) async {
      // v2 — cache du tableau de bord agent. Ces tables ne contiennent que des
      // données rechargeables : les créer vides suffit, rien à reprendre.
      if (from < 2) {
        await migrator.createTable(cachedAgentDepartures);
        await migrator.createTable(cachedAgentAlerts);
      }
      // v3 — Mobile Money hors ligne (référence de transaction) et « marquer
      // prévenu » colis hors ligne, phase 5B rebranchée.
      if (from < 3) {
        await migrator.addColumn(offlineBookings, offlineBookings.transactionRef);
        await migrator.createTable(offlineParcelNotifications);
      }
      // v4 — journal local des embarquements confirmés et des voyages
      // verrouillés, phase 5C (contrôle).
      if (from < 4) {
        await migrator.createTable(boardedTickets);
        await migrator.createTable(validatedTrips);
      }
    },
  );

  /// Fichiers servis depuis `web/`, indispensables à SQLite dans le navigateur.
  ///
  /// Sans eux, `driftDatabase` lève un `ArgumentError` dès la première requête
  /// sur le web. Ils sont versionnés avec l'application : leurs versions
  /// doivent suivre celles de `sqlite3` et `drift` dans `pubspec.lock`
  /// (cf. `tool/fetch_web_assets.sh`).
  static const String _sqlite3WasmAsset = 'sqlite3.wasm';
  static const String _driftWorkerAsset = 'drift_worker.js';

  static QueryExecutor _openConnection() => driftDatabase(
    name: databaseName,
    web: DriftWebOptions(
      sqlite3Wasm: Uri.parse(_sqlite3WasmAsset),
      driftWorker: Uri.parse(_driftWorkerAsset),
    ),
  );
}
