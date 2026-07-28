// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings_chart_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingsChartPoint {

 DateTime get date; int get count;
/// Create a copy of BookingsChartPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingsChartPointCopyWith<BookingsChartPoint> get copyWith => _$BookingsChartPointCopyWithImpl<BookingsChartPoint>(this as BookingsChartPoint, _$identity);

  /// Serializes this BookingsChartPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingsChartPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,count);

@override
String toString() {
  return 'BookingsChartPoint(date: $date, count: $count)';
}


}

/// @nodoc
abstract mixin class $BookingsChartPointCopyWith<$Res>  {
  factory $BookingsChartPointCopyWith(BookingsChartPoint value, $Res Function(BookingsChartPoint) _then) = _$BookingsChartPointCopyWithImpl;
@useResult
$Res call({
 DateTime date, int count
});




}
/// @nodoc
class _$BookingsChartPointCopyWithImpl<$Res>
    implements $BookingsChartPointCopyWith<$Res> {
  _$BookingsChartPointCopyWithImpl(this._self, this._then);

  final BookingsChartPoint _self;
  final $Res Function(BookingsChartPoint) _then;

/// Create a copy of BookingsChartPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? count = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingsChartPoint].
extension BookingsChartPointPatterns on BookingsChartPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingsChartPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingsChartPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingsChartPoint value)  $default,){
final _that = this;
switch (_that) {
case _BookingsChartPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingsChartPoint value)?  $default,){
final _that = this;
switch (_that) {
case _BookingsChartPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingsChartPoint() when $default != null:
return $default(_that.date,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  int count)  $default,) {final _that = this;
switch (_that) {
case _BookingsChartPoint():
return $default(_that.date,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  int count)?  $default,) {final _that = this;
switch (_that) {
case _BookingsChartPoint() when $default != null:
return $default(_that.date,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingsChartPoint implements BookingsChartPoint {
  const _BookingsChartPoint({required this.date, required this.count});
  factory _BookingsChartPoint.fromJson(Map<String, dynamic> json) => _$BookingsChartPointFromJson(json);

@override final  DateTime date;
@override final  int count;

/// Create a copy of BookingsChartPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingsChartPointCopyWith<_BookingsChartPoint> get copyWith => __$BookingsChartPointCopyWithImpl<_BookingsChartPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingsChartPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingsChartPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,count);

@override
String toString() {
  return 'BookingsChartPoint(date: $date, count: $count)';
}


}

/// @nodoc
abstract mixin class _$BookingsChartPointCopyWith<$Res> implements $BookingsChartPointCopyWith<$Res> {
  factory _$BookingsChartPointCopyWith(_BookingsChartPoint value, $Res Function(_BookingsChartPoint) _then) = __$BookingsChartPointCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int count
});




}
/// @nodoc
class __$BookingsChartPointCopyWithImpl<$Res>
    implements _$BookingsChartPointCopyWith<$Res> {
  __$BookingsChartPointCopyWithImpl(this._self, this._then);

  final _BookingsChartPoint _self;
  final $Res Function(_BookingsChartPoint) _then;

/// Create a copy of BookingsChartPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? count = null,}) {
  return _then(_BookingsChartPoint(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
