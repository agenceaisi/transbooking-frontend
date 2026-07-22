import '../../l10n/app_localizations.dart';
import 'failure.dart';

/// Traduit une [Failure] en message affichable.
///
/// Les textes viennent des `.arb` ; ceux que l'API fournit déjà en français
/// (erreurs de champ) sont repris tels quels.
extension FailureMessage on Failure {
  String localizedMessage(AppLocalizations l10n) => switch (this) {
    NoConnectionFailure() => l10n.failureNoConnection,
    TimeoutFailure() => l10n.failureTimeout,
    ServerFailure() => l10n.failureServer,
    UnauthorizedFailure() => l10n.failureUnauthorized,
    ForbiddenFailure(:final detail) => detail ?? l10n.failureForbidden,
    AccountSuspendedFailure(:final detail) =>
      detail ?? l10n.failureAccountSuspended,
    NotFoundFailure() => l10n.failureNotFound,
    ConflictFailure(:final detail) => detail ?? l10n.failureConflict,
    RateLimitFailure(:final detail) => detail ?? l10n.failureRateLimited,
    // Une annulation vient d'une action de l'utilisateur : rien à annoncer,
    // mais un message de repli évite une bulle vide si l'appelant l'affiche.
    CancelledFailure() => l10n.failureUnexpected,
    ValidationFailure(:final detail) => detail ?? l10n.failureUnexpected,
    UnexpectedFailure() => l10n.failureUnexpected,
  };
}
