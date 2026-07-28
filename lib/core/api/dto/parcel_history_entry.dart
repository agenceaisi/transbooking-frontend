// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status62a_enum.dart';

part 'parcel_history_entry.freezed.dart';
part 'parcel_history_entry.g.dart';

/// Une etape horodatee de la chronologie de suivi d'un colis.
@freezed
abstract class ParcelHistoryEntry with _$ParcelHistoryEntry {
  const factory ParcelHistoryEntry({
    required Status62aEnum status,
    @JsonKey(name: 'status_display')
    required String statusDisplay,
    required String? location,
    required DateTime timestamp,
    required String? note,
  }) = _ParcelHistoryEntry;

  factory ParcelHistoryEntry.fromJson(Map<String, dynamic> json) =>
      _$ParcelHistoryEntryFromJson(json);
}
