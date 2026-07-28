// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedRoute {

 int? get id;@JsonKey(name: 'origin_city') int? get originCity;@JsonKey(name: 'origin_city_name') String? get originCityName;@JsonKey(name: 'destination_city') int? get destinationCity;@JsonKey(name: 'destination_city_name') String? get destinationCityName;@JsonKey(name: 'origin_station') int? get originStation;@JsonKey(name: 'destination_station') int? get destinationStation;@JsonKey(name: 'distance_km') String? get distanceKm;@JsonKey(name: 'base_price') String? get basePrice;@JsonKey(name: 'duration_minutes') int? get durationMinutes;@JsonKey(name: 'is_active') bool? get isActive; List<RouteStop>? get stops;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of PatchedRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedRouteCopyWith<PatchedRoute> get copyWith => _$PatchedRouteCopyWithImpl<PatchedRoute>(this as PatchedRoute, _$identity);

  /// Serializes this PatchedRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedRoute&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.destinationCityName, destinationCityName) || other.destinationCityName == destinationCityName)&&(identical(other.originStation, originStation) || other.originStation == originStation)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.stops, stops)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,originCityName,destinationCity,destinationCityName,originStation,destinationStation,distanceKm,basePrice,durationMinutes,isActive,const DeepCollectionEquality().hash(stops),createdAt,updatedAt);

@override
String toString() {
  return 'PatchedRoute(id: $id, originCity: $originCity, originCityName: $originCityName, destinationCity: $destinationCity, destinationCityName: $destinationCityName, originStation: $originStation, destinationStation: $destinationStation, distanceKm: $distanceKm, basePrice: $basePrice, durationMinutes: $durationMinutes, isActive: $isActive, stops: $stops, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PatchedRouteCopyWith<$Res>  {
  factory $PatchedRouteCopyWith(PatchedRoute value, $Res Function(PatchedRoute) _then) = _$PatchedRouteCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'origin_city') int? originCity,@JsonKey(name: 'origin_city_name') String? originCityName,@JsonKey(name: 'destination_city') int? destinationCity,@JsonKey(name: 'destination_city_name') String? destinationCityName,@JsonKey(name: 'origin_station') int? originStation,@JsonKey(name: 'destination_station') int? destinationStation,@JsonKey(name: 'distance_km') String? distanceKm,@JsonKey(name: 'base_price') String? basePrice,@JsonKey(name: 'duration_minutes') int? durationMinutes,@JsonKey(name: 'is_active') bool? isActive, List<RouteStop>? stops,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$PatchedRouteCopyWithImpl<$Res>
    implements $PatchedRouteCopyWith<$Res> {
  _$PatchedRouteCopyWithImpl(this._self, this._then);

  final PatchedRoute _self;
  final $Res Function(PatchedRoute) _then;

/// Create a copy of PatchedRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? originCity = freezed,Object? originCityName = freezed,Object? destinationCity = freezed,Object? destinationCityName = freezed,Object? originStation = freezed,Object? destinationStation = freezed,Object? distanceKm = freezed,Object? basePrice = freezed,Object? durationMinutes = freezed,Object? isActive = freezed,Object? stops = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originCity: freezed == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as int?,originCityName: freezed == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String?,destinationCity: freezed == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as int?,destinationCityName: freezed == destinationCityName ? _self.destinationCityName : destinationCityName // ignore: cast_nullable_to_non_nullable
as String?,originStation: freezed == originStation ? _self.originStation : originStation // ignore: cast_nullable_to_non_nullable
as int?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as String?,basePrice: freezed == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as String?,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,stops: freezed == stops ? _self.stops : stops // ignore: cast_nullable_to_non_nullable
as List<RouteStop>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedRoute].
extension PatchedRoutePatterns on PatchedRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedRoute value)  $default,){
final _that = this;
switch (_that) {
case _PatchedRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedRoute value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'origin_city')  int? originCity, @JsonKey(name: 'origin_city_name')  String? originCityName, @JsonKey(name: 'destination_city')  int? destinationCity, @JsonKey(name: 'destination_city_name')  String? destinationCityName, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'distance_km')  String? distanceKm, @JsonKey(name: 'base_price')  String? basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'is_active')  bool? isActive,  List<RouteStop>? stops, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedRoute() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'origin_city')  int? originCity, @JsonKey(name: 'origin_city_name')  String? originCityName, @JsonKey(name: 'destination_city')  int? destinationCity, @JsonKey(name: 'destination_city_name')  String? destinationCityName, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'distance_km')  String? distanceKm, @JsonKey(name: 'base_price')  String? basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'is_active')  bool? isActive,  List<RouteStop>? stops, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PatchedRoute():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'origin_city')  int? originCity, @JsonKey(name: 'origin_city_name')  String? originCityName, @JsonKey(name: 'destination_city')  int? destinationCity, @JsonKey(name: 'destination_city_name')  String? destinationCityName, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'distance_km')  String? distanceKm, @JsonKey(name: 'base_price')  String? basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes, @JsonKey(name: 'is_active')  bool? isActive,  List<RouteStop>? stops, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatchedRoute() when $default != null:
return $default(_that.id,_that.originCity,_that.originCityName,_that.destinationCity,_that.destinationCityName,_that.originStation,_that.destinationStation,_that.distanceKm,_that.basePrice,_that.durationMinutes,_that.isActive,_that.stops,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedRoute implements PatchedRoute {
  const _PatchedRoute({this.id, @JsonKey(name: 'origin_city') this.originCity, @JsonKey(name: 'origin_city_name') this.originCityName, @JsonKey(name: 'destination_city') this.destinationCity, @JsonKey(name: 'destination_city_name') this.destinationCityName, @JsonKey(name: 'origin_station') this.originStation, @JsonKey(name: 'destination_station') this.destinationStation, @JsonKey(name: 'distance_km') this.distanceKm, @JsonKey(name: 'base_price') this.basePrice, @JsonKey(name: 'duration_minutes') this.durationMinutes, @JsonKey(name: 'is_active') this.isActive, final  List<RouteStop>? stops, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _stops = stops;
  factory _PatchedRoute.fromJson(Map<String, dynamic> json) => _$PatchedRouteFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'origin_city') final  int? originCity;
@override@JsonKey(name: 'origin_city_name') final  String? originCityName;
@override@JsonKey(name: 'destination_city') final  int? destinationCity;
@override@JsonKey(name: 'destination_city_name') final  String? destinationCityName;
@override@JsonKey(name: 'origin_station') final  int? originStation;
@override@JsonKey(name: 'destination_station') final  int? destinationStation;
@override@JsonKey(name: 'distance_km') final  String? distanceKm;
@override@JsonKey(name: 'base_price') final  String? basePrice;
@override@JsonKey(name: 'duration_minutes') final  int? durationMinutes;
@override@JsonKey(name: 'is_active') final  bool? isActive;
 final  List<RouteStop>? _stops;
@override List<RouteStop>? get stops {
  final value = _stops;
  if (value == null) return null;
  if (_stops is EqualUnmodifiableListView) return _stops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of PatchedRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedRouteCopyWith<_PatchedRoute> get copyWith => __$PatchedRouteCopyWithImpl<_PatchedRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedRoute&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.destinationCityName, destinationCityName) || other.destinationCityName == destinationCityName)&&(identical(other.originStation, originStation) || other.originStation == originStation)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._stops, _stops)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,originCityName,destinationCity,destinationCityName,originStation,destinationStation,distanceKm,basePrice,durationMinutes,isActive,const DeepCollectionEquality().hash(_stops),createdAt,updatedAt);

@override
String toString() {
  return 'PatchedRoute(id: $id, originCity: $originCity, originCityName: $originCityName, destinationCity: $destinationCity, destinationCityName: $destinationCityName, originStation: $originStation, destinationStation: $destinationStation, distanceKm: $distanceKm, basePrice: $basePrice, durationMinutes: $durationMinutes, isActive: $isActive, stops: $stops, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatchedRouteCopyWith<$Res> implements $PatchedRouteCopyWith<$Res> {
  factory _$PatchedRouteCopyWith(_PatchedRoute value, $Res Function(_PatchedRoute) _then) = __$PatchedRouteCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'origin_city') int? originCity,@JsonKey(name: 'origin_city_name') String? originCityName,@JsonKey(name: 'destination_city') int? destinationCity,@JsonKey(name: 'destination_city_name') String? destinationCityName,@JsonKey(name: 'origin_station') int? originStation,@JsonKey(name: 'destination_station') int? destinationStation,@JsonKey(name: 'distance_km') String? distanceKm,@JsonKey(name: 'base_price') String? basePrice,@JsonKey(name: 'duration_minutes') int? durationMinutes,@JsonKey(name: 'is_active') bool? isActive, List<RouteStop>? stops,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$PatchedRouteCopyWithImpl<$Res>
    implements _$PatchedRouteCopyWith<$Res> {
  __$PatchedRouteCopyWithImpl(this._self, this._then);

  final _PatchedRoute _self;
  final $Res Function(_PatchedRoute) _then;

/// Create a copy of PatchedRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? originCity = freezed,Object? originCityName = freezed,Object? destinationCity = freezed,Object? destinationCityName = freezed,Object? originStation = freezed,Object? destinationStation = freezed,Object? distanceKm = freezed,Object? basePrice = freezed,Object? durationMinutes = freezed,Object? isActive = freezed,Object? stops = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PatchedRoute(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originCity: freezed == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as int?,originCityName: freezed == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String?,destinationCity: freezed == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as int?,destinationCityName: freezed == destinationCityName ? _self.destinationCityName : destinationCityName // ignore: cast_nullable_to_non_nullable
as String?,originStation: freezed == originStation ? _self.originStation : originStation // ignore: cast_nullable_to_non_nullable
as int?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as String?,basePrice: freezed == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as String?,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,stops: freezed == stops ? _self._stops : stops // ignore: cast_nullable_to_non_nullable
as List<RouteStop>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
