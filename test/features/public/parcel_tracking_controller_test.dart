import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transbooking_bf/core/error/failure.dart';
import 'package:transbooking_bf/features/public/domain/parcel_tracking.dart';
import 'package:transbooking_bf/features/public/domain/public_repository.dart';
import 'package:transbooking_bf/features/public/presentation/parcel_tracking_controller.dart';
import 'package:transbooking_bf/features/public/presentation/public_providers.dart';

class _MockRepository extends Mock implements PublicRepository {}

void main() {
  late _MockRepository repository;

  const parcel = ParcelTracking(
    trackingNumber: 'COL2026000123',
    statusDisplay: 'En transit',
    stage: ParcelStage.inTransit,
    originCity: 'Ouagadougou',
    destinationCity: 'Koudougou',
    recipientName: 'Salif Kaboré',
    recipientPhone: '****2109',
  );

  ProviderContainer createContainer() {
    final container = ProviderContainer(
      overrides: [publicRepositoryProvider.overrideWithValue(repository)],
    );
    // Un écouteur maintient le provider auto-dispose en vie le temps du test.
    container.listen(parcelTrackingControllerProvider, (_, _) {});
    addTearDown(container.dispose);
    return container;
  }

  setUp(() => repository = _MockRepository());

  test('démarre sans résultat', () async {
    final container = createContainer();
    final value = await container.read(parcelTrackingControllerProvider.future);
    expect(value, isNull);
  });

  test('un numéro valide renvoie le colis', () async {
    when(
      () => repository.trackParcel('COL2026000123'),
    ).thenAnswer((_) async => parcel);
    final container = createContainer();

    await container
        .read(parcelTrackingControllerProvider.notifier)
        .track('COL2026000123');

    expect(container.read(parcelTrackingControllerProvider).value, parcel);
  });

  test('un numéro introuvable remonte en erreur', () async {
    when(
      () => repository.trackParcel(any()),
    ).thenThrow(const NotFoundFailure());
    final container = createContainer();

    await container
        .read(parcelTrackingControllerProvider.notifier)
        .track('COL0000000000');

    final state = container.read(parcelTrackingControllerProvider);
    expect(state.hasError, isTrue);
    expect(state.error, isA<NotFoundFailure>());
  });

  test('un numéro vide ne déclenche aucun appel', () async {
    final container = createContainer();
    await container.read(parcelTrackingControllerProvider.notifier).track('  ');
    verifyNever(() => repository.trackParcel(any()));
  });
}
