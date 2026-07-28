// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripWrite {

 int get id; int get route; int get vehicle;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'arrival_time') DateTime? get arrivalTime; String? get price; StatusF60Enum? get status;@JsonKey(name: 'cancellation_reason') String get cancellationReason;
/// Create a copy of TripWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripWriteCopyWith<TripWrite> get copyWith => _$TripWriteCopyWithImpl<TripWrite>(this as TripWrite, _$identity);

  /// Serializes this TripWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripWrite&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,route,vehicle,departureTime,arrivalTime,price,status,cancellationReason);

@override
String toString() {
  return 'TripWrite(id: $id, route: $route, vehicle: $vehicle, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, status: $status, cancellationReason: $cancellationReason)';
}


}

/// @nodoc
abstract mixin class $TripWriteCopyWith<$Res>  {
  factory $TripWriteCopyWith(TripWrite value, $Res Function(TripWrite) _then) = _$TripWriteCopyWithImpl;
@useResult
$Res call({
 int id, int route, int vehicle,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, String? price, StatusF60Enum? status,@JsonKey(name: 'cancellation_reason') String cancellationReason
});




}
/// @nodoc
class _$TripWriteCopyWithImpl<$Res>
    implements $TripWriteCopyWith<$Res> {
  _$TripWriteCopyWithImpl(this._self, this._then);

  final TripWrite _self;
  final $Res Function(TripWrite) _then;

/// Create a copy of TripWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? route = null,Object? vehicle = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = freezed,Object? status = freezed,Object? cancellationReason = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as int,vehicle: null == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as int,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,cancellationReason: null == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TripWrite].
extension TripWritePatterns on TripWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripWrite value)  $default,){
final _that = this;
switch (_that) {
case _TripWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripWrite value)?  $default,){
final _that = this;
switch (_that) {
case _TripWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int route,  int vehicle, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String? price,  StatusF60Enum? status, @JsonKey(name: 'cancellation_reason')  String cancellationReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripWrite() when $default != null:
return $default(_that.id,_that.route,_that.vehicle,_that.departureTime,_that.arrivalTime,_that.price,_that.status,_that.cancellationReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int route,  int vehicle, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String? price,  StatusF60Enum? status, @JsonKey(name: 'cancellation_reason')  String cancellationReason)  $default,) {final _that = this;
switch (_that) {
case _TripWrite():
return $default(_that.id,_that.route,_that.vehicle,_that.departureTime,_that.arrivalTime,_that.price,_that.status,_that.cancellationReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int route,  int vehicle, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String? price,  StatusF60Enum? status, @JsonKey(name: 'cancellation_reason')  String cancellationReason)?  $default,) {final _that = this;
switch (_that) {
case _TripWrite() when $default != null:
return $default(_that.id,_that.route,_that.vehicle,_that.departureTime,_that.arrivalTime,_that.price,_that.status,_that.cancellationReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripWrite implements TripWrite {
  const _TripWrite({required this.id, required this.route, required this.vehicle, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'arrival_time') this.arrivalTime, this.price, this.status, @JsonKey(name: 'cancellation_reason') required this.cancellationReason});
  factory _TripWrite.fromJson(Map<String, dynamic> json) => _$TripWriteFromJson(json);

@override final  int id;
@override final  int route;
@override final  int vehicle;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'arrival_time') final  DateTime? arrivalTime;
@override final  String? price;
@override final  StatusF60Enum? status;
@override@JsonKey(name: 'cancellation_reason') final  String cancellationReason;

/// Create a copy of TripWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripWriteCopyWith<_TripWrite> get copyWith => __$TripWriteCopyWithImpl<_TripWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripWrite&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,route,vehicle,departureTime,arrivalTime,price,status,cancellationReason);

@override
String toString() {
  return 'TripWrite(id: $id, route: $route, vehicle: $vehicle, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, status: $status, cancellationReason: $cancellationReason)';
}


}

/// @nodoc
abstract mixin class _$TripWriteCopyWith<$Res> implements $TripWriteCopyWith<$Res> {
  factory _$TripWriteCopyWith(_TripWrite value, $Res Function(_TripWrite) _then) = __$TripWriteCopyWithImpl;
@override @useResult
$Res call({
 int id, int route, int vehicle,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, String? price, StatusF60Enum? status,@JsonKey(name: 'cancellation_reason') String cancellationReason
});




}
/// @nodoc
class __$TripWriteCopyWithImpl<$Res>
    implements _$TripWriteCopyWith<$Res> {
  __$TripWriteCopyWithImpl(this._self, this._then);

  final _TripWrite _self;
  final $Res Function(_TripWrite) _then;

/// Create a copy of TripWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? route = null,Object? vehicle = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = freezed,Object? status = freezed,Object? cancellationReason = null,}) {
  return _then(_TripWrite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as int,vehicle: null == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as int,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,cancellationReason: null == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
