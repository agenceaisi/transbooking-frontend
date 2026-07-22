import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/network/auth_interceptor.dart';
import 'package:transbooking_bf/core/storage/token_store.dart';

class _MockTokenStore extends Mock implements TokenStore {}

/// Adaptateur HTTP programmable : aucun appel réseau réel n'est effectué.
class _FakeAdapter implements HttpClientAdapter {
  _FakeAdapter(this.handler);

  /// Renvoie la réponse à servir pour une requête donnée.
  final ResponseBody Function(RequestOptions options) handler;

  /// Chemins reçus, dans l'ordre — sert à vérifier rejeux et concurrence.
  final List<String> requestedPaths = [];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requestedPaths.add(options.path);
    return handler(options);
  }

  @override
  void close({bool force = false}) {}
}

ResponseBody _json(Map<String, dynamic> body, int statusCode) {
  return ResponseBody.fromString(
    jsonEncode(body),
    statusCode,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );
}

void main() {
  late _MockTokenStore tokenStore;

  const initialTokens = AuthTokens(access: 'access-1', refresh: 'refresh-1');

  setUp(() {
    tokenStore = _MockTokenStore();
    when(() => tokenStore.read()).thenAnswer((_) async => initialTokens);
    when(() => tokenStore.saveAccess(any())).thenAnswer((_) async {});
    when(() => tokenStore.clear()).thenAnswer((_) async {});
  });

  /// Monte un client authentifié adossé à [handler].
  ({Dio api, _FakeAdapter adapter, List<int> expirations}) buildClient(
    ResponseBody Function(RequestOptions options) handler,
  ) {
    final adapter = _FakeAdapter(handler);
    final expirations = <int>[];

    final refreshClient = Dio(BaseOptions(baseUrl: 'http://test/api/v1'))
      ..httpClientAdapter = adapter;
    final api = Dio(BaseOptions(baseUrl: 'http://test/api/v1'))
      ..httpClientAdapter = adapter
      ..interceptors.add(
        AuthInterceptor(
          tokenStore: tokenStore,
          refreshClient: refreshClient,
          onSessionExpired: () => expirations.add(1),
        ),
      );

    return (api: api, adapter: adapter, expirations: expirations);
  }

  group('injection du jeton', () {
    test('ajoute le Bearer sur une route authentifiée', () async {
      String? sentHeader;
      final client = buildClient((options) {
        sentHeader = options.headers['Authorization'] as String?;
        return _json({'ok': true}, 200);
      });

      await client.api.get<dynamic>('/agent/trips/today/');

      expect(sentHeader, 'Bearer access-1');
    });

    test('n\'envoie pas de jeton sur la connexion', () async {
      String? sentHeader;
      final client = buildClient((options) {
        sentHeader = options.headers['Authorization'] as String?;
        return _json({'access': 'a', 'refresh': 'r'}, 200);
      });

      await client.api.post<dynamic>('/auth/login/', data: {'phone': '+226'});

      expect(sentHeader, isNull);
    });
  });

  group('rafraîchissement sur 401', () {
    test('rafraîchit puis rejoue la requête avec le nouveau jeton', () async {
      var protectedCalls = 0;
      final replayedHeaders = <String?>[];

      final client = buildClient((options) {
        if (options.path == AuthInterceptor.refreshPath) {
          return _json({'access': 'access-2'}, 200);
        }
        protectedCalls++;
        replayedHeaders.add(options.headers['Authorization'] as String?);
        // Le premier appel expire, le rejeu réussit.
        return protectedCalls == 1
            ? _json({'detail': 'Token invalide.'}, 401)
            : _json({'ok': true}, 200);
      });

      final response = await client.api.get<dynamic>('/users/me/');

      expect(response.statusCode, 200);
      expect(protectedCalls, 2);
      expect(replayedHeaders.last, 'Bearer access-2');
      verify(() => tokenStore.saveAccess('access-2')).called(1);
      expect(client.expirations, isEmpty);
    });

    test('ne tente qu\'un seul rafraîchissement pour des requêtes '
        'concurrentes', () async {
      var refreshCalls = 0;
      final expired = <String>{};

      final client = buildClient((options) {
        if (options.path == AuthInterceptor.refreshPath) {
          refreshCalls++;
          return _json({'access': 'access-2'}, 200);
        }
        // Chaque route échoue une fois, puis accepte le nouveau jeton.
        if (expired.add(options.path)) {
          return _json({'detail': 'Token invalide.'}, 401);
        }
        return _json({'ok': true}, 200);
      });

      await Future.wait([
        client.api.get<dynamic>('/users/me/'),
        client.api.get<dynamic>('/agent/trips/today/'),
        client.api.get<dynamic>('/notifications/'),
      ]);

      expect(refreshCalls, 1);
    });

    test('ne rejoue pas deux fois la même requête', () async {
      var refreshCalls = 0;
      var protectedCalls = 0;

      final client = buildClient((options) {
        if (options.path == AuthInterceptor.refreshPath) {
          refreshCalls++;
          return _json({'access': 'access-2'}, 200);
        }
        protectedCalls++;
        // La route reste en 401 malgré le nouveau jeton.
        return _json({'detail': 'Token invalide.'}, 401);
      });

      await expectLater(
        client.api.get<dynamic>('/users/me/'),
        throwsA(isA<DioException>()),
      );

      expect(refreshCalls, 1);
      expect(protectedCalls, 2, reason: 'un seul rejeu, pas de boucle');
    });
  });

  group('échec du rafraîchissement', () {
    test('purge les jetons et signale la session expirée', () async {
      final client = buildClient((options) {
        if (options.path == AuthInterceptor.refreshPath) {
          return _json({'detail': 'Token invalide ou expire.'}, 401);
        }
        return _json({'detail': 'Token invalide.'}, 401);
      });

      await expectLater(
        client.api.get<dynamic>('/users/me/'),
        throwsA(isA<DioException>()),
      );

      verify(() => tokenStore.clear()).called(1);
      expect(client.expirations, hasLength(1));
    });

    test('signale la session expirée quand le coffre est vide', () async {
      when(() => tokenStore.read()).thenAnswer((_) async => null);

      final client = buildClient(
        (options) => _json({'detail': 'Non authentifie.'}, 401),
      );

      await expectLater(
        client.api.get<dynamic>('/users/me/'),
        throwsA(isA<DioException>()),
      );

      expect(client.expirations, hasLength(1));
    });

    test('laisse passer un 401 de connexion sans rafraîchir', () async {
      var refreshCalls = 0;

      final client = buildClient((options) {
        if (options.path == AuthInterceptor.refreshPath) {
          refreshCalls++;
          return _json({'access': 'access-2'}, 200);
        }
        return _json({'detail': 'Identifiants invalides.'}, 401);
      });

      await expectLater(
        client.api.post<dynamic>('/auth/login/', data: {'phone': '+226'}),
        throwsA(isA<DioException>()),
      );

      expect(refreshCalls, 0);
      expect(client.expirations, isEmpty);
    });
  });
}
