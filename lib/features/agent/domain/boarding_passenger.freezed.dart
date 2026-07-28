// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boarding_passenger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BoardingPassenger {

 String get ticketNumber; String get fullName; String? get phone; String? get seatNumber;/// Réservation au statut `paid` — seul un billet payé peut embarquer
/// (guide §6.7 : `boarding/{id}` exige `paid`).
 bool get isPaid; bool get isBoarded;/// Embarquement confirmé hors ligne, en attente de synchronisation.
 bool get boardedOffline;
/// Create a copy of BoardingPassenger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardingPassengerCopyWith<BoardingPassenger> get copyWith => _$BoardingPassengerCopyWithImpl<BoardingPassenger>(this as BoardingPassenger, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardingPassenger&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.isBoarded, isBoarded) || other.isBoarded == isBoarded)&&(identical(other.boardedOffline, boardedOffline) || other.boardedOffline == boardedOffline));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,fullName,phone,seatNumber,isPaid,isBoarded,boardedOffline);

@override
String toString() {
  return 'BoardingPassenger(ticketNumber: $ticketNumber, fullName: $fullName, phone: $phone, seatNumber: $seatNumber, isPaid: $isPaid, isBoarded: $isBoarded, boardedOffline: $boardedOffline)';
}


}

/// @nodoc
abstract mixin class $BoardingPassengerCopyWith<$Res>  {
  factory $BoardingPassengerCopyWith(BoardingPassenger value, $Res Function(BoardingPassenger) _then) = _$BoardingPassengerCopyWithImpl;
@useResult
$Res call({
 String ticketNumber, String fullName, String? phone, String? seatNumber, bool isPaid, bool isBoarded, bool boardedOffline
});




}
/// @nodoc
class _$BoardingPassengerCopyWithImpl<$Res>
    implements $BoardingPassengerCopyWith<$Res> {
  _$BoardingPassengerCopyWithImpl(this._self, this._then);

  final BoardingPassenger _self;
  final $Res Function(BoardingPassenger) _then;

/// Create a copy of BoardingPassenger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? fullName = null,Object? phone = freezed,Object? seatNumber = freezed,Object? isPaid = null,Object? isBoarded = null,Object? boardedOffline = null,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,isBoarded: null == isBoarded ? _self.isBoarded : isBoarded // ignore: cast_nullable_to_non_nullable
as bool,boardedOffline: null == boardedOffline ? _self.boardedOffline : boardedOffline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BoardingPassenger].
extension BoardingPassengerPatterns on BoardingPassenger {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoardingPassenger value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoardingPassenger() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoardingPassenger value)  $default,){
final _that = this;
switch (_that) {
case _BoardingPassenger():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoardingPassenger value)?  $default,){
final _that = this;
switch (_that) {
case _BoardingPassenger() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticketNumber,  String fullName,  String? phone,  String? seatNumber,  bool isPaid,  bool isBoarded,  bool boardedOffline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoardingPassenger() when $default != null:
return $default(_that.ticketNumber,_that.fullName,_that.phone,_that.seatNumber,_that.isPaid,_that.isBoarded,_that.boardedOffline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticketNumber,  String fullName,  String? phone,  String? seatNumber,  bool isPaid,  bool isBoarded,  bool boardedOffline)  $default,) {final _that = this;
switch (_that) {
case _BoardingPassenger():
return $default(_that.ticketNumber,_that.fullName,_that.phone,_that.seatNumber,_that.isPaid,_that.isBoarded,_that.boardedOffline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticketNumber,  String fullName,  String? phone,  String? seatNumber,  bool isPaid,  bool isBoarded,  bool boardedOffline)?  $default,) {final _that = this;
switch (_that) {
case _BoardingPassenger() when $default != null:
return $default(_that.ticketNumber,_that.fullName,_that.phone,_that.seatNumber,_that.isPaid,_that.isBoarded,_that.boardedOffline);case _:
  return null;

}
}

}

/// @nodoc


class _BoardingPassenger extends BoardingPassenger {
  const _BoardingPassenger({required this.ticketNumber, required this.fullName, this.phone, this.seatNumber, required this.isPaid, required this.isBoarded, required this.boardedOffline}): super._();
  

@override final  String ticketNumber;
@override final  String fullName;
@override final  String? phone;
@override final  String? seatNumber;
/// Réservation au statut `paid` — seul un billet payé peut embarquer
/// (guide §6.7 : `boarding/{id}` exige `paid`).
@override final  bool isPaid;
@override final  bool isBoarded;
/// Embarquement confirmé hors ligne, en attente de synchronisation.
@override final  bool boardedOffline;

/// Create a copy of BoardingPassenger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoardingPassengerCopyWith<_BoardingPassenger> get copyWith => __$BoardingPassengerCopyWithImpl<_BoardingPassenger>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoardingPassenger&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.isBoarded, isBoarded) || other.isBoarded == isBoarded)&&(identical(other.boardedOffline, boardedOffline) || other.boardedOffline == boardedOffline));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,fullName,phone,seatNumber,isPaid,isBoarded,boardedOffline);

@override
String toString() {
  return 'BoardingPassenger(ticketNumber: $ticketNumber, fullName: $fullName, phone: $phone, seatNumber: $seatNumber, isPaid: $isPaid, isBoarded: $isBoarded, boardedOffline: $boardedOffline)';
}


}

/// @nodoc
abstract mixin class _$BoardingPassengerCopyWith<$Res> implements $BoardingPassengerCopyWith<$Res> {
  factory _$BoardingPassengerCopyWith(_BoardingPassenger value, $Res Function(_BoardingPassenger) _then) = __$BoardingPassengerCopyWithImpl;
@override @useResult
$Res call({
 String ticketNumber, String fullName, String? phone, String? seatNumber, bool isPaid, bool isBoarded, bool boardedOffline
});




}
/// @nodoc
class __$BoardingPassengerCopyWithImpl<$Res>
    implements _$BoardingPassengerCopyWith<$Res> {
  __$BoardingPassengerCopyWithImpl(this._self, this._then);

  final _BoardingPassenger _self;
  final $Res Function(_BoardingPassenger) _then;

/// Create a copy of BoardingPassenger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? fullName = null,Object? phone = freezed,Object? seatNumber = freezed,Object? isPaid = null,Object? isBoarded = null,Object? boardedOffline = null,}) {
  return _then(_BoardingPassenger(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,isBoarded: null == isBoarded ? _self.isBoarded : isBoarded // ignore: cast_nullable_to_non_nullable
as bool,boardedOffline: null == boardedOffline ? _self.boardedOffline : boardedOffline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
