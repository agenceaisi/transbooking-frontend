// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyOverview {

 String get period;@JsonKey(name: 'revenue_total') double get revenueTotal;@JsonKey(name: 'fill_rate_avg') double get fillRateAvg;@JsonKey(name: 'bookings_count') int get bookingsCount;@JsonKey(name: 'avg_rating') double? get avgRating;@JsonKey(name: 'vs_previous_period') CompanyOverviewDelta get vsPreviousPeriod;
/// Create a copy of CompanyOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyOverviewCopyWith<CompanyOverview> get copyWith => _$CompanyOverviewCopyWithImpl<CompanyOverview>(this as CompanyOverview, _$identity);

  /// Serializes this CompanyOverview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyOverview&&(identical(other.period, period) || other.period == period)&&(identical(other.revenueTotal, revenueTotal) || other.revenueTotal == revenueTotal)&&(identical(other.fillRateAvg, fillRateAvg) || other.fillRateAvg == fillRateAvg)&&(identical(other.bookingsCount, bookingsCount) || other.bookingsCount == bookingsCount)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.vsPreviousPeriod, vsPreviousPeriod) || other.vsPreviousPeriod == vsPreviousPeriod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,revenueTotal,fillRateAvg,bookingsCount,avgRating,vsPreviousPeriod);

@override
String toString() {
  return 'CompanyOverview(period: $period, revenueTotal: $revenueTotal, fillRateAvg: $fillRateAvg, bookingsCount: $bookingsCount, avgRating: $avgRating, vsPreviousPeriod: $vsPreviousPeriod)';
}


}

/// @nodoc
abstract mixin class $CompanyOverviewCopyWith<$Res>  {
  factory $CompanyOverviewCopyWith(CompanyOverview value, $Res Function(CompanyOverview) _then) = _$CompanyOverviewCopyWithImpl;
@useResult
$Res call({
 String period,@JsonKey(name: 'revenue_total') double revenueTotal,@JsonKey(name: 'fill_rate_avg') double fillRateAvg,@JsonKey(name: 'bookings_count') int bookingsCount,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'vs_previous_period') CompanyOverviewDelta vsPreviousPeriod
});


$CompanyOverviewDeltaCopyWith<$Res> get vsPreviousPeriod;

}
/// @nodoc
class _$CompanyOverviewCopyWithImpl<$Res>
    implements $CompanyOverviewCopyWith<$Res> {
  _$CompanyOverviewCopyWithImpl(this._self, this._then);

  final CompanyOverview _self;
  final $Res Function(CompanyOverview) _then;

/// Create a copy of CompanyOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? revenueTotal = null,Object? fillRateAvg = null,Object? bookingsCount = null,Object? avgRating = freezed,Object? vsPreviousPeriod = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,revenueTotal: null == revenueTotal ? _self.revenueTotal : revenueTotal // ignore: cast_nullable_to_non_nullable
as double,fillRateAvg: null == fillRateAvg ? _self.fillRateAvg : fillRateAvg // ignore: cast_nullable_to_non_nullable
as double,bookingsCount: null == bookingsCount ? _self.bookingsCount : bookingsCount // ignore: cast_nullable_to_non_nullable
as int,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,vsPreviousPeriod: null == vsPreviousPeriod ? _self.vsPreviousPeriod : vsPreviousPeriod // ignore: cast_nullable_to_non_nullable
as CompanyOverviewDelta,
  ));
}
/// Create a copy of CompanyOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyOverviewDeltaCopyWith<$Res> get vsPreviousPeriod {
  
  return $CompanyOverviewDeltaCopyWith<$Res>(_self.vsPreviousPeriod, (value) {
    return _then(_self.copyWith(vsPreviousPeriod: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyOverview].
extension CompanyOverviewPatterns on CompanyOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyOverview value)  $default,){
final _that = this;
switch (_that) {
case _CompanyOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyOverview value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period, @JsonKey(name: 'revenue_total')  double revenueTotal, @JsonKey(name: 'fill_rate_avg')  double fillRateAvg, @JsonKey(name: 'bookings_count')  int bookingsCount, @JsonKey(name: 'avg_rating')  double? avgRating, @JsonKey(name: 'vs_previous_period')  CompanyOverviewDelta vsPreviousPeriod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyOverview() when $default != null:
return $default(_that.period,_that.revenueTotal,_that.fillRateAvg,_that.bookingsCount,_that.avgRating,_that.vsPreviousPeriod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period, @JsonKey(name: 'revenue_total')  double revenueTotal, @JsonKey(name: 'fill_rate_avg')  double fillRateAvg, @JsonKey(name: 'bookings_count')  int bookingsCount, @JsonKey(name: 'avg_rating')  double? avgRating, @JsonKey(name: 'vs_previous_period')  CompanyOverviewDelta vsPreviousPeriod)  $default,) {final _that = this;
switch (_that) {
case _CompanyOverview():
return $default(_that.period,_that.revenueTotal,_that.fillRateAvg,_that.bookingsCount,_that.avgRating,_that.vsPreviousPeriod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period, @JsonKey(name: 'revenue_total')  double revenueTotal, @JsonKey(name: 'fill_rate_avg')  double fillRateAvg, @JsonKey(name: 'bookings_count')  int bookingsCount, @JsonKey(name: 'avg_rating')  double? avgRating, @JsonKey(name: 'vs_previous_period')  CompanyOverviewDelta vsPreviousPeriod)?  $default,) {final _that = this;
switch (_that) {
case _CompanyOverview() when $default != null:
return $default(_that.period,_that.revenueTotal,_that.fillRateAvg,_that.bookingsCount,_that.avgRating,_that.vsPreviousPeriod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyOverview implements CompanyOverview {
  const _CompanyOverview({required this.period, @JsonKey(name: 'revenue_total') required this.revenueTotal, @JsonKey(name: 'fill_rate_avg') required this.fillRateAvg, @JsonKey(name: 'bookings_count') required this.bookingsCount, @JsonKey(name: 'avg_rating') required this.avgRating, @JsonKey(name: 'vs_previous_period') required this.vsPreviousPeriod});
  factory _CompanyOverview.fromJson(Map<String, dynamic> json) => _$CompanyOverviewFromJson(json);

@override final  String period;
@override@JsonKey(name: 'revenue_total') final  double revenueTotal;
@override@JsonKey(name: 'fill_rate_avg') final  double fillRateAvg;
@override@JsonKey(name: 'bookings_count') final  int bookingsCount;
@override@JsonKey(name: 'avg_rating') final  double? avgRating;
@override@JsonKey(name: 'vs_previous_period') final  CompanyOverviewDelta vsPreviousPeriod;

/// Create a copy of CompanyOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyOverviewCopyWith<_CompanyOverview> get copyWith => __$CompanyOverviewCopyWithImpl<_CompanyOverview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyOverviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyOverview&&(identical(other.period, period) || other.period == period)&&(identical(other.revenueTotal, revenueTotal) || other.revenueTotal == revenueTotal)&&(identical(other.fillRateAvg, fillRateAvg) || other.fillRateAvg == fillRateAvg)&&(identical(other.bookingsCount, bookingsCount) || other.bookingsCount == bookingsCount)&&(identical(other.avgRating, avgRating) || other.avgRating == avgRating)&&(identical(other.vsPreviousPeriod, vsPreviousPeriod) || other.vsPreviousPeriod == vsPreviousPeriod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,revenueTotal,fillRateAvg,bookingsCount,avgRating,vsPreviousPeriod);

@override
String toString() {
  return 'CompanyOverview(period: $period, revenueTotal: $revenueTotal, fillRateAvg: $fillRateAvg, bookingsCount: $bookingsCount, avgRating: $avgRating, vsPreviousPeriod: $vsPreviousPeriod)';
}


}

/// @nodoc
abstract mixin class _$CompanyOverviewCopyWith<$Res> implements $CompanyOverviewCopyWith<$Res> {
  factory _$CompanyOverviewCopyWith(_CompanyOverview value, $Res Function(_CompanyOverview) _then) = __$CompanyOverviewCopyWithImpl;
@override @useResult
$Res call({
 String period,@JsonKey(name: 'revenue_total') double revenueTotal,@JsonKey(name: 'fill_rate_avg') double fillRateAvg,@JsonKey(name: 'bookings_count') int bookingsCount,@JsonKey(name: 'avg_rating') double? avgRating,@JsonKey(name: 'vs_previous_period') CompanyOverviewDelta vsPreviousPeriod
});


@override $CompanyOverviewDeltaCopyWith<$Res> get vsPreviousPeriod;

}
/// @nodoc
class __$CompanyOverviewCopyWithImpl<$Res>
    implements _$CompanyOverviewCopyWith<$Res> {
  __$CompanyOverviewCopyWithImpl(this._self, this._then);

  final _CompanyOverview _self;
  final $Res Function(_CompanyOverview) _then;

/// Create a copy of CompanyOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? revenueTotal = null,Object? fillRateAvg = null,Object? bookingsCount = null,Object? avgRating = freezed,Object? vsPreviousPeriod = null,}) {
  return _then(_CompanyOverview(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,revenueTotal: null == revenueTotal ? _self.revenueTotal : revenueTotal // ignore: cast_nullable_to_non_nullable
as double,fillRateAvg: null == fillRateAvg ? _self.fillRateAvg : fillRateAvg // ignore: cast_nullable_to_non_nullable
as double,bookingsCount: null == bookingsCount ? _self.bookingsCount : bookingsCount // ignore: cast_nullable_to_non_nullable
as int,avgRating: freezed == avgRating ? _self.avgRating : avgRating // ignore: cast_nullable_to_non_nullable
as double?,vsPreviousPeriod: null == vsPreviousPeriod ? _self.vsPreviousPeriod : vsPreviousPeriod // ignore: cast_nullable_to_non_nullable
as CompanyOverviewDelta,
  ));
}

/// Create a copy of CompanyOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyOverviewDeltaCopyWith<$Res> get vsPreviousPeriod {
  
  return $CompanyOverviewDeltaCopyWith<$Res>(_self.vsPreviousPeriod, (value) {
    return _then(_self.copyWith(vsPreviousPeriod: value));
  });
}
}

// dart format on
