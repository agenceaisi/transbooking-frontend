import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../domain/scan_history_entry.dart';
import '../domain/scan_outcome.dart';
import 'agent_providers.dart';

/// Nombre de scans conservés dans l'historique (guide §6.7).
const int scanHistoryLimit = 50;

@immutable
class ScannerState {
  const ScannerState({
    this.result,
    this.history = const [],
    this.confirming = false,
    this.error,
  });

  /// Résultat affiché en bas d'écran — `null` tant que la caméra scanne.
  final ScanOutcome? result;

  final List<ScanHistoryEntry> history;

  /// « Marquer embarqué » en cours.
  final bool confirming;

  final Failure? error;

  ScannerState copyWith({
    ScanOutcome? result,
    bool clearResult = false,
    List<ScanHistoryEntry>? history,
    bool? confirming,
    Failure? error,
    bool clearError = false,
  }) {
    return ScannerState(
      result: clearResult ? null : (result ?? this.result),
      history: history ?? this.history,
      confirming: confirming ?? this.confirming,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

/// Scanner de billets à l'embarquement (maquette « Scanner QR code »).
final scannerControllerProvider =
    NotifierProvider.autoDispose<ScannerController, ScannerState>(
      ScannerController.new,
    );

class ScannerController extends Notifier<ScannerState> {
  @override
  ScannerState build() {
    _loadServerHistory();
    return const ScannerState();
  }

  Future<void> _loadServerHistory() async {
    final entries = await ref.read(scanRepositoryProvider).fetchServerHistory();
    if (entries.isEmpty) return;
    state = state.copyWith(history: entries.take(scanHistoryLimit).toList());
  }

  /// Un résultat affiché bloque les scans suivants — l'agent doit d'abord
  /// « Continuer le scan » (maquette), la caméra reste active en arrière-plan.
  Future<void> onCodeDetected(String rawValue) async {
    if (state.result != null || rawValue.isEmpty) return;

    try {
      final outcome = await ref.read(scanRepositoryProvider).scan(rawValue);
      state = state.copyWith(
        result: outcome,
        clearError: true,
        history: [
          ScanHistoryEntry(
            ticketNumber: outcome.ticketNumber,
            kind: outcome.kind,
            scannedAt: outcome.scannedAt,
          ),
          ...state.history,
        ].take(scanHistoryLimit).toList(),
      );
    } on Failure catch (failure) {
      state = state.copyWith(error: failure);
    }
  }

  Future<void> confirmBoarding() async {
    final outcome = state.result;
    if (outcome == null || !outcome.canBoard || state.confirming) return;

    state = state.copyWith(confirming: true, clearError: true);
    try {
      await ref.read(scanRepositoryProvider).confirmBoarding(
        outcome.ticketNumber,
      );
      state = state.copyWith(confirming: false, clearResult: true);
    } on Failure catch (failure) {
      state = state.copyWith(confirming: false, error: failure);
    }
  }

  void dismissResult() => state = state.copyWith(clearResult: true, clearError: true);

  /// Efface l'erreur après son affichage (toast) — ne bloque pas le scan
  /// suivant : seul `state.result` non nul suspend la détection.
  void dismissError() => state = state.copyWith(clearError: true);
}
