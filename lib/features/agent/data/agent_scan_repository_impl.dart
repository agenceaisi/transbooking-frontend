import '../../../core/error/failure.dart';
import '../../../core/storage/local_database.dart';
import '../domain/boarding_repository.dart';
import '../domain/scan_history_entry.dart';
import '../domain/scan_outcome.dart';
import '../domain/scan_repository.dart';
import 'agent_control_remote_data_source.dart';

/// Implémentation du scan de billet (guide §6.7, CLAUDE.md §6).
class AgentScanRepositoryImpl implements ScanRepository {
  const AgentScanRepositoryImpl({
    required this.remote,
    required this.database,
    required this.boardingRepository,
  });

  final AgentControlRemoteDataSource remote;
  final LocalDatabase database;
  final BoardingRepository boardingRepository;

  @override
  Future<ScanOutcome> scan(String rawValue) async {
    try {
      final outcome = await remote.scanQrData(rawValue);
      return _enrichFromCache(outcome);
    } on NoConnectionFailure {
      return _scanOffline(rawValue);
    } on TimeoutFailure {
      return _scanOffline(rawValue);
    }
  }

  @override
  Future<void> confirmBoarding(String ticketNumber) =>
      boardingRepository.confirmBoarding(
        ticketNumber,
        method: BoardingConfirmMethod.scan,
      );

  @override
  Future<List<ScanHistoryEntry>> fetchServerHistory() async {
    try {
      return await remote.scanHistory();
    } on Failure {
      // Hors ligne ou serveur indisponible : l'historique continue en local,
      // rien à signaler pour un amorçage silencieux.
      return const [];
    }
  }

  /// Vérification hors ligne, contre le paquet du jour uniquement — plus
  /// grossière que la réponse serveur (guide §6.7 : « vérification via la
  /// liste téléchargée le matin »). Un billet absent du cache ressort
  /// [ScanOutcomeKind.notFound] : impossible de distinguer sans réseau un
  /// billet expiré, invalide ou d'une autre compagnie.
  Future<ScanOutcome> _scanOffline(String rawValue) async {
    final now = DateTime.now().toUtc();
    final row =
        await (database.select(
          database.cachedBookings,
        )..where((row) => row.ticketNumber.equals(rawValue))).getSingleOrNull();

    if (row == null) {
      return ScanOutcome(
        kind: ScanOutcomeKind.notFound,
        ticketNumber: rawValue,
        scannedAt: now,
      );
    }

    final boardedRow =
        await (database.select(
          database.boardedTickets,
        )..where((row) => row.ticketNumber.equals(rawValue))).getSingleOrNull();
    final tripLabel = await _tripLabel(row.tripId);

    if (boardedRow != null) {
      return ScanOutcome(
        kind: ScanOutcomeKind.alreadyBoarded,
        ticketNumber: rawValue,
        passengerName: row.passengerName,
        seatNumber: row.seatNumber,
        tripLabel: tripLabel,
        scannedAt: now,
      );
    }

    final kind = switch (row.status) {
      'paid' => ScanOutcomeKind.valid,
      'pending' => ScanOutcomeKind.unpaid,
      'cancelled' => ScanOutcomeKind.cancelled,
      'refunded' => ScanOutcomeKind.refunded,
      _ => ScanOutcomeKind.invalid,
    };

    return ScanOutcome(
      kind: kind,
      ticketNumber: rawValue,
      passengerName: row.passengerName,
      seatNumber: row.seatNumber,
      tripLabel: tripLabel,
      scannedAt: now,
    );
  }

  /// Complète trajet/siège/nom depuis le cache local quand la réponse serveur
  /// ne les porte pas (forme incertaine, cf. `ScanOutcome`).
  Future<ScanOutcome> _enrichFromCache(ScanOutcome outcome) async {
    if (outcome.tripLabel != null &&
        outcome.seatNumber != null &&
        outcome.passengerName != null) {
      return outcome;
    }
    final row =
        await (database.select(
          database.cachedBookings,
        )..where((row) => row.ticketNumber.equals(outcome.ticketNumber))).getSingleOrNull();
    if (row == null) return outcome;

    return ScanOutcome(
      kind: outcome.kind,
      ticketNumber: outcome.ticketNumber,
      passengerName: outcome.passengerName ?? row.passengerName,
      seatNumber: outcome.seatNumber ?? row.seatNumber,
      tripLabel: outcome.tripLabel ?? await _tripLabel(row.tripId),
      boardedAtLabel: outcome.boardedAtLabel,
      scannedAt: outcome.scannedAt,
    );
  }

  Future<String?> _tripLabel(int tripId) async {
    final trip =
        await (database.select(
          database.cachedTrips,
        )..where((row) => row.id.equals(tripId))).getSingleOrNull();
    if (trip == null) return null;
    return '${trip.originCity} → ${trip.destinationCity}';
  }
}
