// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuperOverview {

@JsonKey(name: 'total_companies') int get totalCompanies;@JsonKey(name: 'active_companies') int get activeCompanies;@JsonKey(name: 'total_bookings') int get totalBookings;@JsonKey(name: 'total_commission_revenue') double get totalCommissionRevenue;@JsonKey(name: 'active_users') int get activeUsers;
/// Create a copy of SuperOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuperOverviewCopyWith<SuperOverview> get copyWith => _$SuperOverviewCopyWithImpl<SuperOverview>(this as SuperOverview, _$identity);

  /// Serializes this SuperOverview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuperOverview&&(identical(other.totalCompanies, totalCompanies) || other.totalCompanies == totalCompanies)&&(identical(other.activeCompanies, activeCompanies) || other.activeCompanies == activeCompanies)&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.totalCommissionRevenue, totalCommissionRevenue) || other.totalCommissionRevenue == totalCommissionRevenue)&&(identical(other.activeUsers, activeUsers) || other.activeUsers == activeUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCompanies,activeCompanies,totalBookings,totalCommissionRevenue,activeUsers);

@override
String toString() {
  return 'SuperOverview(totalCompanies: $totalCompanies, activeCompanies: $activeCompanies, totalBookings: $totalBookings, totalCommissionRevenue: $totalCommissionRevenue, activeUsers: $activeUsers)';
}


}

/// @nodoc
abstract mixin class $SuperOverviewCopyWith<$Res>  {
  factory $SuperOverviewCopyWith(SuperOverview value, $Res Function(SuperOverview) _then) = _$SuperOverviewCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_companies') int totalCompanies,@JsonKey(name: 'active_companies') int activeCompanies,@JsonKey(name: 'total_bookings') int totalBookings,@JsonKey(name: 'total_commission_revenue') double totalCommissionRevenue,@JsonKey(name: 'active_users') int activeUsers
});




}
/// @nodoc
class _$SuperOverviewCopyWithImpl<$Res>
    implements $SuperOverviewCopyWith<$Res> {
  _$SuperOverviewCopyWithImpl(this._self, this._then);

  final SuperOverview _self;
  final $Res Function(SuperOverview) _then;

/// Create a copy of SuperOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCompanies = null,Object? activeCompanies = null,Object? totalBookings = null,Object? totalCommissionRevenue = null,Object? activeUsers = null,}) {
  return _then(_self.copyWith(
totalCompanies: null == totalCompanies ? _self.totalCompanies : totalCompanies // ignore: cast_nullable_to_non_nullable
as int,activeCompanies: null == activeCompanies ? _self.activeCompanies : activeCompanies // ignore: cast_nullable_to_non_nullable
as int,totalBookings: null == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int,totalCommissionRevenue: null == totalCommissionRevenue ? _self.totalCommissionRevenue : totalCommissionRevenue // ignore: cast_nullable_to_non_nullable
as double,activeUsers: null == activeUsers ? _self.activeUsers : activeUsers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SuperOverview].
extension SuperOverviewPatterns on SuperOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuperOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuperOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuperOverview value)  $default,){
final _that = this;
switch (_that) {
case _SuperOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuperOverview value)?  $default,){
final _that = this;
switch (_that) {
case _SuperOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_companies')  int totalCompanies, @JsonKey(name: 'active_companies')  int activeCompanies, @JsonKey(name: 'total_bookings')  int totalBookings, @JsonKey(name: 'total_commission_revenue')  double totalCommissionRevenue, @JsonKey(name: 'active_users')  int activeUsers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuperOverview() when $default != null:
return $default(_that.totalCompanies,_that.activeCompanies,_that.totalBookings,_that.totalCommissionRevenue,_that.activeUsers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_companies')  int totalCompanies, @JsonKey(name: 'active_companies')  int activeCompanies, @JsonKey(name: 'total_bookings')  int totalBookings, @JsonKey(name: 'total_commission_revenue')  double totalCommissionRevenue, @JsonKey(name: 'active_users')  int activeUsers)  $default,) {final _that = this;
switch (_that) {
case _SuperOverview():
return $default(_that.totalCompanies,_that.activeCompanies,_that.totalBookings,_that.totalCommissionRevenue,_that.activeUsers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_companies')  int totalCompanies, @JsonKey(name: 'active_companies')  int activeCompanies, @JsonKey(name: 'total_bookings')  int totalBookings, @JsonKey(name: 'total_commission_revenue')  double totalCommissionRevenue, @JsonKey(name: 'active_users')  int activeUsers)?  $default,) {final _that = this;
switch (_that) {
case _SuperOverview() when $default != null:
return $default(_that.totalCompanies,_that.activeCompanies,_that.totalBookings,_that.totalCommissionRevenue,_that.activeUsers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuperOverview implements SuperOverview {
  const _SuperOverview({@JsonKey(name: 'total_companies') required this.totalCompanies, @JsonKey(name: 'active_companies') required this.activeCompanies, @JsonKey(name: 'total_bookings') required this.totalBookings, @JsonKey(name: 'total_commission_revenue') required this.totalCommissionRevenue, @JsonKey(name: 'active_users') required this.activeUsers});
  factory _SuperOverview.fromJson(Map<String, dynamic> json) => _$SuperOverviewFromJson(json);

@override@JsonKey(name: 'total_companies') final  int totalCompanies;
@override@JsonKey(name: 'active_companies') final  int activeCompanies;
@override@JsonKey(name: 'total_bookings') final  int totalBookings;
@override@JsonKey(name: 'total_commission_revenue') final  double totalCommissionRevenue;
@override@JsonKey(name: 'active_users') final  int activeUsers;

/// Create a copy of SuperOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuperOverviewCopyWith<_SuperOverview> get copyWith => __$SuperOverviewCopyWithImpl<_SuperOverview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuperOverviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuperOverview&&(identical(other.totalCompanies, totalCompanies) || other.totalCompanies == totalCompanies)&&(identical(other.activeCompanies, activeCompanies) || other.activeCompanies == activeCompanies)&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.totalCommissionRevenue, totalCommissionRevenue) || other.totalCommissionRevenue == totalCommissionRevenue)&&(identical(other.activeUsers, activeUsers) || other.activeUsers == activeUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCompanies,activeCompanies,totalBookings,totalCommissionRevenue,activeUsers);

@override
String toString() {
  return 'SuperOverview(totalCompanies: $totalCompanies, activeCompanies: $activeCompanies, totalBookings: $totalBookings, totalCommissionRevenue: $totalCommissionRevenue, activeUsers: $activeUsers)';
}


}

/// @nodoc
abstract mixin class _$SuperOverviewCopyWith<$Res> implements $SuperOverviewCopyWith<$Res> {
  factory _$SuperOverviewCopyWith(_SuperOverview value, $Res Function(_SuperOverview) _then) = __$SuperOverviewCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_companies') int totalCompanies,@JsonKey(name: 'active_companies') int activeCompanies,@JsonKey(name: 'total_bookings') int totalBookings,@JsonKey(name: 'total_commission_revenue') double totalCommissionRevenue,@JsonKey(name: 'active_users') int activeUsers
});




}
/// @nodoc
class __$SuperOverviewCopyWithImpl<$Res>
    implements _$SuperOverviewCopyWith<$Res> {
  __$SuperOverviewCopyWithImpl(this._self, this._then);

  final _SuperOverview _self;
  final $Res Function(_SuperOverview) _then;

/// Create a copy of SuperOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCompanies = null,Object? activeCompanies = null,Object? totalBookings = null,Object? totalCommissionRevenue = null,Object? activeUsers = null,}) {
  return _then(_SuperOverview(
totalCompanies: null == totalCompanies ? _self.totalCompanies : totalCompanies // ignore: cast_nullable_to_non_nullable
as int,activeCompanies: null == activeCompanies ? _self.activeCompanies : activeCompanies // ignore: cast_nullable_to_non_nullable
as int,totalBookings: null == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int,totalCommissionRevenue: null == totalCommissionRevenue ? _self.totalCommissionRevenue : totalCommissionRevenue // ignore: cast_nullable_to_non_nullable
as double,activeUsers: null == activeUsers ? _self.activeUsers : activeUsers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
