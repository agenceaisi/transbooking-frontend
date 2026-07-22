import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/localization/app_locales.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/l10n/app_localizations.dart';

/// Monte un widget dans le thème et les traductions de l'application.
///
/// Les composants lisent leurs libellés dans les `.arb` : les tester sans
/// `AppLocalizations` n'aurait pas de sens.
Future<void> pumpAppWidget(WidgetTester tester, Widget child) async {
  await tester.pumpWidget(
    MaterialApp(
      theme: AppTheme.light,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocales.supported,
      locale: AppLocales.fallback,
      home: Scaffold(body: child),
    ),
  );
}

/// Traductions françaises, pour comparer aux textes attendus sans les recopier.
Future<AppLocalizations> loadFrenchL10n() =>
    AppLocalizations.delegate.load(AppLocales.french);
