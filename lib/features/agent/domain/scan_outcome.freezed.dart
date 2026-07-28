// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScanOutcome {

 ScanOutcomeKind get kind; String get ticketNumber; String? get passengerName; String? get seatNumber;/// Trajet, complété depuis le cache local (`CachedTrips`) quand le
/// billet scanné y figure — la réponse du scan ne le porte pas. Le
/// voyage est toujours celui du jour (paquet matinal, cf. `AgentTrip`),
/// aucune date distincte n'est donc affichée.
 String? get tripLabel;/// Horaire de l'embarquement précédent, pour le message « déjà utilisé ».
 String? get boardedAtLabel; DateTime get scannedAt;
/// Create a copy of ScanOutcome
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanOutcomeCopyWith<ScanOutcome> get copyWith => _$ScanOutcomeCopyWithImpl<ScanOutcome>(this as ScanOutcome, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanOutcome&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.tripLabel, tripLabel) || other.tripLabel == tripLabel)&&(identical(other.boardedAtLabel, boardedAtLabel) || other.boardedAtLabel == boardedAtLabel)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}


@override
int get hashCode => Object.hash(runtimeType,kind,ticketNumber,passengerName,seatNumber,tripLabel,boardedAtLabel,scannedAt);

@override
String toString() {
  return 'ScanOutcome(kind: $kind, ticketNumber: $ticketNumber, passengerName: $passengerName, seatNumber: $seatNumber, tripLabel: $tripLabel, boardedAtLabel: $boardedAtLabel, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class $ScanOutcomeCopyWith<$Res>  {
  factory $ScanOutcomeCopyWith(ScanOutcome value, $Res Function(ScanOutcome) _then) = _$ScanOutcomeCopyWithImpl;
@useResult
$Res call({
 ScanOutcomeKind kind, String ticketNumber, String? passengerName, String? seatNumber, String? tripLabel, String? boardedAtLabel, DateTime scannedAt
});




}
/// @nodoc
class _$ScanOutcomeCopyWithImpl<$Res>
    implements $ScanOutcomeCopyWith<$Res> {
  _$ScanOutcomeCopyWithImpl(this._self, this._then);

  final ScanOutcome _self;
  final $Res Function(ScanOutcome) _then;

/// Create a copy of ScanOutcome
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? ticketNumber = null,Object? passengerName = freezed,Object? seatNumber = freezed,Object? tripLabel = freezed,Object? boardedAtLabel = freezed,Object? scannedAt = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ScanOutcomeKind,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: freezed == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,tripLabel: freezed == tripLabel ? _self.tripLabel : tripLabel // ignore: cast_nullable_to_non_nullable
as String?,boardedAtLabel: freezed == boardedAtLabel ? _self.boardedAtLabel : boardedAtLabel // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: null == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ScanOutcome].
extension ScanOutcomePatterns on ScanOutcome {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScanOutcome value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScanOutcome() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScanOutcome value)  $default,){
final _that = this;
switch (_that) {
case _ScanOutcome():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScanOutcome value)?  $default,){
final _that = this;
switch (_that) {
case _ScanOutcome() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ScanOutcomeKind kind,  String ticketNumber,  String? passengerName,  String? seatNumber,  String? tripLabel,  String? boardedAtLabel,  DateTime scannedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScanOutcome() when $default != null:
return $default(_that.kind,_that.ticketNumber,_that.passengerName,_that.seatNumber,_that.tripLabel,_that.boardedAtLabel,_that.scannedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ScanOutcomeKind kind,  String ticketNumber,  String? passengerName,  String? seatNumber,  String? tripLabel,  String? boardedAtLabel,  DateTime scannedAt)  $default,) {final _that = this;
switch (_that) {
case _ScanOutcome():
return $default(_that.kind,_that.ticketNumber,_that.passengerName,_that.seatNumber,_that.tripLabel,_that.boardedAtLabel,_that.scannedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ScanOutcomeKind kind,  String ticketNumber,  String? passengerName,  String? seatNumber,  String? tripLabel,  String? boardedAtLabel,  DateTime scannedAt)?  $default,) {final _that = this;
switch (_that) {
case _ScanOutcome() when $default != null:
return $default(_that.kind,_that.ticketNumber,_that.passengerName,_that.seatNumber,_that.tripLabel,_that.boardedAtLabel,_that.scannedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ScanOutcome extends ScanOutcome {
  const _ScanOutcome({required this.kind, required this.ticketNumber, this.passengerName, this.seatNumber, this.tripLabel, this.boardedAtLabel, required this.scannedAt}): super._();
  

@override final  ScanOutcomeKind kind;
@override final  String ticketNumber;
@override final  String? passengerName;
@override final  String? seatNumber;
/// Trajet, complété depuis le cache local (`CachedTrips`) quand le
/// billet scanné y figure — la réponse du scan ne le porte pas. Le
/// voyage est toujours celui du jour (paquet matinal, cf. `AgentTrip`),
/// aucune date distincte n'est donc affichée.
@override final  String? tripLabel;
/// Horaire de l'embarquement précédent, pour le message « déjà utilisé ».
@override final  String? boardedAtLabel;
@override final  DateTime scannedAt;

/// Create a copy of ScanOutcome
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanOutcomeCopyWith<_ScanOutcome> get copyWith => __$ScanOutcomeCopyWithImpl<_ScanOutcome>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanOutcome&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.tripLabel, tripLabel) || other.tripLabel == tripLabel)&&(identical(other.boardedAtLabel, boardedAtLabel) || other.boardedAtLabel == boardedAtLabel)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}


@override
int get hashCode => Object.hash(runtimeType,kind,ticketNumber,passengerName,seatNumber,tripLabel,boardedAtLabel,scannedAt);

@override
String toString() {
  return 'ScanOutcome(kind: $kind, ticketNumber: $ticketNumber, passengerName: $passengerName, seatNumber: $seatNumber, tripLabel: $tripLabel, boardedAtLabel: $boardedAtLabel, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class _$ScanOutcomeCopyWith<$Res> implements $ScanOutcomeCopyWith<$Res> {
  factory _$ScanOutcomeCopyWith(_ScanOutcome value, $Res Function(_ScanOutcome) _then) = __$ScanOutcomeCopyWithImpl;
@override @useResult
$Res call({
 ScanOutcomeKind kind, String ticketNumber, String? passengerName, String? seatNumber, String? tripLabel, String? boardedAtLabel, DateTime scannedAt
});




}
/// @nodoc
class __$ScanOutcomeCopyWithImpl<$Res>
    implements _$ScanOutcomeCopyWith<$Res> {
  __$ScanOutcomeCopyWithImpl(this._self, this._then);

  final _ScanOutcome _self;
  final $Res Function(_ScanOutcome) _then;

/// Create a copy of ScanOutcome
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? ticketNumber = null,Object? passengerName = freezed,Object? seatNumber = freezed,Object? tripLabel = freezed,Object? boardedAtLabel = freezed,Object? scannedAt = null,}) {
  return _then(_ScanOutcome(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ScanOutcomeKind,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: freezed == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,tripLabel: freezed == tripLabel ? _self.tripLabel : tripLabel // ignore: cast_nullable_to_non_nullable
as String?,boardedAtLabel: freezed == boardedAtLabel ? _self.boardedAtLabel : boardedAtLabel // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: null == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
