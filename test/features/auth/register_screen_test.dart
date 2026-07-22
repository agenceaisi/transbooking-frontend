import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/localization/app_locales.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/features/auth/domain/account_profile.dart';
import 'package:transbooking_bf/features/auth/domain/auth_repository.dart';
import 'package:transbooking_bf/features/auth/presentation/auth_providers.dart';
import 'package:transbooking_bf/features/auth/presentation/screens/register_screen.dart';
import 'package:transbooking_bf/l10n/app_localizations.dart';

import '../../test_harness.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late _MockAuthRepository repository;
  late AppLocalizations l10n;

  setUp(() async {
    repository = _MockAuthRepository();
    l10n = await loadFrenchL10n();
  });

  Future<void> pumpRegisterScreen(WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [authRepositoryProvider.overrideWithValue(repository)],
        child: MaterialApp(
          theme: AppTheme.light,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocales.supported,
          locale: AppLocales.fallback,
          home: const RegisterScreen(),
        ),
      ),
    );
    await tester.pump();
  }

  testWidgets('ouvre sur le parcours voyageur', (tester) async {
    await pumpRegisterScreen(tester);

    expect(find.text(l10n.registerTitle), findsOneWidget);
    expect(find.text(l10n.fieldFirstName), findsOneWidget);
    expect(find.text(l10n.registerSubmitTraveler), findsOneWidget);
  });

  testWidgets('l\'onglet compagnie annonce la validation sous 48 h', (
    tester,
  ) async {
    await pumpRegisterScreen(tester);

    await tester.tap(find.text(l10n.registerTabCompany));
    await tester.pumpAndSettle();

    expect(find.text(l10n.companyRequestNotice), findsOneWidget);
    expect(find.text(l10n.fieldCompanyName), findsOneWidget);
    expect(find.text(l10n.companyRequestSubmit), findsOneWidget);
    // L'import de documents reste annoncé comme indisponible (CLAUDE.md §7).
    expect(find.text(l10n.featureComingSoon), findsOneWidget);
  });

  testWidgets('la demande compagnie aboutit sur un accusé de réception', (
    tester,
  ) async {
    when(
      () => repository.requestCompanyAccount(
        companyName: any(named: 'companyName'),
        managerName: any(named: 'managerName'),
        phone: any(named: 'phone'),
        email: any(named: 'email'),
        city: any(named: 'city'),
      ),
    ).thenAnswer(
      (_) async => const CompanyAccountRequest(
        id: 12,
        companyName: 'Transport Sahel',
        status: 'pending',
      ),
    );

    await pumpRegisterScreen(tester);
    await tester.tap(find.text(l10n.registerTabCompany));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).at(0), 'Transport Sahel');
    await tester.enterText(find.byType(TextField).at(1), 'Awa Ouedraogo');
    await tester.enterText(find.byType(TextField).at(2), '25000000');
    await tester.enterText(find.byType(TextField).at(3), 'contact@sahel.bf');
    await tester.enterText(find.byType(TextField).at(4), 'Ouagadougou');

    final submit = find.text(l10n.companyRequestSubmit);
    await tester.ensureVisible(submit);
    await tester.pumpAndSettle();
    await tester.tap(submit);
    await tester.pumpAndSettle();

    expect(find.text(l10n.companyRequestSuccess), findsWidgets);
  });
}
