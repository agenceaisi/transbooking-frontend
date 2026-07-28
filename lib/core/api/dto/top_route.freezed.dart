// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopRoute {

 String get route; double get revenue; int get passengers;
/// Create a copy of TopRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopRouteCopyWith<TopRoute> get copyWith => _$TopRouteCopyWithImpl<TopRoute>(this as TopRoute, _$identity);

  /// Serializes this TopRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopRoute&&(identical(other.route, route) || other.route == route)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.passengers, passengers) || other.passengers == passengers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,route,revenue,passengers);

@override
String toString() {
  return 'TopRoute(route: $route, revenue: $revenue, passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class $TopRouteCopyWith<$Res>  {
  factory $TopRouteCopyWith(TopRoute value, $Res Function(TopRoute) _then) = _$TopRouteCopyWithImpl;
@useResult
$Res call({
 String route, double revenue, int passengers
});




}
/// @nodoc
class _$TopRouteCopyWithImpl<$Res>
    implements $TopRouteCopyWith<$Res> {
  _$TopRouteCopyWithImpl(this._self, this._then);

  final TopRoute _self;
  final $Res Function(TopRoute) _then;

/// Create a copy of TopRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? route = null,Object? revenue = null,Object? passengers = null,}) {
  return _then(_self.copyWith(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double,passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TopRoute].
extension TopRoutePatterns on TopRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopRoute value)  $default,){
final _that = this;
switch (_that) {
case _TopRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopRoute value)?  $default,){
final _that = this;
switch (_that) {
case _TopRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String route,  double revenue,  int passengers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopRoute() when $default != null:
return $default(_that.route,_that.revenue,_that.passengers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String route,  double revenue,  int passengers)  $default,) {final _that = this;
switch (_that) {
case _TopRoute():
return $default(_that.route,_that.revenue,_that.passengers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String route,  double revenue,  int passengers)?  $default,) {final _that = this;
switch (_that) {
case _TopRoute() when $default != null:
return $default(_that.route,_that.revenue,_that.passengers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopRoute implements TopRoute {
  const _TopRoute({required this.route, required this.revenue, required this.passengers});
  factory _TopRoute.fromJson(Map<String, dynamic> json) => _$TopRouteFromJson(json);

@override final  String route;
@override final  double revenue;
@override final  int passengers;

/// Create a copy of TopRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopRouteCopyWith<_TopRoute> get copyWith => __$TopRouteCopyWithImpl<_TopRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopRoute&&(identical(other.route, route) || other.route == route)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.passengers, passengers) || other.passengers == passengers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,route,revenue,passengers);

@override
String toString() {
  return 'TopRoute(route: $route, revenue: $revenue, passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class _$TopRouteCopyWith<$Res> implements $TopRouteCopyWith<$Res> {
  factory _$TopRouteCopyWith(_TopRoute value, $Res Function(_TopRoute) _then) = __$TopRouteCopyWithImpl;
@override @useResult
$Res call({
 String route, double revenue, int passengers
});




}
/// @nodoc
class __$TopRouteCopyWithImpl<$Res>
    implements _$TopRouteCopyWith<$Res> {
  __$TopRouteCopyWithImpl(this._self, this._then);

  final _TopRoute _self;
  final $Res Function(_TopRoute) _then;

/// Create a copy of TopRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? route = null,Object? revenue = null,Object? passengers = null,}) {
  return _then(_TopRoute(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double,passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
