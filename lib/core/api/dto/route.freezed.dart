// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Route {

 int get id;@JsonKey(name: 'origin_city') int get originCity;@JsonKey(name: 'origin_city_name') String get originCityName;@JsonKey(name: 'destination_city') int get destinationCity;@JsonKey(name: 'destination_city_name') String get destinationCityName;@JsonKey(name: 'origin_station') int? get originStation;@JsonKey(name: 'destination_station') int? get destinationStation;@JsonKey(name: 'distance_km') String? get distanceKm;@JsonKey(name: 'base_price') String get basePrice;@JsonKey(name: 'duration_minutes') int? get durationMinutes;@JsonKey(name: 'is_active') bool? get isActive; List<RouteStop> get stops;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteCopyWith<Route> get copyWith => _$RouteCopyWithImpl<Route>(this as Route, _$identity);

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Route&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.destinationCityName, destinationCityName) || other.destinationCityName == destinationCityName)&&(identical(other.originStation, originStation) || other.originStation == originStation)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.stops, stops)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,originCityName,destinationCity,destinationCityName,originStation,destinationStation,distanceKm,basePrice,durationMinutes,isActive,const DeepCollectionEquality().hash(stops),createdAt,updatedAt);

@override
String toString() {
  return 'Route(id: $id, originCity: $originCity, originCityName: $originCityName, destinationCity: $destinationCity, destinationCityName: $destinationCityName, originStation: $originStation, destinationStation: $destinationStation, distanceKm: $distanceKm, basePrice: $basePrice, durationMinutes: $durationMinutes, isActive: $isActive, stops: $stops, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res>  {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) = _$RouteCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'origin_city') int originCity,@JsonKey(name: 'origin_city_name') String originCityName,@JsonKey(name: 'destination_city') int destinationCity,@JsonKey(name: 'destination_city_name') String destinationCityName,@JsonKey(name: 'origin_station') int? originStation,@JsonKey(name: 'destination_station') int? destinationStation,@JsonKey(name: 'distance_km') String? distanceKm,@JsonKey(name: 'base_price') String basePrice,@JsonKey(name: 'duration_minutes') int? durationMinutes,@JsonKey(name: 'is_active') bool? isActive, List<RouteStop> stops,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$RouteCopyWithImpl<$Res>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originCity = null,Object? originCityName = null,Object? destinationCity = null,Object? destinationCityName = null,Object? originStation = freezed,Object? destinationStation = freezed,Object? distanceKm = freezed,Object? basePrice = null,Object? durationMinutes = freezed,Object? isActive = freezed,Object? stops = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as int,originCityName: null == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as int,destinationCityName: null == destinationCityName ? _self.destinationCityName : destinationCityName // ignore: cast_nullable_to_non_nullable
as String,originStation: freezed == originStation ? _self.originStation : originStation // ignore: cast_nullable_to_non_nullable
as int?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as String?,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,stops: null == stops ? _self.stops : stops // ignore: cast_nullable_to_non_nullable
as List<RouteStop>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Route].
extension RoutePatterns on Route {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Route value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Route() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Route value)  $default,){
final _that = this;
switch (_that) {
case _Route():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Route value)?  $default,){
final _that = this;
switch (_that) {
case _Route() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city')  int originCity, @JsonKey(name: 'origin_city_name')  String originCityName, @JsonKey(name: 'destination_city')  int destinationCity, @JsonKey(name: 'destination_city_name')  String destinationCityName, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'distance_km')  String? distanceKm, @JsonKey(name: 'base_price')  String basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'is_active')  bool? isActive,  List<RouteStop> stops, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Route() when $default != null:
return $default(_that.id,_that.originCity,_that.originCityName,_that.destinationCity,_that.destinationCityName,_that.originStation,_that.destinationStation,_that.distanceKm,_that.basePrice,_that.durationMinutes,_that.isActive,_that.stops,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city')  int originCity, @JsonKey(name: 'origin_city_name')  String originCityName, @JsonKey(name: 'destination_city')  int destinationCity, @JsonKey(name: 'destination_city_name')  String destinationCityName, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'distance_km')  String? distanceKm, @JsonKey(name: 'base_price')  String basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'is_active')  bool? isActive,  List<RouteStop> stops, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Route():
return $default(_that.id,_that.originCity,_that.originCityName,_that.destinationCity,_that.destinationCityName,_that.originStation,_that.destinationStation,_that.distanceKm,_that.basePrice,_that.durationMinutes,_that.isActive,_that.stops,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'origin_city')  int originCity, @JsonKey(name: 'origin_city_name')  String originCityName, @JsonKey(name: 'destination_city')  int destinationCity, @JsonKey(name: 'destination_city_name')  String destinationCityName, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'distance_km')  String? distanceKm, @JsonKey(name: 'base_price')  String basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'is_active')  bool? isActive,  List<RouteStop> stops, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Route() when $default != null:
return $default(_that.id,_that.originCity,_that.originCityName,_that.destinationCity,_that.destinationCityName,_that.originStation,_that.destinationStation,_that.distanceKm,_that.basePrice,_that.durationMinutes,_that.isActive,_that.stops,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Route implements Route {
  const _Route({required this.id, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'origin_city_name') required this.originCityName, @JsonKey(name: 'destination_city') required this.destinationCity, @JsonKey(name: 'destination_city_name') required this.destinationCityName, @JsonKey(name: 'origin_station') this.originStation, @JsonKey(name: 'destination_station') this.destinationStation, @JsonKey(name: 'distance_km') this.distanceKm, @JsonKey(name: 'base_price') required this.basePrice, @JsonKey(name: 'duration_minutes') this.durationMinutes, @JsonKey(name: 'is_active') this.isActive, required final  List<RouteStop> stops, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _stops = stops;
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

@override final  int id;
@override@JsonKey(name: 'origin_city') final  int originCity;
@override@JsonKey(name: 'origin_city_name') final  String originCityName;
@override@JsonKey(name: 'destination_city') final  int destinationCity;
@override@JsonKey(name: 'destination_city_name') final  String destinationCityName;
@override@JsonKey(name: 'origin_station') final  int? originStation;
@override@JsonKey(name: 'destination_station') final  int? destinationStation;
@override@JsonKey(name: 'distance_km') final  String? distanceKm;
@override@JsonKey(name: 'base_price') final  String basePrice;
@override@JsonKey(name: 'duration_minutes') final  int? durationMinutes;
@override@JsonKey(name: 'is_active') final  bool? isActive;
 final  List<RouteStop> _stops;
@override List<RouteStop> get stops {
  if (_stops is EqualUnmodifiableListView) return _stops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stops);
}

@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteCopyWith<_Route> get copyWith => __$RouteCopyWithImpl<_Route>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Route&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.destinationCityName, destinationCityName) || other.destinationCityName == destinationCityName)&&(identical(other.originStation, originStation) || other.originStation == originStation)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._stops, _stops)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,originCityName,destinationCity,destinationCityName,originStation,destinationStation,distanceKm,basePrice,durationMinutes,isActive,const DeepCollectionEquality().hash(_stops),createdAt,updatedAt);

@override
String toString() {
  return 'Route(id: $id, originCity: $originCity, originCityName: $originCityName, destinationCity: $destinationCity, destinationCityName: $destinationCityName, originStation: $originStation, destinationStation: $destinationStation, distanceKm: $distanceKm, basePrice: $basePrice, durationMinutes: $durationMinutes, isActive: $isActive, stops: $stops, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) = __$RouteCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'origin_city') int originCity,@JsonKey(name: 'origin_city_name') String originCityName,@JsonKey(name: 'destination_city') int destinationCity,@JsonKey(name: 'destination_city_name') String destinationCityName,@JsonKey(name: 'origin_station') int? originStation,@JsonKey(name: 'destination_station') int? destinationStation,@JsonKey(name: 'distance_km') String? distanceKm,@JsonKey(name: 'base_price') String basePrice,@JsonKey(name: 'duration_minutes') int? durationMinutes,@JsonKey(name: 'is_active') bool? isActive, List<RouteStop> stops,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originCity = null,Object? originCityName = null,Object? destinationCity = null,Object? destinationCityName = null,Object? originStation = freezed,Object? destinationStation = freezed,Object? distanceKm = freezed,Object? basePrice = null,Object? durationMinutes = freezed,Object? isActive = freezed,Object? stops = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Route(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as int,originCityName: null == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as int,destinationCityName: null == destinationCityName ? _self.destinationCityName : destinationCityName // ignore: cast_nullable_to_non_nullable
as String,originStation: freezed == originStation ? _self.originStation : originStation // ignore: cast_nullable_to_non_nullable
as int?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as String?,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,stops: null == stops ? _self._stops : stops // ignore: cast_nullable_to_non_nullable
as List<RouteStop>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
