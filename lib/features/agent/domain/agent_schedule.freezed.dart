// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AgentScheduleSnapshot {

 List<AgentTrip> get trips;/// Renseigné uniquement si les données viennent du cache local (paquet
/// du matin, phase 5A) plutôt que du réseau.
 DateTime? get cachedAt;
/// Create a copy of AgentScheduleSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentScheduleSnapshotCopyWith<AgentScheduleSnapshot> get copyWith => _$AgentScheduleSnapshotCopyWithImpl<AgentScheduleSnapshot>(this as AgentScheduleSnapshot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentScheduleSnapshot&&const DeepCollectionEquality().equals(other.trips, trips)&&(identical(other.cachedAt, cachedAt) || other.cachedAt == cachedAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(trips),cachedAt);

@override
String toString() {
  return 'AgentScheduleSnapshot(trips: $trips, cachedAt: $cachedAt)';
}


}

/// @nodoc
abstract mixin class $AgentScheduleSnapshotCopyWith<$Res>  {
  factory $AgentScheduleSnapshotCopyWith(AgentScheduleSnapshot value, $Res Function(AgentScheduleSnapshot) _then) = _$AgentScheduleSnapshotCopyWithImpl;
@useResult
$Res call({
 List<AgentTrip> trips, DateTime? cachedAt
});




}
/// @nodoc
class _$AgentScheduleSnapshotCopyWithImpl<$Res>
    implements $AgentScheduleSnapshotCopyWith<$Res> {
  _$AgentScheduleSnapshotCopyWithImpl(this._self, this._then);

  final AgentScheduleSnapshot _self;
  final $Res Function(AgentScheduleSnapshot) _then;

/// Create a copy of AgentScheduleSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trips = null,Object? cachedAt = freezed,}) {
  return _then(_self.copyWith(
trips: null == trips ? _self.trips : trips // ignore: cast_nullable_to_non_nullable
as List<AgentTrip>,cachedAt: freezed == cachedAt ? _self.cachedAt : cachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentScheduleSnapshot].
extension AgentScheduleSnapshotPatterns on AgentScheduleSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentScheduleSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentScheduleSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentScheduleSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _AgentScheduleSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentScheduleSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _AgentScheduleSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AgentTrip> trips,  DateTime? cachedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentScheduleSnapshot() when $default != null:
return $default(_that.trips,_that.cachedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AgentTrip> trips,  DateTime? cachedAt)  $default,) {final _that = this;
switch (_that) {
case _AgentScheduleSnapshot():
return $default(_that.trips,_that.cachedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AgentTrip> trips,  DateTime? cachedAt)?  $default,) {final _that = this;
switch (_that) {
case _AgentScheduleSnapshot() when $default != null:
return $default(_that.trips,_that.cachedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AgentScheduleSnapshot extends AgentScheduleSnapshot {
  const _AgentScheduleSnapshot({required final  List<AgentTrip> trips, this.cachedAt}): _trips = trips,super._();
  

 final  List<AgentTrip> _trips;
@override List<AgentTrip> get trips {
  if (_trips is EqualUnmodifiableListView) return _trips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trips);
}

/// Renseigné uniquement si les données viennent du cache local (paquet
/// du matin, phase 5A) plutôt que du réseau.
@override final  DateTime? cachedAt;

/// Create a copy of AgentScheduleSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentScheduleSnapshotCopyWith<_AgentScheduleSnapshot> get copyWith => __$AgentScheduleSnapshotCopyWithImpl<_AgentScheduleSnapshot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentScheduleSnapshot&&const DeepCollectionEquality().equals(other._trips, _trips)&&(identical(other.cachedAt, cachedAt) || other.cachedAt == cachedAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trips),cachedAt);

@override
String toString() {
  return 'AgentScheduleSnapshot(trips: $trips, cachedAt: $cachedAt)';
}


}

/// @nodoc
abstract mixin class _$AgentScheduleSnapshotCopyWith<$Res> implements $AgentScheduleSnapshotCopyWith<$Res> {
  factory _$AgentScheduleSnapshotCopyWith(_AgentScheduleSnapshot value, $Res Function(_AgentScheduleSnapshot) _then) = __$AgentScheduleSnapshotCopyWithImpl;
@override @useResult
$Res call({
 List<AgentTrip> trips, DateTime? cachedAt
});




}
/// @nodoc
class __$AgentScheduleSnapshotCopyWithImpl<$Res>
    implements _$AgentScheduleSnapshotCopyWith<$Res> {
  __$AgentScheduleSnapshotCopyWithImpl(this._self, this._then);

  final _AgentScheduleSnapshot _self;
  final $Res Function(_AgentScheduleSnapshot) _then;

/// Create a copy of AgentScheduleSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trips = null,Object? cachedAt = freezed,}) {
  return _then(_AgentScheduleSnapshot(
trips: null == trips ? _self._trips : trips // ignore: cast_nullable_to_non_nullable
as List<AgentTrip>,cachedAt: freezed == cachedAt ? _self.cachedAt : cachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
