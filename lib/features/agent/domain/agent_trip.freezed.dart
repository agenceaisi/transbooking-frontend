// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AgentTrip {

 int get id; String get originCity; String get destinationCity; DateTime get departureTime; String? get vehicleRegistration; int? get availableSeats;/// Tarif de base du trajet, lecture seule (CLAUDE.md §13) — jamais
/// recalculé côté app.
///
/// `null` quand le voyage vient du cache hors ligne (paquet du matin,
/// `OfflineTrip` ne porte pas le tarif) : la vente au guichet omet alors
/// `amount`, calculé côté serveur à la synchronisation.
 String? get price; TripStatus? get status;
/// Create a copy of AgentTrip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentTripCopyWith<AgentTrip> get copyWith => _$AgentTripCopyWithImpl<AgentTrip>(this as AgentTrip, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentTrip&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,originCity,destinationCity,departureTime,vehicleRegistration,availableSeats,price,status);

@override
String toString() {
  return 'AgentTrip(id: $id, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, vehicleRegistration: $vehicleRegistration, availableSeats: $availableSeats, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class $AgentTripCopyWith<$Res>  {
  factory $AgentTripCopyWith(AgentTrip value, $Res Function(AgentTrip) _then) = _$AgentTripCopyWithImpl;
@useResult
$Res call({
 int id, String originCity, String destinationCity, DateTime departureTime, String? vehicleRegistration, int? availableSeats, String? price, TripStatus? status
});




}
/// @nodoc
class _$AgentTripCopyWithImpl<$Res>
    implements $AgentTripCopyWith<$Res> {
  _$AgentTripCopyWithImpl(this._self, this._then);

  final AgentTrip _self;
  final $Res Function(AgentTrip) _then;

/// Create a copy of AgentTrip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? vehicleRegistration = freezed,Object? availableSeats = freezed,Object? price = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentTrip].
extension AgentTripPatterns on AgentTrip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentTrip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentTrip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentTrip value)  $default,){
final _that = this;
switch (_that) {
case _AgentTrip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentTrip value)?  $default,){
final _that = this;
switch (_that) {
case _AgentTrip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String originCity,  String destinationCity,  DateTime departureTime,  String? vehicleRegistration,  int? availableSeats,  String? price,  TripStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentTrip() when $default != null:
return $default(_that.id,_that.originCity,_that.destinationCity,_that.departureTime,_that.vehicleRegistration,_that.availableSeats,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String originCity,  String destinationCity,  DateTime departureTime,  String? vehicleRegistration,  int? availableSeats,  String? price,  TripStatus? status)  $default,) {final _that = this;
switch (_that) {
case _AgentTrip():
return $default(_that.id,_that.originCity,_that.destinationCity,_that.departureTime,_that.vehicleRegistration,_that.availableSeats,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String originCity,  String destinationCity,  DateTime departureTime,  String? vehicleRegistration,  int? availableSeats,  String? price,  TripStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _AgentTrip() when $default != null:
return $default(_that.id,_that.originCity,_that.destinationCity,_that.departureTime,_that.vehicleRegistration,_that.availableSeats,_that.price,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _AgentTrip extends AgentTrip {
  const _AgentTrip({required this.id, required this.originCity, required this.destinationCity, required this.departureTime, this.vehicleRegistration, this.availableSeats, this.price, this.status}): super._();
  

@override final  int id;
@override final  String originCity;
@override final  String destinationCity;
@override final  DateTime departureTime;
@override final  String? vehicleRegistration;
@override final  int? availableSeats;
/// Tarif de base du trajet, lecture seule (CLAUDE.md §13) — jamais
/// recalculé côté app.
///
/// `null` quand le voyage vient du cache hors ligne (paquet du matin,
/// `OfflineTrip` ne porte pas le tarif) : la vente au guichet omet alors
/// `amount`, calculé côté serveur à la synchronisation.
@override final  String? price;
@override final  TripStatus? status;

/// Create a copy of AgentTrip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentTripCopyWith<_AgentTrip> get copyWith => __$AgentTripCopyWithImpl<_AgentTrip>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentTrip&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,originCity,destinationCity,departureTime,vehicleRegistration,availableSeats,price,status);

@override
String toString() {
  return 'AgentTrip(id: $id, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, vehicleRegistration: $vehicleRegistration, availableSeats: $availableSeats, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AgentTripCopyWith<$Res> implements $AgentTripCopyWith<$Res> {
  factory _$AgentTripCopyWith(_AgentTrip value, $Res Function(_AgentTrip) _then) = __$AgentTripCopyWithImpl;
@override @useResult
$Res call({
 int id, String originCity, String destinationCity, DateTime departureTime, String? vehicleRegistration, int? availableSeats, String? price, TripStatus? status
});




}
/// @nodoc
class __$AgentTripCopyWithImpl<$Res>
    implements _$AgentTripCopyWith<$Res> {
  __$AgentTripCopyWithImpl(this._self, this._then);

  final _AgentTrip _self;
  final $Res Function(_AgentTrip) _then;

/// Create a copy of AgentTrip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? vehicleRegistration = freezed,Object? availableSeats = freezed,Object? price = freezed,Object? status = freezed,}) {
  return _then(_AgentTrip(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripStatus?,
  ));
}


}

// dart format on
