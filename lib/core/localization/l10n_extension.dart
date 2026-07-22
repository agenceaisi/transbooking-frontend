import 'package:flutter/widgets.dart';
import 'package:transbooking_bf/l10n/app_localizations.dart';

/// Raccourci d'accès aux chaînes traduites : `context.l10n.appTitle`.
///
/// Évite d'écrire `AppLocalizations.of(context)` dans chaque widget.
extension L10nExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
