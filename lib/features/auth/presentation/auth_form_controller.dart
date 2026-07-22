import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../core/error/failure.dart';
import 'auth_form_state.dart';

/// Socle commun aux formulaires d'authentification.
///
/// Il porte trois comportements qu'on ne veut pas réécrire trois fois :
///  - un seul envoi à la fois ;
///  - les erreurs de champ de l'API rangées par champ (guide §4) ;
///  - le back-off après un `429`, avec compte à rebours visible.
abstract class AuthFormController extends Notifier<AuthFormState> {
  Timer? _ticker;

  /// Journal des défauts que la couche `data` n'a pas su traduire.
  ///
  /// 🔴 Ne journalise jamais le contenu du formulaire : mots de passe et
  /// jetons n'apparaissent nulle part (CLAUDE.md §13).
  final Logger _logger = Logger();

  /// Temporisation appliquée quand l'API ne renvoie pas d'en-tête
  /// `Retry-After` : la fenêtre de limitation des routes d'authentification
  /// est d'une minute (guide §4), l'attendre en entier suffit toujours.
  static const Duration defaultThrottle = Duration(seconds: 60);

  @override
  AuthFormState build() {
    ref.onDispose(_stopTicker);
    return const AuthFormState();
  }

  /// Exécute [action] en tenant l'état à jour.
  ///
  /// Renvoie `true` si l'opération a abouti.
  Future<bool> submit(Future<void> Function() action) async {
    if (state.isBusy) return false;

    state = state.copyWith(
      isSubmitting: true,
      fieldErrors: const {},
      clearFailure: true,
      succeeded: false,
    );

    try {
      await action();
      state = state.copyWith(isSubmitting: false, succeeded: true);
      return true;
    } on Failure catch (failure) {
      _applyFailure(failure);
      return false;
    } on Object catch (error, stackTrace) {
      // Filet de sécurité : une exception qui n'est pas une `Failure` (base
      // locale illisible, plateforme mal configurée) laissait le formulaire
      // bloqué en « envoi en cours », sans le moindre message. L'utilisateur
      // doit toujours récupérer la main, même sur un défaut que la couche
      // `data` n'a pas su traduire — et la cause doit rester dans les journaux
      // plutôt que d'être avalée.
      _logger.e(
        'Échec inattendu du formulaire',
        error: error,
        stackTrace: stackTrace,
      );
      _applyFailure(UnexpectedFailure(cause: error));
      return false;
    }
  }

  /// Signale les erreurs de validation locales, sans appeler l'API.
  void showLocalErrors(Map<String, AuthFieldError> errors) {
    state = state.copyWith(fieldErrors: errors, clearFailure: true);
  }

  /// Efface le message global (ex. à la première frappe de l'utilisateur).
  void clearFailure() {
    if (state.failure != null) state = state.copyWith(clearFailure: true);
  }

  void _applyFailure(Failure failure) {
    if (failure is ValidationFailure) {
      state = state.copyWith(
        isSubmitting: false,
        fieldErrors: _fieldErrorsOf(failure),
        // Un 400 sans champ identifié reste affiché en tête de formulaire.
        failure: failure.isGlobal ? failure : null,
        clearFailure: !failure.isGlobal,
      );
      return;
    }

    if (failure is RateLimitFailure) {
      state = state.copyWith(isSubmitting: false, failure: failure);
      _startThrottle(failure.retryAfter ?? defaultThrottle);
      return;
    }

    state = state.copyWith(isSubmitting: false, failure: failure);
  }

  static Map<String, AuthFieldError> _fieldErrorsOf(ValidationFailure failure) {
    return {
      for (final entry in failure.fieldErrors.entries)
        if (entry.value.isNotEmpty)
          entry.key: AuthFieldError.fromServer(entry.value.first),
    };
  }

  void _startThrottle(Duration duration) {
    _stopTicker();
    state = state.copyWith(retryIn: duration);

    _ticker = Timer.periodic(const Duration(seconds: 1), (timer) {
      final remaining = state.retryIn - const Duration(seconds: 1);
      if (remaining <= Duration.zero) {
        _stopTicker();
        state = state.copyWith(retryIn: Duration.zero, clearFailure: true);
        return;
      }
      state = state.copyWith(retryIn: remaining);
    });
  }

  void _stopTicker() {
    _ticker?.cancel();
    _ticker = null;
  }
}
