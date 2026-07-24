/// Monogramme de repli d'une compagnie — deux lettres.
///
/// Utilisé partout où le logo réseau n'est pas (encore) fourni : le sigle s'il
/// existe, sinon les initiales du nom. Les zones photo sont des placeholders
/// (CLAUDE.md §0), on ne génère aucune image.
String companyMonogram({String? sigle, required String name}) {
  final source = (sigle != null && sigle.trim().isNotEmpty) ? sigle : name;
  final words = source.trim().split(RegExp(r'\s+'))
    ..removeWhere((word) => word.isEmpty);
  if (words.isEmpty) return '?';
  if (words.length == 1) {
    final word = words.first;
    final take = word.length >= 2 ? word.substring(0, 2) : word;
    return take.toUpperCase();
  }
  return words.take(2).map((word) => word[0]).join().toUpperCase();
}
