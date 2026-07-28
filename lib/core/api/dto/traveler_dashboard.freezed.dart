// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TravelerDashboard {

@JsonKey(name: 'next_trips') List<TravelerNextTrip> get nextTrips;@JsonKey(name: 'active_bookings_count') int get activeBookingsCount;@JsonKey(name: 'pending_count') int get pendingCount;@JsonKey(name: 'paid_count') int get paidCount;@JsonKey(name: 'cancelled_count') int get cancelledCount;@JsonKey(name: 'recent_notifications') List<NotificationSummary> get recentNotifications;
/// Create a copy of TravelerDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerDashboardCopyWith<TravelerDashboard> get copyWith => _$TravelerDashboardCopyWithImpl<TravelerDashboard>(this as TravelerDashboard, _$identity);

  /// Serializes this TravelerDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerDashboard&&const DeepCollectionEquality().equals(other.nextTrips, nextTrips)&&(identical(other.activeBookingsCount, activeBookingsCount) || other.activeBookingsCount == activeBookingsCount)&&(identical(other.pendingCount, pendingCount) || other.pendingCount == pendingCount)&&(identical(other.paidCount, paidCount) || other.paidCount == paidCount)&&(identical(other.cancelledCount, cancelledCount) || other.cancelledCount == cancelledCount)&&const DeepCollectionEquality().equals(other.recentNotifications, recentNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nextTrips),activeBookingsCount,pendingCount,paidCount,cancelledCount,const DeepCollectionEquality().hash(recentNotifications));

@override
String toString() {
  return 'TravelerDashboard(nextTrips: $nextTrips, activeBookingsCount: $activeBookingsCount, pendingCount: $pendingCount, paidCount: $paidCount, cancelledCount: $cancelledCount, recentNotifications: $recentNotifications)';
}


}

/// @nodoc
abstract mixin class $TravelerDashboardCopyWith<$Res>  {
  factory $TravelerDashboardCopyWith(TravelerDashboard value, $Res Function(TravelerDashboard) _then) = _$TravelerDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'next_trips') List<TravelerNextTrip> nextTrips,@JsonKey(name: 'active_bookings_count') int activeBookingsCount,@JsonKey(name: 'pending_count') int pendingCount,@JsonKey(name: 'paid_count') int paidCount,@JsonKey(name: 'cancelled_count') int cancelledCount,@JsonKey(name: 'recent_notifications') List<NotificationSummary> recentNotifications
});




}
/// @nodoc
class _$TravelerDashboardCopyWithImpl<$Res>
    implements $TravelerDashboardCopyWith<$Res> {
  _$TravelerDashboardCopyWithImpl(this._self, this._then);

  final TravelerDashboard _self;
  final $Res Function(TravelerDashboard) _then;

/// Create a copy of TravelerDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextTrips = null,Object? activeBookingsCount = null,Object? pendingCount = null,Object? paidCount = null,Object? cancelledCount = null,Object? recentNotifications = null,}) {
  return _then(_self.copyWith(
nextTrips: null == nextTrips ? _self.nextTrips : nextTrips // ignore: cast_nullable_to_non_nullable
as List<TravelerNextTrip>,activeBookingsCount: null == activeBookingsCount ? _self.activeBookingsCount : activeBookingsCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,paidCount: null == paidCount ? _self.paidCount : paidCount // ignore: cast_nullable_to_non_nullable
as int,cancelledCount: null == cancelledCount ? _self.cancelledCount : cancelledCount // ignore: cast_nullable_to_non_nullable
as int,recentNotifications: null == recentNotifications ? _self.recentNotifications : recentNotifications // ignore: cast_nullable_to_non_nullable
as List<NotificationSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerDashboard].
extension TravelerDashboardPatterns on TravelerDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerDashboard value)  $default,){
final _that = this;
switch (_that) {
case _TravelerDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_trips')  List<TravelerNextTrip> nextTrips, @JsonKey(name: 'active_bookings_count')  int activeBookingsCount, @JsonKey(name: 'pending_count')  int pendingCount, @JsonKey(name: 'paid_count')  int paidCount, @JsonKey(name: 'cancelled_count')  int cancelledCount, @JsonKey(name: 'recent_notifications')  List<NotificationSummary> recentNotifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerDashboard() when $default != null:
return $default(_that.nextTrips,_that.activeBookingsCount,_that.pendingCount,_that.paidCount,_that.cancelledCount,_that.recentNotifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_trips')  List<TravelerNextTrip> nextTrips, @JsonKey(name: 'active_bookings_count')  int activeBookingsCount, @JsonKey(name: 'pending_count')  int pendingCount, @JsonKey(name: 'paid_count')  int paidCount, @JsonKey(name: 'cancelled_count')  int cancelledCount, @JsonKey(name: 'recent_notifications')  List<NotificationSummary> recentNotifications)  $default,) {final _that = this;
switch (_that) {
case _TravelerDashboard():
return $default(_that.nextTrips,_that.activeBookingsCount,_that.pendingCount,_that.paidCount,_that.cancelledCount,_that.recentNotifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'next_trips')  List<TravelerNextTrip> nextTrips, @JsonKey(name: 'active_bookings_count')  int activeBookingsCount, @JsonKey(name: 'pending_count')  int pendingCount, @JsonKey(name: 'paid_count')  int paidCount, @JsonKey(name: 'cancelled_count')  int cancelledCount, @JsonKey(name: 'recent_notifications')  List<NotificationSummary> recentNotifications)?  $default,) {final _that = this;
switch (_that) {
case _TravelerDashboard() when $default != null:
return $default(_that.nextTrips,_that.activeBookingsCount,_that.pendingCount,_that.paidCount,_that.cancelledCount,_that.recentNotifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelerDashboard implements TravelerDashboard {
  const _TravelerDashboard({@JsonKey(name: 'next_trips') required final  List<TravelerNextTrip> nextTrips, @JsonKey(name: 'active_bookings_count') required this.activeBookingsCount, @JsonKey(name: 'pending_count') required this.pendingCount, @JsonKey(name: 'paid_count') required this.paidCount, @JsonKey(name: 'cancelled_count') required this.cancelledCount, @JsonKey(name: 'recent_notifications') required final  List<NotificationSummary> recentNotifications}): _nextTrips = nextTrips,_recentNotifications = recentNotifications;
  factory _TravelerDashboard.fromJson(Map<String, dynamic> json) => _$TravelerDashboardFromJson(json);

 final  List<TravelerNextTrip> _nextTrips;
@override@JsonKey(name: 'next_trips') List<TravelerNextTrip> get nextTrips {
  if (_nextTrips is EqualUnmodifiableListView) return _nextTrips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nextTrips);
}

@override@JsonKey(name: 'active_bookings_count') final  int activeBookingsCount;
@override@JsonKey(name: 'pending_count') final  int pendingCount;
@override@JsonKey(name: 'paid_count') final  int paidCount;
@override@JsonKey(name: 'cancelled_count') final  int cancelledCount;
 final  List<NotificationSummary> _recentNotifications;
@override@JsonKey(name: 'recent_notifications') List<NotificationSummary> get recentNotifications {
  if (_recentNotifications is EqualUnmodifiableListView) return _recentNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentNotifications);
}


/// Create a copy of TravelerDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerDashboardCopyWith<_TravelerDashboard> get copyWith => __$TravelerDashboardCopyWithImpl<_TravelerDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelerDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerDashboard&&const DeepCollectionEquality().equals(other._nextTrips, _nextTrips)&&(identical(other.activeBookingsCount, activeBookingsCount) || other.activeBookingsCount == activeBookingsCount)&&(identical(other.pendingCount, pendingCount) || other.pendingCount == pendingCount)&&(identical(other.paidCount, paidCount) || other.paidCount == paidCount)&&(identical(other.cancelledCount, cancelledCount) || other.cancelledCount == cancelledCount)&&const DeepCollectionEquality().equals(other._recentNotifications, _recentNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nextTrips),activeBookingsCount,pendingCount,paidCount,cancelledCount,const DeepCollectionEquality().hash(_recentNotifications));

@override
String toString() {
  return 'TravelerDashboard(nextTrips: $nextTrips, activeBookingsCount: $activeBookingsCount, pendingCount: $pendingCount, paidCount: $paidCount, cancelledCount: $cancelledCount, recentNotifications: $recentNotifications)';
}


}

/// @nodoc
abstract mixin class _$TravelerDashboardCopyWith<$Res> implements $TravelerDashboardCopyWith<$Res> {
  factory _$TravelerDashboardCopyWith(_TravelerDashboard value, $Res Function(_TravelerDashboard) _then) = __$TravelerDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'next_trips') List<TravelerNextTrip> nextTrips,@JsonKey(name: 'active_bookings_count') int activeBookingsCount,@JsonKey(name: 'pending_count') int pendingCount,@JsonKey(name: 'paid_count') int paidCount,@JsonKey(name: 'cancelled_count') int cancelledCount,@JsonKey(name: 'recent_notifications') List<NotificationSummary> recentNotifications
});




}
/// @nodoc
class __$TravelerDashboardCopyWithImpl<$Res>
    implements _$TravelerDashboardCopyWith<$Res> {
  __$TravelerDashboardCopyWithImpl(this._self, this._then);

  final _TravelerDashboard _self;
  final $Res Function(_TravelerDashboard) _then;

/// Create a copy of TravelerDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextTrips = null,Object? activeBookingsCount = null,Object? pendingCount = null,Object? paidCount = null,Object? cancelledCount = null,Object? recentNotifications = null,}) {
  return _then(_TravelerDashboard(
nextTrips: null == nextTrips ? _self._nextTrips : nextTrips // ignore: cast_nullable_to_non_nullable
as List<TravelerNextTrip>,activeBookingsCount: null == activeBookingsCount ? _self.activeBookingsCount : activeBookingsCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,paidCount: null == paidCount ? _self.paidCount : paidCount // ignore: cast_nullable_to_non_nullable
as int,cancelledCount: null == cancelledCount ? _self.cancelledCount : cancelledCount // ignore: cast_nullable_to_non_nullable
as int,recentNotifications: null == recentNotifications ? _self._recentNotifications : recentNotifications // ignore: cast_nullable_to_non_nullable
as List<NotificationSummary>,
  ));
}


}

// dart format on
