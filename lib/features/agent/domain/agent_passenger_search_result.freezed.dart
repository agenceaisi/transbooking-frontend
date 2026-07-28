// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_passenger_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AgentPassengerSearchResult {

 String get ticketNumber; String get passengerName; String? get phone; String? get seatNumber; int get tripId; String get destinationCity; DateTime get departureTime; String? get vehicleRegistration;
/// Create a copy of AgentPassengerSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentPassengerSearchResultCopyWith<AgentPassengerSearchResult> get copyWith => _$AgentPassengerSearchResultCopyWithImpl<AgentPassengerSearchResult>(this as AgentPassengerSearchResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentPassengerSearchResult&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,passengerName,phone,seatNumber,tripId,destinationCity,departureTime,vehicleRegistration);

@override
String toString() {
  return 'AgentPassengerSearchResult(ticketNumber: $ticketNumber, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, tripId: $tripId, destinationCity: $destinationCity, departureTime: $departureTime, vehicleRegistration: $vehicleRegistration)';
}


}

/// @nodoc
abstract mixin class $AgentPassengerSearchResultCopyWith<$Res>  {
  factory $AgentPassengerSearchResultCopyWith(AgentPassengerSearchResult value, $Res Function(AgentPassengerSearchResult) _then) = _$AgentPassengerSearchResultCopyWithImpl;
@useResult
$Res call({
 String ticketNumber, String passengerName, String? phone, String? seatNumber, int tripId, String destinationCity, DateTime departureTime, String? vehicleRegistration
});




}
/// @nodoc
class _$AgentPassengerSearchResultCopyWithImpl<$Res>
    implements $AgentPassengerSearchResultCopyWith<$Res> {
  _$AgentPassengerSearchResultCopyWithImpl(this._self, this._then);

  final AgentPassengerSearchResult _self;
  final $Res Function(AgentPassengerSearchResult) _then;

/// Create a copy of AgentPassengerSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? passengerName = null,Object? phone = freezed,Object? seatNumber = freezed,Object? tripId = null,Object? destinationCity = null,Object? departureTime = null,Object? vehicleRegistration = freezed,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentPassengerSearchResult].
extension AgentPassengerSearchResultPatterns on AgentPassengerSearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentPassengerSearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentPassengerSearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentPassengerSearchResult value)  $default,){
final _that = this;
switch (_that) {
case _AgentPassengerSearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentPassengerSearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _AgentPassengerSearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticketNumber,  String passengerName,  String? phone,  String? seatNumber,  int tripId,  String destinationCity,  DateTime departureTime,  String? vehicleRegistration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentPassengerSearchResult() when $default != null:
return $default(_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.tripId,_that.destinationCity,_that.departureTime,_that.vehicleRegistration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticketNumber,  String passengerName,  String? phone,  String? seatNumber,  int tripId,  String destinationCity,  DateTime departureTime,  String? vehicleRegistration)  $default,) {final _that = this;
switch (_that) {
case _AgentPassengerSearchResult():
return $default(_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.tripId,_that.destinationCity,_that.departureTime,_that.vehicleRegistration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticketNumber,  String passengerName,  String? phone,  String? seatNumber,  int tripId,  String destinationCity,  DateTime departureTime,  String? vehicleRegistration)?  $default,) {final _that = this;
switch (_that) {
case _AgentPassengerSearchResult() when $default != null:
return $default(_that.ticketNumber,_that.passengerName,_that.phone,_that.seatNumber,_that.tripId,_that.destinationCity,_that.departureTime,_that.vehicleRegistration);case _:
  return null;

}
}

}

/// @nodoc


class _AgentPassengerSearchResult implements AgentPassengerSearchResult {
  const _AgentPassengerSearchResult({required this.ticketNumber, required this.passengerName, this.phone, this.seatNumber, required this.tripId, required this.destinationCity, required this.departureTime, this.vehicleRegistration});
  

@override final  String ticketNumber;
@override final  String passengerName;
@override final  String? phone;
@override final  String? seatNumber;
@override final  int tripId;
@override final  String destinationCity;
@override final  DateTime departureTime;
@override final  String? vehicleRegistration;

/// Create a copy of AgentPassengerSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentPassengerSearchResultCopyWith<_AgentPassengerSearchResult> get copyWith => __$AgentPassengerSearchResultCopyWithImpl<_AgentPassengerSearchResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentPassengerSearchResult&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,passengerName,phone,seatNumber,tripId,destinationCity,departureTime,vehicleRegistration);

@override
String toString() {
  return 'AgentPassengerSearchResult(ticketNumber: $ticketNumber, passengerName: $passengerName, phone: $phone, seatNumber: $seatNumber, tripId: $tripId, destinationCity: $destinationCity, departureTime: $departureTime, vehicleRegistration: $vehicleRegistration)';
}


}

/// @nodoc
abstract mixin class _$AgentPassengerSearchResultCopyWith<$Res> implements $AgentPassengerSearchResultCopyWith<$Res> {
  factory _$AgentPassengerSearchResultCopyWith(_AgentPassengerSearchResult value, $Res Function(_AgentPassengerSearchResult) _then) = __$AgentPassengerSearchResultCopyWithImpl;
@override @useResult
$Res call({
 String ticketNumber, String passengerName, String? phone, String? seatNumber, int tripId, String destinationCity, DateTime departureTime, String? vehicleRegistration
});




}
/// @nodoc
class __$AgentPassengerSearchResultCopyWithImpl<$Res>
    implements _$AgentPassengerSearchResultCopyWith<$Res> {
  __$AgentPassengerSearchResultCopyWithImpl(this._self, this._then);

  final _AgentPassengerSearchResult _self;
  final $Res Function(_AgentPassengerSearchResult) _then;

/// Create a copy of AgentPassengerSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? passengerName = null,Object? phone = freezed,Object? seatNumber = freezed,Object? tripId = null,Object? destinationCity = null,Object? departureTime = null,Object? vehicleRegistration = freezed,}) {
  return _then(_AgentPassengerSearchResult(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
