// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml

import 'package:freezed_annotation/freezed_annotation.dart';

import 'booking_read.dart';

part 'paginated_booking_read_list.freezed.dart';
part 'paginated_booking_read_list.g.dart';

@freezed
abstract class PaginatedBookingReadList with _$PaginatedBookingReadList {
  const factory PaginatedBookingReadList({
    required int count,
    String? next,
    String? previous,
    required List<BookingRead> results,
  }) = _PaginatedBookingReadList;

  factory PaginatedBookingReadList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedBookingReadListFromJson(json);
}
