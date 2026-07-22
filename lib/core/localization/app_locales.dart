import 'dart:ui' show Locale;

/// Langues prises en charge par l'application.
///
/// Le français est la langue par défaut et le modèle de traduction. Ajouter une
/// langue = déposer un `lib/l10n/app_<code>.arb` et compléter cette liste.
abstract final class AppLocales {
  static const Locale french = Locale('fr');

  /// Langue de repli quand celle de l'appareil n'est pas prise en charge.
  static const Locale fallback = french;

  static const List<Locale> supported = [french];
}
