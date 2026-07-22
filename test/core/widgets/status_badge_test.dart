import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/core/widgets/status_badge.dart';

import '../../test_harness.dart';

void main() {
  testWidgets('affiche le libellé fourni', (tester) async {
    await pumpAppWidget(
      tester,
      const StatusBadge(label: 'Payé', type: StatusType.success),
    );

    expect(find.text('Payé'), findsOneWidget);
  });

  testWidgets('applique les quatre tons du statut', (tester) async {
    await pumpAppWidget(
      tester,
      const StatusBadge(label: 'Annulé', type: StatusType.danger),
    );

    const palette = AppStatusColors.danger;

    final container = tester.widget<Container>(
      find
          .descendant(
            of: find.byType(StatusBadge),
            matching: find.byType(Container),
          )
          .first,
    );
    final decoration = container.decoration! as BoxDecoration;

    expect(decoration.color, palette.background);
    expect(decoration.border, Border.all(color: palette.border));

    final text = tester.widget<Text>(find.text('Annulé'));
    expect(text.style?.color, palette.foreground);
  });

  testWidgets('chaque statut a sa propre couleur', (tester) async {
    // Deux statuts ne doivent jamais se confondre visuellement.
    final backgrounds = <Color>{};

    for (final type in StatusType.values) {
      await pumpAppWidget(tester, StatusBadge(label: type.name, type: type));
      backgrounds.add(AppStatusColors.of(type).background);
    }

    expect(backgrounds, hasLength(StatusType.values.length));
  });

  testWidgets('masque la pastille quand showDot est faux', (tester) async {
    await pumpAppWidget(
      tester,
      const StatusBadge(
        label: 'Programmé',
        type: StatusType.info,
        showDot: false,
      ),
    );

    // Sans pastille, il ne reste que le conteneur du badge.
    final containers = find.descendant(
      of: find.byType(StatusBadge),
      matching: find.byType(Container),
    );

    expect(containers, findsOneWidget);
    expect(find.text('Programmé'), findsOneWidget);
  });
}
