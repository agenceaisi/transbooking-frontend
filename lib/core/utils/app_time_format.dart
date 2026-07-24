import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

/// Mise en forme des dates et des heures affichées.
///
/// S'appuie sur `MaterialLocalizations` plutôt que sur `intl` directement :
/// les symboles de date du français arrivent alors avec
/// `flutter_localizations`, sans initialisation supplémentaire au démarrage.
///
/// Les horodatages de l'API sont en UTC (guide §1) : toutes les méthodes
/// repassent en heure locale de l'appareil avant l'affichage.
abstract final class AppTimeFormat {
  /// Heure sur 24 h — « 08:30 ».
  ///
  /// Le Burkina Faso lit l'heure sur 24 h : on ne suit pas le réglage
  /// 12 h/24 h de l'appareil, qui donnerait « 8:30 AM » sur un téléphone
  /// configuré en anglais.
  static String hourMinute(BuildContext context, DateTime dateTime) {
    return MaterialLocalizations.of(context).formatTimeOfDay(
      TimeOfDay.fromDateTime(dateTime.toLocal()),
      alwaysUse24HourFormat: true,
    );
  }

  /// Heure compacte des messages — « 08h30 ».
  static String hourMinuteCompact(BuildContext context, DateTime dateTime) {
    return hourMinute(context, dateTime).replaceFirst(':', 'h');
  }

  /// Date complète — « Mercredi 22 juillet 2026 ».
  static String fullDate(BuildContext context, DateTime dateTime) {
    final formatted = MaterialLocalizations.of(
      context,
    ).formatFullDate(dateTime.toLocal());
    return _capitalize(formatted);
  }

  /// Date moyenne — « 22 juil. 2026 ».
  static String mediumDate(BuildContext context, DateTime dateTime) {
    return MaterialLocalizations.of(
      context,
    ).formatMediumDate(dateTime.toLocal());
  }

  /// Date moyenne + heure — « 22 juil. 2026 · 07:40 » (horodatage de suivi).
  static String mediumDateTime(BuildContext context, DateTime dateTime) {
    return '${mediumDate(context, dateTime)} · ${hourMinute(context, dateTime)}';
  }

  /// Ancienneté d'un événement — « il y a 3 min ».
  ///
  /// [now] est injectable pour rendre les tests déterministes.
  static String relative(
    AppLocalizations l10n,
    DateTime dateTime, {
    DateTime? now,
  }) {
    final elapsed = (now ?? DateTime.now()).difference(dateTime);

    // Une horloge d'appareil en avance ou en retard ne doit pas produire
    // « il y a -2 min » : on ramène au plus proche.
    if (elapsed.inMinutes < 1) return l10n.timeAgoJustNow;
    if (elapsed.inHours < 1) return l10n.timeAgoMinutes(elapsed.inMinutes);
    if (elapsed.inDays < 1) return l10n.timeAgoHours(elapsed.inHours);
    return l10n.timeAgoDays(elapsed.inDays);
  }

  static String _capitalize(String value) {
    if (value.isEmpty) return value;
    return value[0].toUpperCase() + value.substring(1);
  }
}
