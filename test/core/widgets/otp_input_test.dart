import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/core/widgets/otp_input.dart';

import '../../test_harness.dart';

void main() {
  testWidgets('affiche six cases par défaut', (tester) async {
    await pumpAppWidget(tester, OtpInput(onCompleted: (_) {}));

    // Une case par chiffre attendu.
    expect(
      find.descendant(
        of: find.byType(OtpInput),
        matching: find.byType(Container),
      ),
      findsNWidgets(6),
    );
  });

  testWidgets('affiche les chiffres saisis en monospace', (tester) async {
    await pumpAppWidget(tester, OtpInput(onCompleted: (_) {}));

    await tester.enterText(find.byType(TextField), '123');
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);

    final digit = tester.widget<Text>(find.text('1'));
    expect(digit.style?.fontFamily, AppTextStyles.otpDigit.fontFamily);
  });

  testWidgets('signale le code une fois les six chiffres saisis', (
    tester,
  ) async {
    String? completed;
    var callCount = 0;

    await pumpAppWidget(
      tester,
      OtpInput(
        onCompleted: (value) {
          completed = value;
          callCount++;
        },
      ),
    );

    await tester.enterText(find.byType(TextField), '12345');
    await tester.pump();
    expect(completed, isNull, reason: 'code encore incomplet');

    await tester.enterText(find.byType(TextField), '123456');
    await tester.pump();

    expect(completed, '123456');
    expect(callCount, 1);
  });

  testWidgets('refuse les caractères non numériques', (tester) async {
    await pumpAppWidget(tester, OtpInput(onCompleted: (_) {}));

    await tester.enterText(find.byType(TextField), '12ab34');
    await tester.pump();

    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.controller?.text, '1234');
  });

  testWidgets('ne dépasse pas la longueur du code', (tester) async {
    await pumpAppWidget(tester, OtpInput(onCompleted: (_) {}));

    await tester.enterText(find.byType(TextField), '1234567890');
    await tester.pump();

    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.controller?.text, '123456');
  });

  testWidgets('prévient à chaque frappe', (tester) async {
    final saisies = <String>[];

    await pumpAppWidget(
      tester,
      OtpInput(onCompleted: (_) {}, onChanged: saisies.add),
    );

    await tester.enterText(find.byType(TextField), '1');
    await tester.enterText(find.byType(TextField), '12');
    await tester.pump();

    expect(saisies, ['1', '12']);
  });

  testWidgets('passe les cases en rouge quand le code est refusé', (
    tester,
  ) async {
    await pumpAppWidget(tester, OtpInput(onCompleted: (_) {}, hasError: true));

    await tester.enterText(find.byType(TextField), '000000');
    await tester.pump();

    final box = tester.widget<Container>(
      find
          .descendant(
            of: find.byType(OtpInput),
            matching: find.byType(Container),
          )
          .first,
    );
    final decoration = box.decoration! as BoxDecoration;

    expect(
      (decoration.border! as Border).top.color,
      AppStatusColors.danger.dot,
    );
  });

  testWidgets('bloque la saisie quand le champ est désactivé', (tester) async {
    await pumpAppWidget(tester, OtpInput(onCompleted: (_) {}, enabled: false));

    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.enabled, isFalse);
  });

  testWidgets('accepte une longueur différente', (tester) async {
    await pumpAppWidget(tester, OtpInput(onCompleted: (_) {}, length: 4));

    expect(
      find.descendant(
        of: find.byType(OtpInput),
        matching: find.byType(Container),
      ),
      findsNWidgets(4),
    );
  });
}
