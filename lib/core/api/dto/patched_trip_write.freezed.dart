// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_trip_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedTripWrite {

 int? get id; int? get route; int? get vehicle;@JsonKey(name: 'departure_time') DateTime? get departureTime;@JsonKey(name: 'arrival_time') DateTime? get arrivalTime; String? get price; StatusF60Enum? get status;@JsonKey(name: 'cancellation_reason') String? get cancellationReason;
/// Create a copy of PatchedTripWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedTripWriteCopyWith<PatchedTripWrite> get copyWith => _$PatchedTripWriteCopyWithImpl<PatchedTripWrite>(this as PatchedTripWrite, _$identity);

  /// Serializes this PatchedTripWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedTripWrite&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,route,vehicle,departureTime,arrivalTime,price,status,cancellationReason);

@override
String toString() {
  return 'PatchedTripWrite(id: $id, route: $route, vehicle: $vehicle, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, status: $status, cancellationReason: $cancellationReason)';
}


}

/// @nodoc
abstract mixin class $PatchedTripWriteCopyWith<$Res>  {
  factory $PatchedTripWriteCopyWith(PatchedTripWrite value, $Res Function(PatchedTripWrite) _then) = _$PatchedTripWriteCopyWithImpl;
@useResult
$Res call({
 int? id, int? route, int? vehicle,@JsonKey(name: 'departure_time') DateTime? departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, String? price, StatusF60Enum? status,@JsonKey(name: 'cancellation_reason') String? cancellationReason
});




}
/// @nodoc
class _$PatchedTripWriteCopyWithImpl<$Res>
    implements $PatchedTripWriteCopyWith<$Res> {
  _$PatchedTripWriteCopyWithImpl(this._self, this._then);

  final PatchedTripWrite _self;
  final $Res Function(PatchedTripWrite) _then;

/// Create a copy of PatchedTripWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? route = freezed,Object? vehicle = freezed,Object? departureTime = freezed,Object? arrivalTime = freezed,Object? price = freezed,Object? status = freezed,Object? cancellationReason = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as int?,vehicle: freezed == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as int?,departureTime: freezed == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime?,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedTripWrite].
extension PatchedTripWritePatterns on PatchedTripWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedTripWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedTripWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedTripWrite value)  $default,){
final _that = this;
switch (_that) {
case _PatchedTripWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedTripWrite value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedTripWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? route,  int? vehicle, @JsonKey(name: 'departure_time')  DateTime? departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String? price,  StatusF60Enum? status, @JsonKey(name: 'cancellation_reason')  String? cancellationReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedTripWrite() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? route,  int? vehicle, @JsonKey(name: 'departure_time')  DateTime? departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String? price,  StatusF60Enum? status, @JsonKey(name: 'cancellation_reason')  String? cancellationReason)  $default,) {final _that = this;
switch (_that) {
case _PatchedTripWrite():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? route,  int? vehicle, @JsonKey(name: 'departure_time')  DateTime? departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String? price,  StatusF60Enum? status, @JsonKey(name: 'cancellation_reason')  String? cancellationReason)?  $default,) {final _that = this;
switch (_that) {
case _PatchedTripWrite() when $default != null:
return $default(_that.id,_that.route,_that.vehicle,_that.departureTime,_that.arrivalTime,_that.price,_that.status,_that.cancellationReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedTripWrite implements PatchedTripWrite {
  const _PatchedTripWrite({this.id, this.route, this.vehicle, @JsonKey(name: 'departure_time') this.departureTime, @JsonKey(name: 'arrival_time') this.arrivalTime, this.price, this.status, @JsonKey(name: 'cancellation_reason') this.cancellationReason});
  factory _PatchedTripWrite.fromJson(Map<String, dynamic> json) => _$PatchedTripWriteFromJson(json);

@override final  int? id;
@override final  int? route;
@override final  int? vehicle;
@override@JsonKey(name: 'departure_time') final  DateTime? departureTime;
@override@JsonKey(name: 'arrival_time') final  DateTime? arrivalTime;
@override final  String? price;
@override final  StatusF60Enum? status;
@override@JsonKey(name: 'cancellation_reason') final  String? cancellationReason;

/// Create a copy of PatchedTripWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedTripWriteCopyWith<_PatchedTripWrite> get copyWith => __$PatchedTripWriteCopyWithImpl<_PatchedTripWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedTripWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedTripWrite&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,route,vehicle,departureTime,arrivalTime,price,status,cancellationReason);

@override
String toString() {
  return 'PatchedTripWrite(id: $id, route: $route, vehicle: $vehicle, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, status: $status, cancellationReason: $cancellationReason)';
}


}

/// @nodoc
abstract mixin class _$PatchedTripWriteCopyWith<$Res> implements $PatchedTripWriteCopyWith<$Res> {
  factory _$PatchedTripWriteCopyWith(_PatchedTripWrite value, $Res Function(_PatchedTripWrite) _then) = __$PatchedTripWriteCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? route, int? vehicle,@JsonKey(name: 'departure_time') DateTime? departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, String? price, StatusF60Enum? status,@JsonKey(name: 'cancellation_reason') String? cancellationReason
});




}
/// @nodoc
class __$PatchedTripWriteCopyWithImpl<$Res>
    implements _$PatchedTripWriteCopyWith<$Res> {
  __$PatchedTripWriteCopyWithImpl(this._self, this._then);

  final _PatchedTripWrite _self;
  final $Res Function(_PatchedTripWrite) _then;

/// Create a copy of PatchedTripWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? route = freezed,Object? vehicle = freezed,Object? departureTime = freezed,Object? arrivalTime = freezed,Object? price = freezed,Object? status = freezed,Object? cancellationReason = freezed,}) {
  return _then(_PatchedTripWrite(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as int?,vehicle: freezed == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as int?,departureTime: freezed == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime?,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
