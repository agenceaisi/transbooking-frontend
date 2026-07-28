// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_overview_delta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyOverviewDelta {

@JsonKey(name: 'revenue_total') double get revenueTotal;@JsonKey(name: 'fill_rate_avg') double get fillRateAvg;@JsonKey(name: 'bookings_count') int get bookingsCount;
/// Create a copy of CompanyOverviewDelta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyOverviewDeltaCopyWith<CompanyOverviewDelta> get copyWith => _$CompanyOverviewDeltaCopyWithImpl<CompanyOverviewDelta>(this as CompanyOverviewDelta, _$identity);

  /// Serializes this CompanyOverviewDelta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyOverviewDelta&&(identical(other.revenueTotal, revenueTotal) || other.revenueTotal == revenueTotal)&&(identical(other.fillRateAvg, fillRateAvg) || other.fillRateAvg == fillRateAvg)&&(identical(other.bookingsCount, bookingsCount) || other.bookingsCount == bookingsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,revenueTotal,fillRateAvg,bookingsCount);

@override
String toString() {
  return 'CompanyOverviewDelta(revenueTotal: $revenueTotal, fillRateAvg: $fillRateAvg, bookingsCount: $bookingsCount)';
}


}

/// @nodoc
abstract mixin class $CompanyOverviewDeltaCopyWith<$Res>  {
  factory $CompanyOverviewDeltaCopyWith(CompanyOverviewDelta value, $Res Function(CompanyOverviewDelta) _then) = _$CompanyOverviewDeltaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'revenue_total') double revenueTotal,@JsonKey(name: 'fill_rate_avg') double fillRateAvg,@JsonKey(name: 'bookings_count') int bookingsCount
});




}
/// @nodoc
class _$CompanyOverviewDeltaCopyWithImpl<$Res>
    implements $CompanyOverviewDeltaCopyWith<$Res> {
  _$CompanyOverviewDeltaCopyWithImpl(this._self, this._then);

  final CompanyOverviewDelta _self;
  final $Res Function(CompanyOverviewDelta) _then;

/// Create a copy of CompanyOverviewDelta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? revenueTotal = null,Object? fillRateAvg = null,Object? bookingsCount = null,}) {
  return _then(_self.copyWith(
revenueTotal: null == revenueTotal ? _self.revenueTotal : revenueTotal // ignore: cast_nullable_to_non_nullable
as double,fillRateAvg: null == fillRateAvg ? _self.fillRateAvg : fillRateAvg // ignore: cast_nullable_to_non_nullable
as double,bookingsCount: null == bookingsCount ? _self.bookingsCount : bookingsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyOverviewDelta].
extension CompanyOverviewDeltaPatterns on CompanyOverviewDelta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyOverviewDelta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyOverviewDelta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyOverviewDelta value)  $default,){
final _that = this;
switch (_that) {
case _CompanyOverviewDelta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyOverviewDelta value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyOverviewDelta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'revenue_total')  double revenueTotal, @JsonKey(name: 'fill_rate_avg')  double fillRateAvg, @JsonKey(name: 'bookings_count')  int bookingsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyOverviewDelta() when $default != null:
return $default(_that.revenueTotal,_that.fillRateAvg,_that.bookingsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'revenue_total')  double revenueTotal, @JsonKey(name: 'fill_rate_avg')  double fillRateAvg, @JsonKey(name: 'bookings_count')  int bookingsCount)  $default,) {final _that = this;
switch (_that) {
case _CompanyOverviewDelta():
return $default(_that.revenueTotal,_that.fillRateAvg,_that.bookingsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'revenue_total')  double revenueTotal, @JsonKey(name: 'fill_rate_avg')  double fillRateAvg, @JsonKey(name: 'bookings_count')  int bookingsCount)?  $default,) {final _that = this;
switch (_that) {
case _CompanyOverviewDelta() when $default != null:
return $default(_that.revenueTotal,_that.fillRateAvg,_that.bookingsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyOverviewDelta implements CompanyOverviewDelta {
  const _CompanyOverviewDelta({@JsonKey(name: 'revenue_total') required this.revenueTotal, @JsonKey(name: 'fill_rate_avg') required this.fillRateAvg, @JsonKey(name: 'bookings_count') required this.bookingsCount});
  factory _CompanyOverviewDelta.fromJson(Map<String, dynamic> json) => _$CompanyOverviewDeltaFromJson(json);

@override@JsonKey(name: 'revenue_total') final  double revenueTotal;
@override@JsonKey(name: 'fill_rate_avg') final  double fillRateAvg;
@override@JsonKey(name: 'bookings_count') final  int bookingsCount;

/// Create a copy of CompanyOverviewDelta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyOverviewDeltaCopyWith<_CompanyOverviewDelta> get copyWith => __$CompanyOverviewDeltaCopyWithImpl<_CompanyOverviewDelta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyOverviewDeltaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyOverviewDelta&&(identical(other.revenueTotal, revenueTotal) || other.revenueTotal == revenueTotal)&&(identical(other.fillRateAvg, fillRateAvg) || other.fillRateAvg == fillRateAvg)&&(identical(other.bookingsCount, bookingsCount) || other.bookingsCount == bookingsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,revenueTotal,fillRateAvg,bookingsCount);

@override
String toString() {
  return 'CompanyOverviewDelta(revenueTotal: $revenueTotal, fillRateAvg: $fillRateAvg, bookingsCount: $bookingsCount)';
}


}

/// @nodoc
abstract mixin class _$CompanyOverviewDeltaCopyWith<$Res> implements $CompanyOverviewDeltaCopyWith<$Res> {
  factory _$CompanyOverviewDeltaCopyWith(_CompanyOverviewDelta value, $Res Function(_CompanyOverviewDelta) _then) = __$CompanyOverviewDeltaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'revenue_total') double revenueTotal,@JsonKey(name: 'fill_rate_avg') double fillRateAvg,@JsonKey(name: 'bookings_count') int bookingsCount
});




}
/// @nodoc
class __$CompanyOverviewDeltaCopyWithImpl<$Res>
    implements _$CompanyOverviewDeltaCopyWith<$Res> {
  __$CompanyOverviewDeltaCopyWithImpl(this._self, this._then);

  final _CompanyOverviewDelta _self;
  final $Res Function(_CompanyOverviewDelta) _then;

/// Create a copy of CompanyOverviewDelta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? revenueTotal = null,Object? fillRateAvg = null,Object? bookingsCount = null,}) {
  return _then(_CompanyOverviewDelta(
revenueTotal: null == revenueTotal ? _self.revenueTotal : revenueTotal // ignore: cast_nullable_to_non_nullable
as double,fillRateAvg: null == fillRateAvg ? _self.fillRateAvg : fillRateAvg // ignore: cast_nullable_to_non_nullable
as double,bookingsCount: null == bookingsCount ? _self.bookingsCount : bookingsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
