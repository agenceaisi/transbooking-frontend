import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/features/auth/domain/account_profile.dart';
import 'package:transbooking_bf/features/auth/domain/auth_repository.dart';
import 'package:transbooking_bf/features/auth/domain/user_role.dart';
import 'package:transbooking_bf/features/auth/presentation/auth_form_state.dart';
import 'package:transbooking_bf/features/auth/presentation/auth_providers.dart';
import 'package:transbooking_bf/features/auth/presentation/login_controller.dart';
import 'package:transbooking_bf/features/auth/presentation/session_controller.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late _MockAuthRepository repository;
  late ProviderContainer container;

  const profile = AccountProfile(
    phone: '+22670123456',
    role: UserRole.voyageur,
    prenom: 'Awa',
  );

  setUp(() {
    repository = _MockAuthRepository();
    container = ProviderContainer(
      overrides: [authRepositoryProvider.overrideWithValue(repository)],
    );
    addTearDown(container.dispose);
  });

  LoginController controller() =>
      container.read(loginControllerProvider.notifier);

  AuthFormState state() => container.read(loginControllerProvider);

  group('validation locale', () {
    test('un numéro incomplet n\'atteint pas le réseau', () async {
      final ok = await controller().signIn(
        localPhone: '7012',
        password: 'motdepasse8',
      );

      expect(ok, isFalse);
      expect(state().errorFor('phone')?.issue, AuthFieldIssue.phoneIncomplete);
      verifyNever(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      );
    });

    test('un mot de passe vide est signalé sur son champ', () async {
      await controller().signIn(localPhone: '70123456', password: '');

      expect(state().errorFor('password')?.issue, AuthFieldIssue.required);
    });
  });

  group('connexion', () {
    test('recompose le numéro complet et ouvre la session', () async {
      when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => profile);

      final ok = await controller().signIn(
        localPhone: '70123456',
        password: 'motdepasse8',
      );

      expect(ok, isTrue);
      verify(
        () => repository.signIn(phone: '+22670123456', password: 'motdepasse8'),
      ).called(1);
      expect(container.read(sessionControllerProvider).role, UserRole.voyageur);
    });

    test('identifiants refusés : échec porté par l\'état', () async {
      when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenThrow(const UnauthorizedFailure());

      final ok = await controller().signIn(
        localPhone: '70123456',
        password: 'faux',
      );

      expect(ok, isFalse);
      expect(state().failure, isA<UnauthorizedFailure>());
      expect(state().isSubmitting, isFalse);
    });

    test('erreur de champ du serveur rangée sous le bon champ', () async {
      when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenThrow(
        const ValidationFailure(
          fieldErrors: {
            'phone': ['Ce numero est inconnu.'],
          },
        ),
      );

      await controller().signIn(
        localPhone: '70123456',
        password: 'motdepasse8',
      );

      expect(state().errorFor('phone')?.message, 'Ce numero est inconnu.');
      expect(state().failure, isNull);
    });
  });

  // Le compte à rebours repose sur un `Timer.periodic` : `testWidgets` fournit
  // l'horloge simulée qui permet de l'avancer sans attendre réellement.
  group('back-off après un 429', () {
    testWidgets('bloque les envois puis se libère à l\'échéance', (
      tester,
    ) async {
      when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenThrow(const RateLimitFailure(retryAfter: Duration(seconds: 3)));

      await controller().signIn(
        localPhone: '70123456',
        password: 'motdepasse8',
      );

      expect(state().isThrottled, isTrue);
      expect(state().retryIn, const Duration(seconds: 3));

      await tester.pump(const Duration(seconds: 1));
      expect(state().retryIn, const Duration(seconds: 2));

      // Tant que le compte à rebours tourne, aucun nouvel envoi ne part.
      await controller().signIn(
        localPhone: '70123456',
        password: 'motdepasse8',
      );
      verify(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).called(1);

      await tester.pump(const Duration(seconds: 1));
      await tester.pump(const Duration(seconds: 1));
      expect(state().isThrottled, isFalse);
      expect(state().failure, isNull);
    });

    testWidgets('sans en-tête Retry-After, attend la fenêtre d\'une minute', (
      tester,
    ) async {
      when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenThrow(const RateLimitFailure());

      await controller().signIn(
        localPhone: '70123456',
        password: 'motdepasse8',
      );

      expect(state().retryIn, const Duration(seconds: 60));

      // Le minuteur doit être arrêté avant la fin du test.
      container.dispose();
    });
  });

  group('défaut non traduit en Failure', () {
    test('rend la main au lieu de bloquer le formulaire', () async {
      // Cas vécu : la base locale refusait de s'ouvrir sur le web et levait un
      // `ArgumentError`. Le formulaire restait en « envoi en cours », sans
      // message — l'utilisateur n'avait plus aucune prise.
      when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenThrow(ArgumentError('base locale indisponible'));

      final ok = await controller().signIn(
        localPhone: '70123456',
        password: 'motdepasse8',
      );

      expect(ok, isFalse);
      expect(state().isSubmitting, isFalse);
      expect(state().failure, isA<UnexpectedFailure>());
    });
  });
}
