import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/features/auth/domain/account_profile.dart';
import 'package:transbooking_bf/features/auth/domain/auth_repository.dart';
import 'package:transbooking_bf/features/auth/presentation/auth_form_state.dart';
import 'package:transbooking_bf/features/auth/presentation/auth_providers.dart';
import 'package:transbooking_bf/features/auth/presentation/registration_controllers.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late _MockAuthRepository repository;
  late ProviderContainer container;

  setUp(() {
    repository = _MockAuthRepository();
    container = ProviderContainer(
      overrides: [authRepositoryProvider.overrideWithValue(repository)],
    );
    addTearDown(container.dispose);
  });

  group('inscription voyageur', () {
    TravelerRegistrationController controller() =>
        container.read(travelerRegistrationControllerProvider.notifier);

    AuthFormState state() =>
        container.read(travelerRegistrationControllerProvider);

    Future<bool> register({
      String prenom = 'Awa',
      String nom = 'Ouedraogo',
      String phone = '70123456',
      String password = 'motdepasse8',
      String email = '',
      bool terms = true,
    }) {
      return controller().register(
        prenom: prenom,
        nom: nom,
        localPhone: phone,
        password: password,
        email: email,
        termsAccepted: terms,
      );
    }

    void stubSuccess() {
      when(
        () => repository.registerTraveler(
          prenom: any(named: 'prenom'),
          nom: any(named: 'nom'),
          phone: any(named: 'phone'),
          password: any(named: 'password'),
          email: any(named: 'email'),
        ),
      ).thenAnswer((_) async {});
    }

    test('envoie le numéro complet, sans e-mail vide', () async {
      stubSuccess();

      expect(await register(), isTrue);

      verify(
        () => repository.registerTraveler(
          prenom: 'Awa',
          nom: 'Ouedraogo',
          phone: '+22670123456',
          password: 'motdepasse8',
          email: null,
        ),
      ).called(1);
    });

    test('exige l\'acceptation des conditions', () async {
      expect(await register(terms: false), isFalse);
      expect(
        state().errorFor(TravelerRegistrationController.termsField)?.issue,
        AuthFieldIssue.termsRequired,
      );
      verifyNever(
        () => repository.registerTraveler(
          prenom: any(named: 'prenom'),
          nom: any(named: 'nom'),
          phone: any(named: 'phone'),
          password: any(named: 'password'),
          email: any(named: 'email'),
        ),
      );
    });

    test('refuse un mot de passe trop court avant l\'appel', () async {
      expect(await register(password: 'court'), isFalse);
      expect(
        state().errorFor('password')?.issue,
        AuthFieldIssue.passwordTooShort,
      );
    });

    test('refuse un e-mail mal formé', () async {
      expect(await register(email: 'awa.example'), isFalse);
      expect(state().errorFor('email')?.issue, AuthFieldIssue.emailInvalid);
    });

    test('affiche le message serveur sous le champ concerné', () async {
      when(
        () => repository.registerTraveler(
          prenom: any(named: 'prenom'),
          nom: any(named: 'nom'),
          phone: any(named: 'phone'),
          password: any(named: 'password'),
          email: any(named: 'email'),
        ),
      ).thenThrow(
        const ValidationFailure(
          fieldErrors: {
            'phone': ['Ce numero de telephone est deja utilise.'],
          },
        ),
      );

      expect(await register(), isFalse);
      expect(
        state().errorFor('phone')?.message,
        'Ce numero de telephone est deja utilise.',
      );
    });
  });

  group('demande de compte compagnie', () {
    CompanyRequestController controller() =>
        container.read(companyRequestControllerProvider.notifier);

    AuthFormState state() => container.read(companyRequestControllerProvider);

    test('dépose la demande et marque le succès', () async {
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

      final sent = await controller().submitRequest(
        companyName: 'Transport Sahel',
        managerName: 'Awa Ouedraogo',
        localPhone: '25000000',
        email: 'contact@sahel.bf',
        city: 'Ouagadougou',
      );

      expect(sent, isTrue);
      expect(state().succeeded, isTrue);
    });

    test('l\'e-mail professionnel est obligatoire', () async {
      final sent = await controller().submitRequest(
        companyName: 'Transport Sahel',
        managerName: 'Awa Ouedraogo',
        localPhone: '25000000',
        email: '',
        city: 'Ouagadougou',
      );

      expect(sent, isFalse);
      expect(state().errorFor('email')?.issue, AuthFieldIssue.required);
    });
  });
}
