import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Heure courante, réémise à chaque minute.
///
/// Injectée plutôt que créée dans le widget : l'en-tête agent affiche une
/// pendule, et un minuteur créé au fond de l'arbre serait impossible à figer
/// en test.
final clockProvider = StreamProvider<DateTime>((ref) async* {
  yield DateTime.now();
  // La minute suffit : l'affichage s'arrête aux minutes.
  yield* Stream<DateTime>.periodic(
    const Duration(minutes: 1),
    (_) => DateTime.now(),
  );
});
