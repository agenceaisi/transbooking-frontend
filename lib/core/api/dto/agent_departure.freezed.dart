// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_departure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentDeparture {

@JsonKey(name: 'trip_id') int get tripId; String get origin; String get destination;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'available_seats') int get availableSeats;@JsonKey(name: 'passenger_count') int get passengerCount;
/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentDepartureCopyWith<AgentDeparture> get copyWith => _$AgentDepartureCopyWithImpl<AgentDeparture>(this as AgentDeparture, _$identity);

  /// Serializes this AgentDeparture to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentDeparture&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.passengerCount, passengerCount) || other.passengerCount == passengerCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tripId,origin,destination,departureTime,availableSeats,passengerCount);

@override
String toString() {
  return 'AgentDeparture(tripId: $tripId, origin: $origin, destination: $destination, departureTime: $departureTime, availableSeats: $availableSeats, passengerCount: $passengerCount)';
}


}

/// @nodoc
abstract mixin class $AgentDepartureCopyWith<$Res>  {
  factory $AgentDepartureCopyWith(AgentDeparture value, $Res Function(AgentDeparture) _then) = _$AgentDepartureCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'trip_id') int tripId, String origin, String destination,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'available_seats') int availableSeats,@JsonKey(name: 'passenger_count') int passengerCount
});




}
/// @nodoc
class _$AgentDepartureCopyWithImpl<$Res>
    implements $AgentDepartureCopyWith<$Res> {
  _$AgentDepartureCopyWithImpl(this._self, this._then);

  final AgentDeparture _self;
  final $Res Function(AgentDeparture) _then;

/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripId = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? availableSeats = null,Object? passengerCount = null,}) {
  return _then(_self.copyWith(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeats: null == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int,passengerCount: null == passengerCount ? _self.passengerCount : passengerCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentDeparture].
extension AgentDeparturePatterns on AgentDeparture {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentDeparture value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentDeparture value)  $default,){
final _that = this;
switch (_that) {
case _AgentDeparture():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentDeparture value)?  $default,){
final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_id')  int tripId,  String origin,  String destination, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'available_seats')  int availableSeats, @JsonKey(name: 'passenger_count')  int passengerCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
return $default(_that.tripId,_that.origin,_that.destination,_that.departureTime,_that.availableSeats,_that.passengerCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_id')  int tripId,  String origin,  String destination, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'available_seats')  int availableSeats, @JsonKey(name: 'passenger_count')  int passengerCount)  $default,) {final _that = this;
switch (_that) {
case _AgentDeparture():
return $default(_that.tripId,_that.origin,_that.destination,_that.departureTime,_that.availableSeats,_that.passengerCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'trip_id')  int tripId,  String origin,  String destination, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'available_seats')  int availableSeats, @JsonKey(name: 'passenger_count')  int passengerCount)?  $default,) {final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
return $default(_that.tripId,_that.origin,_that.destination,_that.departureTime,_that.availableSeats,_that.passengerCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentDeparture implements AgentDeparture {
  const _AgentDeparture({@JsonKey(name: 'trip_id') required this.tripId, required this.origin, required this.destination, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'available_seats') required this.availableSeats, @JsonKey(name: 'passenger_count') required this.passengerCount});
  factory _AgentDeparture.fromJson(Map<String, dynamic> json) => _$AgentDepartureFromJson(json);

@override@JsonKey(name: 'trip_id') final  int tripId;
@override final  String origin;
@override final  String destination;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'available_seats') final  int availableSeats;
@override@JsonKey(name: 'passenger_count') final  int passengerCount;

/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentDepartureCopyWith<_AgentDeparture> get copyWith => __$AgentDepartureCopyWithImpl<_AgentDeparture>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentDepartureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentDeparture&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.passengerCount, passengerCount) || other.passengerCount == passengerCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tripId,origin,destination,departureTime,availableSeats,passengerCount);

@override
String toString() {
  return 'AgentDeparture(tripId: $tripId, origin: $origin, destination: $destination, departureTime: $departureTime, availableSeats: $availableSeats, passengerCount: $passengerCount)';
}


}

/// @nodoc
abstract mixin class _$AgentDepartureCopyWith<$Res> implements $AgentDepartureCopyWith<$Res> {
  factory _$AgentDepartureCopyWith(_AgentDeparture value, $Res Function(_AgentDeparture) _then) = __$AgentDepartureCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'trip_id') int tripId, String origin, String destination,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'available_seats') int availableSeats,@JsonKey(name: 'passenger_count') int passengerCount
});




}
/// @nodoc
class __$AgentDepartureCopyWithImpl<$Res>
    implements _$AgentDepartureCopyWith<$Res> {
  __$AgentDepartureCopyWithImpl(this._self, this._then);

  final _AgentDeparture _self;
  final $Res Function(_AgentDeparture) _then;

/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripId = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? availableSeats = null,Object? passengerCount = null,}) {
  return _then(_AgentDeparture(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeats: null == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int,passengerCount: null == passengerCount ? _self.passengerCount : passengerCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
