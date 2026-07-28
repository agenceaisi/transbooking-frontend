// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boarding_roster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BoardingRoster {

 int get tripId; List<BoardingPassenger> get passengers;/// Capacité du véhicule, déduite de `trip.availableSeats + inscrits` au
/// moment du chargement — `null` si le voyage vient du cache hors ligne
/// (pas de tarif ni de places restantes fiables, cf. `AgentTrip.price`).
 int? get totalSeats;/// Renseigné uniquement si la liste vient du cache local.
 DateTime? get cachedAt; bool get validated; DateTime? get validatedAt;
/// Create a copy of BoardingRoster
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardingRosterCopyWith<BoardingRoster> get copyWith => _$BoardingRosterCopyWithImpl<BoardingRoster>(this as BoardingRoster, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardingRoster&&(identical(other.tripId, tripId) || other.tripId == tripId)&&const DeepCollectionEquality().equals(other.passengers, passengers)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.cachedAt, cachedAt) || other.cachedAt == cachedAt)&&(identical(other.validated, validated) || other.validated == validated)&&(identical(other.validatedAt, validatedAt) || other.validatedAt == validatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,tripId,const DeepCollectionEquality().hash(passengers),totalSeats,cachedAt,validated,validatedAt);

@override
String toString() {
  return 'BoardingRoster(tripId: $tripId, passengers: $passengers, totalSeats: $totalSeats, cachedAt: $cachedAt, validated: $validated, validatedAt: $validatedAt)';
}


}

/// @nodoc
abstract mixin class $BoardingRosterCopyWith<$Res>  {
  factory $BoardingRosterCopyWith(BoardingRoster value, $Res Function(BoardingRoster) _then) = _$BoardingRosterCopyWithImpl;
@useResult
$Res call({
 int tripId, List<BoardingPassenger> passengers, int? totalSeats, DateTime? cachedAt, bool validated, DateTime? validatedAt
});




}
/// @nodoc
class _$BoardingRosterCopyWithImpl<$Res>
    implements $BoardingRosterCopyWith<$Res> {
  _$BoardingRosterCopyWithImpl(this._self, this._then);

  final BoardingRoster _self;
  final $Res Function(BoardingRoster) _then;

/// Create a copy of BoardingRoster
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripId = null,Object? passengers = null,Object? totalSeats = freezed,Object? cachedAt = freezed,Object? validated = null,Object? validatedAt = freezed,}) {
  return _then(_self.copyWith(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<BoardingPassenger>,totalSeats: freezed == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int?,cachedAt: freezed == cachedAt ? _self.cachedAt : cachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,validated: null == validated ? _self.validated : validated // ignore: cast_nullable_to_non_nullable
as bool,validatedAt: freezed == validatedAt ? _self.validatedAt : validatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BoardingRoster].
extension BoardingRosterPatterns on BoardingRoster {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoardingRoster value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoardingRoster() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoardingRoster value)  $default,){
final _that = this;
switch (_that) {
case _BoardingRoster():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoardingRoster value)?  $default,){
final _that = this;
switch (_that) {
case _BoardingRoster() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int tripId,  List<BoardingPassenger> passengers,  int? totalSeats,  DateTime? cachedAt,  bool validated,  DateTime? validatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoardingRoster() when $default != null:
return $default(_that.tripId,_that.passengers,_that.totalSeats,_that.cachedAt,_that.validated,_that.validatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int tripId,  List<BoardingPassenger> passengers,  int? totalSeats,  DateTime? cachedAt,  bool validated,  DateTime? validatedAt)  $default,) {final _that = this;
switch (_that) {
case _BoardingRoster():
return $default(_that.tripId,_that.passengers,_that.totalSeats,_that.cachedAt,_that.validated,_that.validatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int tripId,  List<BoardingPassenger> passengers,  int? totalSeats,  DateTime? cachedAt,  bool validated,  DateTime? validatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BoardingRoster() when $default != null:
return $default(_that.tripId,_that.passengers,_that.totalSeats,_that.cachedAt,_that.validated,_that.validatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _BoardingRoster extends BoardingRoster {
  const _BoardingRoster({required this.tripId, required final  List<BoardingPassenger> passengers, this.totalSeats, this.cachedAt, required this.validated, this.validatedAt}): _passengers = passengers,super._();
  

@override final  int tripId;
 final  List<BoardingPassenger> _passengers;
@override List<BoardingPassenger> get passengers {
  if (_passengers is EqualUnmodifiableListView) return _passengers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_passengers);
}

/// Capacité du véhicule, déduite de `trip.availableSeats + inscrits` au
/// moment du chargement — `null` si le voyage vient du cache hors ligne
/// (pas de tarif ni de places restantes fiables, cf. `AgentTrip.price`).
@override final  int? totalSeats;
/// Renseigné uniquement si la liste vient du cache local.
@override final  DateTime? cachedAt;
@override final  bool validated;
@override final  DateTime? validatedAt;

/// Create a copy of BoardingRoster
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoardingRosterCopyWith<_BoardingRoster> get copyWith => __$BoardingRosterCopyWithImpl<_BoardingRoster>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoardingRoster&&(identical(other.tripId, tripId) || other.tripId == tripId)&&const DeepCollectionEquality().equals(other._passengers, _passengers)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.cachedAt, cachedAt) || other.cachedAt == cachedAt)&&(identical(other.validated, validated) || other.validated == validated)&&(identical(other.validatedAt, validatedAt) || other.validatedAt == validatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,tripId,const DeepCollectionEquality().hash(_passengers),totalSeats,cachedAt,validated,validatedAt);

@override
String toString() {
  return 'BoardingRoster(tripId: $tripId, passengers: $passengers, totalSeats: $totalSeats, cachedAt: $cachedAt, validated: $validated, validatedAt: $validatedAt)';
}


}

/// @nodoc
abstract mixin class _$BoardingRosterCopyWith<$Res> implements $BoardingRosterCopyWith<$Res> {
  factory _$BoardingRosterCopyWith(_BoardingRoster value, $Res Function(_BoardingRoster) _then) = __$BoardingRosterCopyWithImpl;
@override @useResult
$Res call({
 int tripId, List<BoardingPassenger> passengers, int? totalSeats, DateTime? cachedAt, bool validated, DateTime? validatedAt
});




}
/// @nodoc
class __$BoardingRosterCopyWithImpl<$Res>
    implements _$BoardingRosterCopyWith<$Res> {
  __$BoardingRosterCopyWithImpl(this._self, this._then);

  final _BoardingRoster _self;
  final $Res Function(_BoardingRoster) _then;

/// Create a copy of BoardingRoster
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripId = null,Object? passengers = null,Object? totalSeats = freezed,Object? cachedAt = freezed,Object? validated = null,Object? validatedAt = freezed,}) {
  return _then(_BoardingRoster(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,passengers: null == passengers ? _self._passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<BoardingPassenger>,totalSeats: freezed == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int?,cachedAt: freezed == cachedAt ? _self.cachedAt : cachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,validated: null == validated ? _self.validated : validated // ignore: cast_nullable_to_non_nullable
as bool,validatedAt: freezed == validatedAt ? _self.validatedAt : validatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
