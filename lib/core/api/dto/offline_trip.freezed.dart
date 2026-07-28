// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfflineTrip {

 int get id;@JsonKey(name: 'origin_city') String get originCity;@JsonKey(name: 'destination_city') String get destinationCity;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'available_seats') int? get availableSeats; String get vehicle;@JsonKey(name: 'seat_plan') dynamic get seatPlan; StatusF60Enum? get status;
/// Create a copy of OfflineTrip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineTripCopyWith<OfflineTrip> get copyWith => _$OfflineTripCopyWithImpl<OfflineTrip>(this as OfflineTrip, _$identity);

  /// Serializes this OfflineTrip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineTrip&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&const DeepCollectionEquality().equals(other.seatPlan, seatPlan)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,destinationCity,departureTime,availableSeats,vehicle,const DeepCollectionEquality().hash(seatPlan),status);

@override
String toString() {
  return 'OfflineTrip(id: $id, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, availableSeats: $availableSeats, vehicle: $vehicle, seatPlan: $seatPlan, status: $status)';
}


}

/// @nodoc
abstract mixin class $OfflineTripCopyWith<$Res>  {
  factory $OfflineTripCopyWith(OfflineTrip value, $Res Function(OfflineTrip) _then) = _$OfflineTripCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'available_seats') int? availableSeats, String vehicle,@JsonKey(name: 'seat_plan') dynamic seatPlan, StatusF60Enum? status
});




}
/// @nodoc
class _$OfflineTripCopyWithImpl<$Res>
    implements $OfflineTripCopyWith<$Res> {
  _$OfflineTripCopyWithImpl(this._self, this._then);

  final OfflineTrip _self;
  final $Res Function(OfflineTrip) _then;

/// Create a copy of OfflineTrip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? availableSeats = freezed,Object? vehicle = null,Object? seatPlan = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,vehicle: null == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as String,seatPlan: freezed == seatPlan ? _self.seatPlan : seatPlan // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfflineTrip].
extension OfflineTripPatterns on OfflineTrip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineTrip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineTrip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineTrip value)  $default,){
final _that = this;
switch (_that) {
case _OfflineTrip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineTrip value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineTrip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'available_seats')  int? availableSeats,  String vehicle, @JsonKey(name: 'seat_plan')  dynamic seatPlan,  StatusF60Enum? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineTrip() when $default != null:
return $default(_that.id,_that.originCity,_that.destinationCity,_that.departureTime,_that.availableSeats,_that.vehicle,_that.seatPlan,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'available_seats')  int? availableSeats,  String vehicle, @JsonKey(name: 'seat_plan')  dynamic seatPlan,  StatusF60Enum? status)  $default,) {final _that = this;
switch (_that) {
case _OfflineTrip():
return $default(_that.id,_that.originCity,_that.destinationCity,_that.departureTime,_that.availableSeats,_that.vehicle,_that.seatPlan,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'available_seats')  int? availableSeats,  String vehicle, @JsonKey(name: 'seat_plan')  dynamic seatPlan,  StatusF60Enum? status)?  $default,) {final _that = this;
switch (_that) {
case _OfflineTrip() when $default != null:
return $default(_that.id,_that.originCity,_that.destinationCity,_that.departureTime,_that.availableSeats,_that.vehicle,_that.seatPlan,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineTrip implements OfflineTrip {
  const _OfflineTrip({required this.id, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'destination_city') required this.destinationCity, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'available_seats') this.availableSeats, required this.vehicle, @JsonKey(name: 'seat_plan') required this.seatPlan, this.status});
  factory _OfflineTrip.fromJson(Map<String, dynamic> json) => _$OfflineTripFromJson(json);

@override final  int id;
@override@JsonKey(name: 'origin_city') final  String originCity;
@override@JsonKey(name: 'destination_city') final  String destinationCity;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'available_seats') final  int? availableSeats;
@override final  String vehicle;
@override@JsonKey(name: 'seat_plan') final  dynamic seatPlan;
@override final  StatusF60Enum? status;

/// Create a copy of OfflineTrip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineTripCopyWith<_OfflineTrip> get copyWith => __$OfflineTripCopyWithImpl<_OfflineTrip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineTripToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineTrip&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&const DeepCollectionEquality().equals(other.seatPlan, seatPlan)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,destinationCity,departureTime,availableSeats,vehicle,const DeepCollectionEquality().hash(seatPlan),status);

@override
String toString() {
  return 'OfflineTrip(id: $id, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, availableSeats: $availableSeats, vehicle: $vehicle, seatPlan: $seatPlan, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OfflineTripCopyWith<$Res> implements $OfflineTripCopyWith<$Res> {
  factory _$OfflineTripCopyWith(_OfflineTrip value, $Res Function(_OfflineTrip) _then) = __$OfflineTripCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'available_seats') int? availableSeats, String vehicle,@JsonKey(name: 'seat_plan') dynamic seatPlan, StatusF60Enum? status
});




}
/// @nodoc
class __$OfflineTripCopyWithImpl<$Res>
    implements _$OfflineTripCopyWith<$Res> {
  __$OfflineTripCopyWithImpl(this._self, this._then);

  final _OfflineTrip _self;
  final $Res Function(_OfflineTrip) _then;

/// Create a copy of OfflineTrip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? availableSeats = freezed,Object? vehicle = null,Object? seatPlan = freezed,Object? status = freezed,}) {
  return _then(_OfflineTrip(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,vehicle: null == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as String,seatPlan: freezed == seatPlan ? _self.seatPlan : seatPlan // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,
  ));
}


}

// dart format on
