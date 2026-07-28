// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteStop {

 int get id; int get city;@JsonKey(name: 'city_name') String get cityName;@JsonKey(name: 'stop_order') int get stopOrder;@JsonKey(name: 'stop_price') String get stopPrice;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteStopCopyWith<RouteStop> get copyWith => _$RouteStopCopyWithImpl<RouteStop>(this as RouteStop, _$identity);

  /// Serializes this RouteStop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteStop&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.stopOrder, stopOrder) || other.stopOrder == stopOrder)&&(identical(other.stopPrice, stopPrice) || other.stopPrice == stopPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,cityName,stopOrder,stopPrice,createdAt,updatedAt);

@override
String toString() {
  return 'RouteStop(id: $id, city: $city, cityName: $cityName, stopOrder: $stopOrder, stopPrice: $stopPrice, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RouteStopCopyWith<$Res>  {
  factory $RouteStopCopyWith(RouteStop value, $Res Function(RouteStop) _then) = _$RouteStopCopyWithImpl;
@useResult
$Res call({
 int id, int city,@JsonKey(name: 'city_name') String cityName,@JsonKey(name: 'stop_order') int stopOrder,@JsonKey(name: 'stop_price') String stopPrice,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$RouteStopCopyWithImpl<$Res>
    implements $RouteStopCopyWith<$Res> {
  _$RouteStopCopyWithImpl(this._self, this._then);

  final RouteStop _self;
  final $Res Function(RouteStop) _then;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? city = null,Object? cityName = null,Object? stopOrder = null,Object? stopPrice = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,stopOrder: null == stopOrder ? _self.stopOrder : stopOrder // ignore: cast_nullable_to_non_nullable
as int,stopPrice: null == stopPrice ? _self.stopPrice : stopPrice // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [RouteStop].
extension RouteStopPatterns on RouteStop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteStop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteStop value)  $default,){
final _that = this;
switch (_that) {
case _RouteStop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteStop value)?  $default,){
final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int city, @JsonKey(name: 'city_name')  String cityName, @JsonKey(name: 'stop_order')  int stopOrder, @JsonKey(name: 'stop_price')  String stopPrice, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that.id,_that.city,_that.cityName,_that.stopOrder,_that.stopPrice,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int city, @JsonKey(name: 'city_name')  String cityName, @JsonKey(name: 'stop_order')  int stopOrder, @JsonKey(name: 'stop_price')  String stopPrice, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RouteStop():
return $default(_that.id,_that.city,_that.cityName,_that.stopOrder,_that.stopPrice,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int city, @JsonKey(name: 'city_name')  String cityName, @JsonKey(name: 'stop_order')  int stopOrder, @JsonKey(name: 'stop_price')  String stopPrice, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that.id,_that.city,_that.cityName,_that.stopOrder,_that.stopPrice,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RouteStop implements RouteStop {
  const _RouteStop({required this.id, required this.city, @JsonKey(name: 'city_name') required this.cityName, @JsonKey(name: 'stop_order') required this.stopOrder, @JsonKey(name: 'stop_price') required this.stopPrice, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _RouteStop.fromJson(Map<String, dynamic> json) => _$RouteStopFromJson(json);

@override final  int id;
@override final  int city;
@override@JsonKey(name: 'city_name') final  String cityName;
@override@JsonKey(name: 'stop_order') final  int stopOrder;
@override@JsonKey(name: 'stop_price') final  String stopPrice;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteStopCopyWith<_RouteStop> get copyWith => __$RouteStopCopyWithImpl<_RouteStop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteStopToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteStop&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.stopOrder, stopOrder) || other.stopOrder == stopOrder)&&(identical(other.stopPrice, stopPrice) || other.stopPrice == stopPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,cityName,stopOrder,stopPrice,createdAt,updatedAt);

@override
String toString() {
  return 'RouteStop(id: $id, city: $city, cityName: $cityName, stopOrder: $stopOrder, stopPrice: $stopPrice, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RouteStopCopyWith<$Res> implements $RouteStopCopyWith<$Res> {
  factory _$RouteStopCopyWith(_RouteStop value, $Res Function(_RouteStop) _then) = __$RouteStopCopyWithImpl;
@override @useResult
$Res call({
 int id, int city,@JsonKey(name: 'city_name') String cityName,@JsonKey(name: 'stop_order') int stopOrder,@JsonKey(name: 'stop_price') String stopPrice,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$RouteStopCopyWithImpl<$Res>
    implements _$RouteStopCopyWith<$Res> {
  __$RouteStopCopyWithImpl(this._self, this._then);

  final _RouteStop _self;
  final $Res Function(_RouteStop) _then;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? city = null,Object? cityName = null,Object? stopOrder = null,Object? stopPrice = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_RouteStop(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,stopOrder: null == stopOrder ? _self.stopOrder : stopOrder // ignore: cast_nullable_to_non_nullable
as int,stopPrice: null == stopPrice ? _self.stopPrice : stopPrice // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
