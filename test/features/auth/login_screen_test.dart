import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/localization/app_locales.dart';
import 'package:transbooking_bf/core/theme/app_theme.dart';
import 'package:transbooking_bf/features/auth/domain/account_profile.dart';
import 'package:transbooking_bf/features/auth/domain/auth_repository.dart';
import 'package:transbooking_bf/features/auth/domain/user_role.dart';
import 'package:transbooking_bf/features/auth/presentation/auth_providers.dart';
import 'package:transbooking_bf/features/auth/presentation/screens/login_screen.dart';
import 'package:transbooking_bf/features/auth/presentation/session_controller.dart';
import 'package:transbooking_bf/l10n/app_localizations.dart';

import '../../test_harness.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late _MockAuthRepository repository;
  late AppLocalizations l10n;

  const profile = AccountProfile(
    phone: '+22670123456',
    role: UserRole.voyageur,
    prenom: 'Awa',
  );

  setUp(() async {
    repository = _MockAuthRepository();
    l10n = await loadFrenchL10n();
  });

  /// Monte l'écran de connexion seul, sans routeur : les redirections sont
  /// couvertes par les tests de gardes.
  Future<void> pumpLoginScreen(WidgetTester tester) async {
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
          home: const LoginScreen(),
        ),
      ),
    );
    await tester.pump();
  }

  testWidgets('affiche le formulaire de la maquette', (tester) async {
    await pumpLoginScreen(tester);

    expect(find.text(l10n.loginTitle), findsOneWidget);
    expect(find.text(l10n.phoneFieldLabel), findsOneWidget);
    expect(find.text(l10n.loginPasswordLabel), findsOneWidget);
    expect(find.text(l10n.actionSignIn), findsOneWidget);
    // Pas de bascule « e-mail » : l'API ne connaît que le téléphone.
    expect(find.text(l10n.fieldEmail), findsNothing);
  });

  testWidgets('le lien mot de passe oublié explique son indisponibilité', (
    tester,
  ) async {
    await pumpLoginScreen(tester);

    await tester.tap(find.text(l10n.loginForgotPassword));
    await tester.pump();

    expect(find.text(l10n.loginForgotPasswordUnavailable), findsOneWidget);
  });

  testWidgets('une saisie incomplète ne déclenche aucun appel', (tester) async {
    await pumpLoginScreen(tester);

    await tester.tap(find.text(l10n.actionSignIn));
    await tester.pump();

    expect(find.text(l10n.fieldRequired), findsWidgets);
    verifyNever(
      () => repository.signIn(
        phone: any(named: 'phone'),
        password: any(named: 'password'),
      ),
    );
  });

  testWidgets('une connexion valide ouvre la session', (tester) async {
    when(
      () => repository.signIn(
        phone: any(named: 'phone'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => profile);

    await pumpLoginScreen(tester);

    await tester.enterText(find.byType(TextField).first, '70123456');
    await tester.enterText(find.byType(TextField).last, 'motdepasse8');
    await tester.tap(find.text(l10n.actionSignIn));
    await tester.pumpAndSettle();

    verify(
      () => repository.signIn(phone: '+22670123456', password: 'motdepasse8'),
    ).called(1);

    final container = ProviderScope.containerOf(
      tester.element(find.byType(LoginScreen)),
    );
    expect(container.read(sessionControllerProvider).role, UserRole.voyageur);
  });

  testWidgets('un refus du serveur s\'affiche en français, sans trace', (
    tester,
  ) async {
    when(
      () => repository.signIn(
        phone: any(named: 'phone'),
        password: any(named: 'password'),
      ),
    ).thenThrow(const UnauthorizedFailure());

    await pumpLoginScreen(tester);

    await tester.enterText(find.byType(TextField).first, '70123456');
    await tester.enterText(find.byType(TextField).last, 'faux');
    await tester.tap(find.text(l10n.actionSignIn));
    await tester.pumpAndSettle();

    // Sur cet écran, un 401 veut dire « mauvais identifiants », pas « session
    // expirée » : le message doit le refléter.
    expect(find.text(l10n.loginInvalidCredentials), findsOneWidget);
    expect(find.text(l10n.failureUnauthorized), findsNothing);
  });
}
