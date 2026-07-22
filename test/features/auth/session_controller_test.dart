import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/storage_providers.dart';
import 'package:transbooking_bf/core/storage/token_store.dart';
import 'package:transbooking_bf/features/auth/domain/account_profile.dart';
import 'package:transbooking_bf/features/auth/domain/auth_repository.dart';
import 'package:transbooking_bf/features/auth/domain/auth_state.dart';
import 'package:transbooking_bf/features/auth/domain/user_role.dart';
import 'package:transbooking_bf/features/auth/presentation/auth_providers.dart';
import 'package:transbooking_bf/features/auth/presentation/session_controller.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockTokenStore extends Mock implements TokenStore {}

void main() {
  late _MockAuthRepository repository;
  late _MockTokenStore tokenStore;
  late ProviderContainer container;

  const tokens = AuthTokens(access: 'a', refresh: 'r');
  const agent = AccountProfile(
    phone: '+22670000000',
    role: UserRole.agentGuichet,
    prenom: 'Awa',
  );

  setUp(() {
    repository = _MockAuthRepository();
    tokenStore = _MockTokenStore();

    when(() => repository.signOut()).thenAnswer((_) async {});
    when(() => repository.lastKnownProfile()).thenAnswer((_) async => null);

    container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(repository),
        tokenStoreProvider.overrideWithValue(tokenStore),
      ],
    );
    addTearDown(container.dispose);
  });

  SessionController controller() =>
      container.read(sessionControllerProvider.notifier);

  AuthState state() => container.read(sessionControllerProvider);

  group('restauration au démarrage', () {
    test('sans jeton : session close, aucun appel réseau', () async {
      when(() => tokenStore.read()).thenAnswer((_) async => null);

      await controller().restore();

      expect(state(), isA<Unauthenticated>());
      verifyNever(() => repository.loadProfile());
    });

    test('avec jeton : le rôle vient du serveur', () async {
      when(() => tokenStore.read()).thenAnswer((_) async => tokens);
      when(() => repository.loadProfile()).thenAnswer((_) async => agent);

      await controller().restore();

      expect(state().role, UserRole.agentGuichet);
      expect((state() as Authenticated).fromCache, isFalse);
    });

    test('hors réseau : rouvre avec le dernier profil connu', () async {
      when(() => tokenStore.read()).thenAnswer((_) async => tokens);
      when(
        () => repository.loadProfile(),
      ).thenThrow(const NoConnectionFailure());
      when(() => repository.lastKnownProfile()).thenAnswer((_) async => agent);

      await controller().restore();

      // Un agent qui démarre sa journée sans réseau garde son espace.
      expect(state().role, UserRole.agentGuichet);
      expect((state() as Authenticated).fromCache, isTrue);
    });

    test('hors réseau sans profil connu : session close', () async {
      when(() => tokenStore.read()).thenAnswer((_) async => tokens);
      when(() => repository.loadProfile()).thenThrow(const TimeoutFailure());

      await controller().restore();

      expect(state(), isA<Unauthenticated>());
    });

    test('jeton refusé : purge et session close', () async {
      when(() => tokenStore.read()).thenAnswer((_) async => tokens);
      when(
        () => repository.loadProfile(),
      ).thenThrow(const UnauthorizedFailure());

      await controller().restore();

      expect(state(), isA<Unauthenticated>());
      verify(() => repository.signOut()).called(1);
    });

    test('compte suspendu : session ouverte mais bloquée', () async {
      const admin = AccountProfile(
        phone: '+22625000000',
        role: UserRole.companyAdmin,
      );
      when(() => tokenStore.read()).thenAnswer((_) async => tokens);
      when(
        () => repository.loadProfile(),
      ).thenThrow(const AccountSuspendedFailure());
      when(() => repository.lastKnownProfile()).thenAnswer((_) async => admin);

      await controller().restore();

      expect(state().role, UserRole.companyAdmin);
      expect(state().isSuspended, isTrue);
    });
  });

  group('cycle de session', () {
    test('signedIn ouvre la session avec le rôle reçu', () {
      controller().signedIn(agent);

      expect(state().role, UserRole.agentGuichet);
      expect((state() as Authenticated).prenom, 'Awa');
    });

    test('markSuspended bascule une session ouverte', () {
      controller()
        ..signedIn(agent)
        ..markSuspended();

      expect(state().isSuspended, isTrue);
      expect(state().role, UserRole.agentGuichet);
    });

    test('signOut révoque et ferme', () async {
      controller().signedIn(agent);

      await controller().signOut();

      verify(() => repository.signOut()).called(1);
      expect(state(), isA<Unauthenticated>());
    });

    test('l\'échec du rafraîchissement ferme la session', () {
      controller()
        ..signedIn(agent)
        ..onSessionExpired();

      expect(state(), isA<Unauthenticated>());
    });
  });
}
