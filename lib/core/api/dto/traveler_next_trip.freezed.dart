// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_next_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TravelerNextTrip {

@JsonKey(name: 'ticket_number') String get ticketNumber; String get origin; String get destination;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'seat_number') String get seatNumber; String get status;@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'company_sigle') String? get companySigle;
/// Create a copy of TravelerNextTrip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerNextTripCopyWith<TravelerNextTrip> get copyWith => _$TravelerNextTripCopyWithImpl<TravelerNextTrip>(this as TravelerNextTrip, _$identity);

  /// Serializes this TravelerNextTrip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerNextTrip&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,origin,destination,departureTime,seatNumber,status,companyName,companySigle);

@override
String toString() {
  return 'TravelerNextTrip(ticketNumber: $ticketNumber, origin: $origin, destination: $destination, departureTime: $departureTime, seatNumber: $seatNumber, status: $status, companyName: $companyName, companySigle: $companySigle)';
}


}

/// @nodoc
abstract mixin class $TravelerNextTripCopyWith<$Res>  {
  factory $TravelerNextTripCopyWith(TravelerNextTrip value, $Res Function(TravelerNextTrip) _then) = _$TravelerNextTripCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber, String origin, String destination,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'seat_number') String seatNumber, String status,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_sigle') String? companySigle
});




}
/// @nodoc
class _$TravelerNextTripCopyWithImpl<$Res>
    implements $TravelerNextTripCopyWith<$Res> {
  _$TravelerNextTripCopyWithImpl(this._self, this._then);

  final TravelerNextTrip _self;
  final $Res Function(TravelerNextTrip) _then;

/// Create a copy of TravelerNextTrip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? seatNumber = null,Object? status = null,Object? companyName = null,Object? companySigle = freezed,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerNextTrip].
extension TravelerNextTripPatterns on TravelerNextTrip {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerNextTrip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerNextTrip() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerNextTrip value)  $default,){
final _that = this;
switch (_that) {
case _TravelerNextTrip():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerNextTrip value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerNextTrip() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber,  String origin,  String destination, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'seat_number')  String seatNumber,  String status, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String? companySigle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerNextTrip() when $default != null:
return $default(_that.ticketNumber,_that.origin,_that.destination,_that.departureTime,_that.seatNumber,_that.status,_that.companyName,_that.companySigle);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber,  String origin,  String destination, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'seat_number')  String seatNumber,  String status, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String? companySigle)  $default,) {final _that = this;
switch (_that) {
case _TravelerNextTrip():
return $default(_that.ticketNumber,_that.origin,_that.destination,_that.departureTime,_that.seatNumber,_that.status,_that.companyName,_that.companySigle);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ticket_number')  String ticketNumber,  String origin,  String destination, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'seat_number')  String seatNumber,  String status, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String? companySigle)?  $default,) {final _that = this;
switch (_that) {
case _TravelerNextTrip() when $default != null:
return $default(_that.ticketNumber,_that.origin,_that.destination,_that.departureTime,_that.seatNumber,_that.status,_that.companyName,_that.companySigle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelerNextTrip implements TravelerNextTrip {
  const _TravelerNextTrip({@JsonKey(name: 'ticket_number') required this.ticketNumber, required this.origin, required this.destination, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'seat_number') required this.seatNumber, required this.status, @JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'company_sigle') required this.companySigle});
  factory _TravelerNextTrip.fromJson(Map<String, dynamic> json) => _$TravelerNextTripFromJson(json);

@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override final  String origin;
@override final  String destination;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'seat_number') final  String seatNumber;
@override final  String status;
@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'company_sigle') final  String? companySigle;

/// Create a copy of TravelerNextTrip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerNextTripCopyWith<_TravelerNextTrip> get copyWith => __$TravelerNextTripCopyWithImpl<_TravelerNextTrip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelerNextTripToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerNextTrip&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,origin,destination,departureTime,seatNumber,status,companyName,companySigle);

@override
String toString() {
  return 'TravelerNextTrip(ticketNumber: $ticketNumber, origin: $origin, destination: $destination, departureTime: $departureTime, seatNumber: $seatNumber, status: $status, companyName: $companyName, companySigle: $companySigle)';
}


}

/// @nodoc
abstract mixin class _$TravelerNextTripCopyWith<$Res> implements $TravelerNextTripCopyWith<$Res> {
  factory _$TravelerNextTripCopyWith(_TravelerNextTrip value, $Res Function(_TravelerNextTrip) _then) = __$TravelerNextTripCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber, String origin, String destination,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'seat_number') String seatNumber, String status,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_sigle') String? companySigle
});




}
/// @nodoc
class __$TravelerNextTripCopyWithImpl<$Res>
    implements _$TravelerNextTripCopyWith<$Res> {
  __$TravelerNextTripCopyWithImpl(this._self, this._then);

  final _TravelerNextTrip _self;
  final $Res Function(_TravelerNextTrip) _then;

/// Create a copy of TravelerNextTrip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? seatNumber = null,Object? status = null,Object? companyName = null,Object? companySigle = freezed,}) {
  return _then(_TravelerNextTrip(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
