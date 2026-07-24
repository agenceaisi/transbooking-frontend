// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_booking_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TripBookingDetail {

 int get id; String get routeLabel; String get originCity; String get destinationCity; DateTime get departureTime; DateTime? get arrivalTime;/// Prix par place en FCFA (chaîne décimale, lecture seule).
 String get price; int? get availableSeats; List<String> get availableSeatNumbers; String? get vehicleRegistration; String get statusDisplay;
/// Create a copy of TripBookingDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripBookingDetailCopyWith<TripBookingDetail> get copyWith => _$TripBookingDetailCopyWithImpl<TripBookingDetail>(this as TripBookingDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripBookingDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&const DeepCollectionEquality().equals(other.availableSeatNumbers, availableSeatNumbers)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay));
}


@override
int get hashCode => Object.hash(runtimeType,id,routeLabel,originCity,destinationCity,departureTime,arrivalTime,price,availableSeats,const DeepCollectionEquality().hash(availableSeatNumbers),vehicleRegistration,statusDisplay);

@override
String toString() {
  return 'TripBookingDetail(id: $id, routeLabel: $routeLabel, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, availableSeats: $availableSeats, availableSeatNumbers: $availableSeatNumbers, vehicleRegistration: $vehicleRegistration, statusDisplay: $statusDisplay)';
}


}

/// @nodoc
abstract mixin class $TripBookingDetailCopyWith<$Res>  {
  factory $TripBookingDetailCopyWith(TripBookingDetail value, $Res Function(TripBookingDetail) _then) = _$TripBookingDetailCopyWithImpl;
@useResult
$Res call({
 int id, String routeLabel, String originCity, String destinationCity, DateTime departureTime, DateTime? arrivalTime, String price, int? availableSeats, List<String> availableSeatNumbers, String? vehicleRegistration, String statusDisplay
});




}
/// @nodoc
class _$TripBookingDetailCopyWithImpl<$Res>
    implements $TripBookingDetailCopyWith<$Res> {
  _$TripBookingDetailCopyWithImpl(this._self, this._then);

  final TripBookingDetail _self;
  final $Res Function(TripBookingDetail) _then;

/// Create a copy of TripBookingDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? routeLabel = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = null,Object? availableSeats = freezed,Object? availableSeatNumbers = null,Object? vehicleRegistration = freezed,Object? statusDisplay = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,availableSeatNumbers: null == availableSeatNumbers ? _self.availableSeatNumbers : availableSeatNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TripBookingDetail].
extension TripBookingDetailPatterns on TripBookingDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripBookingDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripBookingDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripBookingDetail value)  $default,){
final _that = this;
switch (_that) {
case _TripBookingDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripBookingDetail value)?  $default,){
final _that = this;
switch (_that) {
case _TripBookingDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String routeLabel,  String originCity,  String destinationCity,  DateTime departureTime,  DateTime? arrivalTime,  String price,  int? availableSeats,  List<String> availableSeatNumbers,  String? vehicleRegistration,  String statusDisplay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripBookingDetail() when $default != null:
return $default(_that.id,_that.routeLabel,_that.originCity,_that.destinationCity,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.availableSeatNumbers,_that.vehicleRegistration,_that.statusDisplay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String routeLabel,  String originCity,  String destinationCity,  DateTime departureTime,  DateTime? arrivalTime,  String price,  int? availableSeats,  List<String> availableSeatNumbers,  String? vehicleRegistration,  String statusDisplay)  $default,) {final _that = this;
switch (_that) {
case _TripBookingDetail():
return $default(_that.id,_that.routeLabel,_that.originCity,_that.destinationCity,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.availableSeatNumbers,_that.vehicleRegistration,_that.statusDisplay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String routeLabel,  String originCity,  String destinationCity,  DateTime departureTime,  DateTime? arrivalTime,  String price,  int? availableSeats,  List<String> availableSeatNumbers,  String? vehicleRegistration,  String statusDisplay)?  $default,) {final _that = this;
switch (_that) {
case _TripBookingDetail() when $default != null:
return $default(_that.id,_that.routeLabel,_that.originCity,_that.destinationCity,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.availableSeatNumbers,_that.vehicleRegistration,_that.statusDisplay);case _:
  return null;

}
}

}

/// @nodoc


class _TripBookingDetail extends TripBookingDetail {
  const _TripBookingDetail({required this.id, required this.routeLabel, required this.originCity, required this.destinationCity, required this.departureTime, this.arrivalTime, required this.price, this.availableSeats, required final  List<String> availableSeatNumbers, this.vehicleRegistration, required this.statusDisplay}): _availableSeatNumbers = availableSeatNumbers,super._();
  

@override final  int id;
@override final  String routeLabel;
@override final  String originCity;
@override final  String destinationCity;
@override final  DateTime departureTime;
@override final  DateTime? arrivalTime;
/// Prix par place en FCFA (chaîne décimale, lecture seule).
@override final  String price;
@override final  int? availableSeats;
 final  List<String> _availableSeatNumbers;
@override List<String> get availableSeatNumbers {
  if (_availableSeatNumbers is EqualUnmodifiableListView) return _availableSeatNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableSeatNumbers);
}

@override final  String? vehicleRegistration;
@override final  String statusDisplay;

/// Create a copy of TripBookingDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripBookingDetailCopyWith<_TripBookingDetail> get copyWith => __$TripBookingDetailCopyWithImpl<_TripBookingDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripBookingDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&const DeepCollectionEquality().equals(other._availableSeatNumbers, _availableSeatNumbers)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay));
}


@override
int get hashCode => Object.hash(runtimeType,id,routeLabel,originCity,destinationCity,departureTime,arrivalTime,price,availableSeats,const DeepCollectionEquality().hash(_availableSeatNumbers),vehicleRegistration,statusDisplay);

@override
String toString() {
  return 'TripBookingDetail(id: $id, routeLabel: $routeLabel, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, availableSeats: $availableSeats, availableSeatNumbers: $availableSeatNumbers, vehicleRegistration: $vehicleRegistration, statusDisplay: $statusDisplay)';
}


}

/// @nodoc
abstract mixin class _$TripBookingDetailCopyWith<$Res> implements $TripBookingDetailCopyWith<$Res> {
  factory _$TripBookingDetailCopyWith(_TripBookingDetail value, $Res Function(_TripBookingDetail) _then) = __$TripBookingDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String routeLabel, String originCity, String destinationCity, DateTime departureTime, DateTime? arrivalTime, String price, int? availableSeats, List<String> availableSeatNumbers, String? vehicleRegistration, String statusDisplay
});




}
/// @nodoc
class __$TripBookingDetailCopyWithImpl<$Res>
    implements _$TripBookingDetailCopyWith<$Res> {
  __$TripBookingDetailCopyWithImpl(this._self, this._then);

  final _TripBookingDetail _self;
  final $Res Function(_TripBookingDetail) _then;

/// Create a copy of TripBookingDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? routeLabel = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = null,Object? availableSeats = freezed,Object? availableSeatNumbers = null,Object? vehicleRegistration = freezed,Object? statusDisplay = null,}) {
  return _then(_TripBookingDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,availableSeatNumbers: null == availableSeatNumbers ? _self._availableSeatNumbers : availableSeatNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
