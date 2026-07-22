import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/router/app_router.dart';
import 'package:transbooking_bf/core/router/app_routes.dart';
import 'package:transbooking_bf/features/auth/domain/auth_state.dart';
import 'package:transbooking_bf/features/auth/domain/user_role.dart';

void main() {
  group('session en cours de résolution', () {
    test('retient sur l\'amorçage', () {
      expect(
        guardForTest(const AuthUnknown(), AppRoutes.agent),
        AppRoutes.splash,
      );
      expect(guardForTest(const AuthUnknown(), AppRoutes.splash), isNull);
    });
  });

  group('session close', () {
    const auth = Unauthenticated();

    test('renvoie vers la connexion depuis un espace protégé', () {
      for (final location in [
        AppRoutes.traveler,
        AppRoutes.agent,
        AppRoutes.companyAdmin,
        AppRoutes.superAdmin,
      ]) {
        expect(
          guardForTest(auth, location),
          AppRoutes.login,
          reason: 'depuis $location',
        );
      }
    });

    test('laisse la connexion, l\'inscription et le compte suspendu', () {
      expect(guardForTest(auth, AppRoutes.login), isNull);
      expect(guardForTest(auth, AppRoutes.register), isNull);
      expect(guardForTest(auth, AppRoutes.accountSuspended), isNull);
    });

    test('interdit le changement de mot de passe', () {
      expect(guardForTest(auth, AppRoutes.passwordChange), AppRoutes.login);
    });
  });

  group('compte suspendu', () {
    const auth = Authenticated(role: UserRole.companyAdmin, suspended: true);

    test('enferme sur l\'écran dédié', () {
      expect(
        guardForTest(auth, AppRoutes.companyAdmin),
        AppRoutes.accountSuspended,
      );
      expect(
        guardForTest(auth, AppRoutes.passwordChange),
        AppRoutes.accountSuspended,
      );
      expect(guardForTest(auth, AppRoutes.accountSuspended), isNull);
    });
  });

  group('aiguillage par rôle', () {
    test('envoie chaque rôle vers son espace', () {
      const expected = {
        UserRole.voyageur: AppRoutes.traveler,
        UserRole.agentGuichet: AppRoutes.agent,
        UserRole.controleur: AppRoutes.agent,
        UserRole.companyAdmin: AppRoutes.companyAdmin,
        UserRole.superAdmin: AppRoutes.superAdmin,
      };

      expected.forEach((role, home) {
        expect(AppRoutes.homeFor(role), home);
        // Depuis la connexion, une session ouverte part vers son espace.
        expect(guardForTest(Authenticated(role: role), AppRoutes.login), home);
      });
    });

    test('laisse un rôle accéder à son propre espace', () {
      expect(
        guardForTest(
          const Authenticated(role: UserRole.agentGuichet),
          AppRoutes.agent,
        ),
        isNull,
      );
    });

    test('le guichet et le contrôleur partagent le module agent', () {
      for (final role in [UserRole.agentGuichet, UserRole.controleur]) {
        expect(
          guardForTest(Authenticated(role: role), AppRoutes.agent),
          isNull,
          reason: role.wireName,
        );
      }
    });

    test('ouvre le changement de mot de passe à tous les rôles', () {
      for (final role in UserRole.values) {
        expect(
          guardForTest(Authenticated(role: role), AppRoutes.passwordChange),
          isNull,
          reason: role.wireName,
        );
      }
    });

    test('ferme l\'inscription une fois la session ouverte', () {
      expect(
        guardForTest(
          const Authenticated(role: UserRole.voyageur),
          AppRoutes.register,
        ),
        AppRoutes.traveler,
      );
    });

    test('refuse l\'espace d\'un autre rôle et ramène chez soi', () {
      // Un agent qui saisit l'URL du back-office compagnie est renvoyé.
      expect(
        guardForTest(
          const Authenticated(role: UserRole.agentGuichet),
          AppRoutes.companyAdmin,
        ),
        AppRoutes.agent,
      );
      // Un voyageur ne peut pas atteindre l'administration plateforme.
      expect(
        guardForTest(
          const Authenticated(role: UserRole.voyageur),
          AppRoutes.superAdmin,
        ),
        AppRoutes.traveler,
      );
      // Un company_admin ne passe pas dans le module agent.
      expect(
        guardForTest(
          const Authenticated(role: UserRole.companyAdmin),
          AppRoutes.agent,
        ),
        AppRoutes.companyAdmin,
      );
    });
  });

  group('valeurs techniques des rôles', () {
    test('correspondent au contrat de l\'API', () {
      expect(UserRole.voyageur.wireName, 'voyageur');
      expect(UserRole.agentGuichet.wireName, 'agent_guichet');
      expect(UserRole.controleur.wireName, 'controleur');
      expect(UserRole.companyAdmin.wireName, 'company_admin');
      expect(UserRole.superAdmin.wireName, 'super_admin');
    });

    test('une valeur inconnue ne produit pas de rôle', () {
      expect(UserRole.fromWire('administrateur'), isNull);
      expect(UserRole.fromWire(null), isNull);
      expect(UserRole.fromWire('agent_guichet'), UserRole.agentGuichet);
    });
  });
}
