import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart' show DatabaseConnection;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/core/storage/local_database.dart';
import 'package:transbooking_bf/core/storage/token_store.dart';
import 'package:transbooking_bf/features/auth/data/auth_remote_data_source.dart';
import 'package:transbooking_bf/features/auth/data/auth_repository_impl.dart';
import 'package:transbooking_bf/features/auth/data/session_profile_cache.dart';
import 'package:transbooking_bf/features/auth/domain/user_role.dart';

class _MockTokenStore extends Mock implements TokenStore {}

class _FakeAuthTokens extends Fake implements AuthTokens {}

/// Réponse programmée pour une route donnée.
typedef _Route = ({int status, Map<String, dynamic> body});

/// Adaptateur HTTP programmable : aucun appel réseau réel.
class _FakeAdapter implements HttpClientAdapter {
  final Map<String, _Route> routes = {};
  final List<({String path, Object? body})> calls = [];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    calls.add((path: options.path, body: options.data));
    final route = routes[options.path];
    if (route == null) {
      return ResponseBody.fromString('{}', 404, headers: _jsonHeaders);
    }
    return ResponseBody.fromString(
      jsonEncode(route.body),
      route.status,
      headers: _jsonHeaders,
    );
  }

  @override
  void close({bool force = false}) {}

  static const Map<String, List<String>> _jsonHeaders = {
    Headers.contentTypeHeader: [Headers.jsonContentType],
  };
}

void main() {
  late _FakeAdapter adapter;
  late _MockTokenStore tokenStore;
  late LocalDatabase database;
  late SessionProfileCache cache;
  late AuthRepositoryImpl repository;

  setUpAll(() => registerFallbackValue(_FakeAuthTokens()));

  setUp(() {
    adapter = _FakeAdapter();
    tokenStore = _MockTokenStore();
    database = LocalDatabase.forTesting(
      DatabaseConnection(NativeDatabase.memory()),
    );
    cache = SessionProfileCache(database);

    when(() => tokenStore.save(any())).thenAnswer((_) async {});
    when(() => tokenStore.clear()).thenAnswer((_) async {});
    when(() => tokenStore.read()).thenAnswer((_) async => null);

    final dio = Dio(BaseOptions(baseUrl: 'http://test/api/v1'))
      ..httpClientAdapter = adapter
      ..options.validateStatus = (status) =>
          status != null && status >= 200 && status < 300;

    repository = AuthRepositoryImpl(
      remote: AuthRemoteDataSource(dio),
      tokenStore: tokenStore,
      profileCache: cache,
    );
  });

  tearDown(() => database.close());

  group('connexion', () {
    test('enregistre les jetons et renvoie le rôle', () async {
      adapter.routes[AuthRemoteDataSource.loginPath] = (
        status: 200,
        body: {
          'access': 'access-1',
          'refresh': 'refresh-1',
          'role': 'agent_guichet',
          'prenom': 'Awa',
        },
      );

      final profile = await repository.signIn(
        phone: '+22670000000',
        password: 'motdepasse8',
      );

      expect(profile.role, UserRole.agentGuichet);
      expect(profile.prenom, 'Awa');

      final captured =
          verify(() => tokenStore.save(captureAny())).captured.single
              as AuthTokens;
      expect(captured.access, 'access-1');
      expect(captured.refresh, 'refresh-1');
    });

    test('accepte aussi la forme imbriquée user.role.name', () async {
      adapter.routes[AuthRemoteDataSource.loginPath] = (
        status: 200,
        body: {
          'access': 'a',
          'refresh': 'r',
          'user': {
            'role': {'name': 'company_admin'},
          },
        },
      );

      final profile = await repository.signIn(phone: '+226', password: 'x');
      expect(profile.role, UserRole.companyAdmin);
    });

    test('met le profil en cache pour une réouverture hors ligne', () async {
      adapter.routes[AuthRemoteDataSource.loginPath] = (
        status: 200,
        body: {
          'access': 'a',
          'refresh': 'r',
          'role': 'voyageur',
          'prenom': 'Awa',
        },
      );

      await repository.signIn(phone: '+22670000000', password: 'motdepasse8');

      final cached = await repository.lastKnownProfile();
      expect(cached?.role, UserRole.voyageur);
      expect(cached?.phone, '+22670000000');
    });

    test('identifiants invalides : 401 traduit en UnauthorizedFailure', () {
      adapter.routes[AuthRemoteDataSource.loginPath] = (
        status: 401,
        body: {'detail': 'Identifiants invalides.'},
      );

      expect(
        () => repository.signIn(phone: '+22670000000', password: 'faux'),
        throwsA(isA<UnauthorizedFailure>()),
      );
    });

    test('rôle inconnu : aucune session, aucun jeton enregistré', () async {
      adapter.routes[AuthRemoteDataSource.loginPath] = (
        status: 200,
        body: {'access': 'a', 'refresh': 'r', 'role': 'directeur'},
      );

      await expectLater(
        repository.signIn(phone: '+22670000000', password: 'motdepasse8'),
        throwsA(isA<UnexpectedFailure>()),
      );
      verifyNever(() => tokenStore.save(any()));
    });

    test('trop de tentatives : 429 traduit en RateLimitFailure', () async {
      adapter.routes[AuthRemoteDataSource.loginPath] = (
        status: 429,
        body: {'detail': 'Trop de tentatives. Reessayez plus tard.'},
      );

      await expectLater(
        repository.signIn(phone: '+22670000000', password: 'motdepasse8'),
        throwsA(isA<RateLimitFailure>()),
      );
    });
  });

  group('profil', () {
    test('lit le rôle depuis users/me et le met en cache', () async {
      adapter.routes[AuthRemoteDataSource.profilePath] = (
        status: 200,
        body: {
          'prenom': 'Awa',
          'nom': 'Ouedraogo',
          'phone': '+22670000000',
          'email': null,
          'role': 'controleur',
        },
      );

      final profile = await repository.loadProfile();
      expect(profile.role, UserRole.controleur);
      expect(profile.nom, 'Ouedraogo');
      expect((await repository.lastKnownProfile())?.role, UserRole.controleur);
    });

    test('403 sur son propre profil = compte suspendu', () {
      adapter.routes[AuthRemoteDataSource.profilePath] = (
        status: 403,
        body: {'detail': 'Compagnie suspendue.'},
      );

      expect(repository.loadProfile, throwsA(isA<AccountSuspendedFailure>()));
    });
  });

  group('inscription', () {
    test('remonte les erreurs de champ du serveur', () async {
      adapter.routes[AuthRemoteDataSource.registerPath] = (
        status: 400,
        body: {
          'phone': ['Ce numero de telephone est deja utilise.'],
        },
      );

      await expectLater(
        repository.registerTraveler(
          prenom: 'Awa',
          nom: 'Ouedraogo',
          phone: '+22670000000',
          password: 'motdepasse8',
        ),
        throwsA(
          isA<ValidationFailure>().having(
            (failure) => failure.firstErrorFor('phone'),
            'message du champ phone',
            'Ce numero de telephone est deja utilise.',
          ),
        ),
      );
    });

    test('demande compagnie : renvoie l\'accusé au statut pending', () async {
      adapter.routes[AuthRemoteDataSource.companyRegisterPath] = (
        status: 201,
        body: {
          'id': 12,
          'company_name': 'Transport Sahel',
          'manager_name': 'Awa Ouedraogo',
          'phone': '+22670000000',
          'email': 'contact@sahel.bf',
          'city': 'Ouagadougou',
          'status': 'pending',
          'created_at': '2026-07-21T10:00:00Z',
        },
      );

      final request = await repository.requestCompanyAccount(
        companyName: 'Transport Sahel',
        managerName: 'Awa Ouedraogo',
        phone: '+22670000000',
        email: 'contact@sahel.bf',
        city: 'Ouagadougou',
      );

      expect(request.id, 12);
      expect(request.status, 'pending');
    });
  });

  group('déconnexion', () {
    test('révoque le jeton puis purge le local', () async {
      when(() => tokenStore.read()).thenAnswer(
        (_) async => const AuthTokens(access: 'a', refresh: 'refresh-1'),
      );
      adapter.routes[AuthRemoteDataSource.logoutPath] = (
        status: 204,
        body: const {},
      );

      await repository.signOut();

      expect(
        adapter.calls.map((call) => call.path),
        contains(AuthRemoteDataSource.logoutPath),
      );
      verify(() => tokenStore.clear()).called(1);
    });

    test('purge quand même si le serveur refuse la révocation', () async {
      when(() => tokenStore.read()).thenAnswer(
        (_) async => const AuthTokens(access: 'a', refresh: 'perime'),
      );
      adapter.routes[AuthRemoteDataSource.logoutPath] = (
        status: 400,
        body: {'detail': 'Token invalide.'},
      );

      await repository.signOut();

      verify(() => tokenStore.clear()).called(1);
      expect(await repository.lastKnownProfile(), isNull);
    });
  });
}
