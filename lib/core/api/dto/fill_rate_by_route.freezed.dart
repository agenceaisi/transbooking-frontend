// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fill_rate_by_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FillRateByRoute {

@JsonKey(name: 'route_label') String get routeLabel;@JsonKey(name: 'fill_rate_pct') double get fillRatePct;
/// Create a copy of FillRateByRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FillRateByRouteCopyWith<FillRateByRoute> get copyWith => _$FillRateByRouteCopyWithImpl<FillRateByRoute>(this as FillRateByRoute, _$identity);

  /// Serializes this FillRateByRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FillRateByRoute&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.fillRatePct, fillRatePct) || other.fillRatePct == fillRatePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,routeLabel,fillRatePct);

@override
String toString() {
  return 'FillRateByRoute(routeLabel: $routeLabel, fillRatePct: $fillRatePct)';
}


}

/// @nodoc
abstract mixin class $FillRateByRouteCopyWith<$Res>  {
  factory $FillRateByRouteCopyWith(FillRateByRoute value, $Res Function(FillRateByRoute) _then) = _$FillRateByRouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_label') String routeLabel,@JsonKey(name: 'fill_rate_pct') double fillRatePct
});




}
/// @nodoc
class _$FillRateByRouteCopyWithImpl<$Res>
    implements $FillRateByRouteCopyWith<$Res> {
  _$FillRateByRouteCopyWithImpl(this._self, this._then);

  final FillRateByRoute _self;
  final $Res Function(FillRateByRoute) _then;

/// Create a copy of FillRateByRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeLabel = null,Object? fillRatePct = null,}) {
  return _then(_self.copyWith(
routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,fillRatePct: null == fillRatePct ? _self.fillRatePct : fillRatePct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FillRateByRoute].
extension FillRateByRoutePatterns on FillRateByRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FillRateByRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillRateByRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FillRateByRoute value)  $default,){
final _that = this;
switch (_that) {
case _FillRateByRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FillRateByRoute value)?  $default,){
final _that = this;
switch (_that) {
case _FillRateByRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_label')  String routeLabel, @JsonKey(name: 'fill_rate_pct')  double fillRatePct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillRateByRoute() when $default != null:
return $default(_that.routeLabel,_that.fillRatePct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_label')  String routeLabel, @JsonKey(name: 'fill_rate_pct')  double fillRatePct)  $default,) {final _that = this;
switch (_that) {
case _FillRateByRoute():
return $default(_that.routeLabel,_that.fillRatePct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_label')  String routeLabel, @JsonKey(name: 'fill_rate_pct')  double fillRatePct)?  $default,) {final _that = this;
switch (_that) {
case _FillRateByRoute() when $default != null:
return $default(_that.routeLabel,_that.fillRatePct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FillRateByRoute implements FillRateByRoute {
  const _FillRateByRoute({@JsonKey(name: 'route_label') required this.routeLabel, @JsonKey(name: 'fill_rate_pct') required this.fillRatePct});
  factory _FillRateByRoute.fromJson(Map<String, dynamic> json) => _$FillRateByRouteFromJson(json);

@override@JsonKey(name: 'route_label') final  String routeLabel;
@override@JsonKey(name: 'fill_rate_pct') final  double fillRatePct;

/// Create a copy of FillRateByRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillRateByRouteCopyWith<_FillRateByRoute> get copyWith => __$FillRateByRouteCopyWithImpl<_FillRateByRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FillRateByRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillRateByRoute&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.fillRatePct, fillRatePct) || other.fillRatePct == fillRatePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,routeLabel,fillRatePct);

@override
String toString() {
  return 'FillRateByRoute(routeLabel: $routeLabel, fillRatePct: $fillRatePct)';
}


}

/// @nodoc
abstract mixin class _$FillRateByRouteCopyWith<$Res> implements $FillRateByRouteCopyWith<$Res> {
  factory _$FillRateByRouteCopyWith(_FillRateByRoute value, $Res Function(_FillRateByRoute) _then) = __$FillRateByRouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_label') String routeLabel,@JsonKey(name: 'fill_rate_pct') double fillRatePct
});




}
/// @nodoc
class __$FillRateByRouteCopyWithImpl<$Res>
    implements _$FillRateByRouteCopyWith<$Res> {
  __$FillRateByRouteCopyWithImpl(this._self, this._then);

  final _FillRateByRoute _self;
  final $Res Function(_FillRateByRoute) _then;

/// Create a copy of FillRateByRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeLabel = null,Object? fillRatePct = null,}) {
  return _then(_FillRateByRoute(
routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,fillRatePct: null == fillRatePct ? _self.fillRatePct : fillRatePct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
