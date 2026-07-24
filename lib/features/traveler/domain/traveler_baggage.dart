import 'package:freezed_annotation/freezed_annotation.dart';

part 'traveler_baggage.freezed.dart';

/// Emplacement d'un bagage (guide, `LocationEnum`).
enum BaggageLocation {
  hold('hold'),
  cabin('cabin'),
  unknown('');

  const BaggageLocation(this.wire);

  final String wire;

  static BaggageLocation fromWire(String? wire) {
    for (final value in values) {
      if (value.wire == wire) return value;
    }
    return BaggageLocation.unknown;
  }
}

/// Un bagage enregistré, porté par une réservation (`BookingRead.baggage`).
@freezed
abstract class TravelerBaggageItem with _$TravelerBaggageItem {
  const factory TravelerBaggageItem({
    required int id,
    required String label,
    required String tag,

    /// Poids en kg, chaîne décimale renvoyée par l'API (lecture seule).
    required String weightKg,
    required BaggageLocation location,
    required String locationDisplay,
  }) = _TravelerBaggageItem;
}
