import 'agent_dashboard.dart';

/// Accès au tableau de bord de l'agent.
///
/// Seul point d'entrée de la présentation : elle ignore tout de dio et de
/// Drift (CLAUDE.md §3). L'implémentation choisit la source — API si elle
/// répond, cache local sinon — et renseigne alors `cachedAt`.
abstract interface class AgentDashboardRepository {
  /// Charge l'instantané courant.
  ///
  /// Lève une `Failure` uniquement si le réseau **et** le cache sont
  /// indisponibles : un agent hors réseau doit garder son écran.
  Future<AgentDashboardSnapshot> load();
}
