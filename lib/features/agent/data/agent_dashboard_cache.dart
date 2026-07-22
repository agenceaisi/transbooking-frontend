import 'package:drift/drift.dart';

import '../../../core/storage/local_database.dart';
import '../domain/agent_dashboard.dart';

/// Conservation locale du dernier tableau de bord connu.
///
/// Permet à l'agent d'ouvrir son écran sans réseau, avec l'horodatage du
/// dernier chargement (CLAUDE.md §6 : ne jamais bloquer l'agent, et dire d'où
/// viennent les données).
class AgentDashboardCache {
  const AgentDashboardCache(this._db);

  final LocalDatabase _db;

  /// Relit le dernier instantané, ou `null` si rien n'a encore été chargé.
  ///
  /// L'instantané renvoyé porte toujours un [AgentDashboardSnapshot.cachedAt] :
  /// c'est ce qui distingue une donnée d'archive d'une donnée fraîche.
  Future<AgentDashboardSnapshot?> read() async {
    final departureRows = await (_db.select(
      _db.cachedAgentDepartures,
    )..orderBy([(t) => OrderingTerm(expression: t.departureTime)])).get();
    final alertRows =
        await (_db.select(_db.cachedAgentAlerts)..orderBy([
              (t) => OrderingTerm(
                expression: t.createdAt,
                mode: OrderingMode.desc,
              ),
            ]))
            .get();

    final cachedAt = _mostRecent([
      ...departureRows.map((row) => row.cachedAt),
      ...alertRows.map((row) => row.cachedAt),
    ]);
    if (cachedAt == null) return null;

    return AgentDashboardSnapshot(
      departures: departureRows
          .map(
            (row) => AgentDeparture(
              tripId: row.tripId,
              origin: row.origin,
              destination: row.destination,
              departureTime: row.departureTime,
              availableSeats: row.availableSeats,
              passengerCount: row.passengerCount,
              vehicleRegistration: row.vehicleRegistration,
              status: TripStatus.fromWire(row.status),
            ),
          )
          .toList(growable: false),
      alerts: alertRows
          .map(
            (row) => AgentAlert(
              id: row.id,
              title: row.title,
              body: row.body,
              kind: AgentAlertKind.fromWire(row.type),
              createdAt: row.createdAt,
            ),
          )
          .toList(growable: false),
      // `pending_alerts` n'est pas conservé : il vaut mieux ne rien afficher
      // qu'un compteur périmé.
      cachedAt: cachedAt,
    );
  }

  /// Remplace le contenu du cache par [snapshot].
  ///
  /// Remplacement complet plutôt que fusion : un départ disparu de la réponse
  /// (voyage parti, annulé) doit disparaître de l'écran hors ligne aussi.
  Future<void> write(AgentDashboardSnapshot snapshot) {
    final cachedAt = DateTime.now().toUtc();

    return _db.transaction(() async {
      await _db.delete(_db.cachedAgentDepartures).go();
      await _db.delete(_db.cachedAgentAlerts).go();

      await _db.batch((batch) {
        batch.insertAll(_db.cachedAgentDepartures, [
          for (final departure in snapshot.departures)
            CachedAgentDeparturesCompanion.insert(
              tripId: Value(departure.tripId),
              origin: departure.origin,
              destination: departure.destination,
              departureTime: departure.departureTime,
              availableSeats: departure.availableSeats,
              passengerCount: departure.passengerCount,
              vehicleRegistration: Value(departure.vehicleRegistration),
              status: Value(departure.status?.wireValue),
              cachedAt: cachedAt,
            ),
        ]);
        batch.insertAll(_db.cachedAgentAlerts, [
          for (final alert in snapshot.alerts)
            CachedAgentAlertsCompanion.insert(
              id: Value(alert.id),
              title: alert.title,
              body: alert.body,
              type: alert.kind.wireValue,
              createdAt: alert.createdAt,
              cachedAt: cachedAt,
            ),
        ]);
      });
    });
  }

  /// Vide le cache — à la déconnexion, pour ne pas montrer les départs d'un
  /// agent au suivant.
  Future<void> clear() {
    return _db.transaction(() async {
      await _db.delete(_db.cachedAgentDepartures).go();
      await _db.delete(_db.cachedAgentAlerts).go();
    });
  }

  static DateTime? _mostRecent(List<DateTime> dates) {
    if (dates.isEmpty) return null;
    return dates.reduce((a, b) => a.isAfter(b) ? a : b);
  }
}
