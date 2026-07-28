import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/localization/app_locales.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/core/widgets/primary_button.dart';
import 'package:transbooking_bf/core/widgets/secondary_button.dart';
import 'package:transbooking_bf/l10n/app_localizations.dart';

/// Régression : un bouton `expand: false` posé comme enfant non-flexible d'une
/// `Row` reçoit une largeur **non bornée**. Le style utilisait
/// `Size.fromHeight` (largeur minimale infinie) → « BoxConstraints forces an
/// infinite width » et l'écran ne s'affichait plus (ex. en-tête « Mes
/// réclamations » avec le bouton « Déposer une réclamation »).
Future<void> _pumpInRow(WidgetTester tester, Widget button) {
  return tester.pumpWidget(
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
      home: Scaffold(
        body: Row(
          children: [
            const Expanded(child: Text('Titre de la page')),
            const SizedBox(width: 12),
            button,
          ],
        ),
      ),
    ),
  );
}

void main() {
  testWidgets('PrimaryButton(expand:false) tient dans une Row', (tester) async {
    await _pumpInRow(
      tester,
      PrimaryButton(
        label: 'Déposer une réclamation',
        icon: Icons.add,
        expand: false,
        onPressed: () {},
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('SecondaryButton(expand:false) tient dans une Row', (
    tester,
  ) async {
    await _pumpInRow(
      tester,
      SecondaryButton(
        label: 'Ajouter une pièce jointe',
        icon: Icons.attach_file_rounded,
        expand: false,
        onPressed: () {},
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}
