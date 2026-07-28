// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingCreate {

 int get trip;@JsonKey(name: 'seat_number') String? get seatNumber;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName; String? get phone;
/// Create a copy of BookingCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingCreateCopyWith<BookingCreate> get copyWith => _$BookingCreateCopyWithImpl<BookingCreate>(this as BookingCreate, _$identity);

  /// Serializes this BookingCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingCreate&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,seatNumber,firstName,lastName,phone);

@override
String toString() {
  return 'BookingCreate(trip: $trip, seatNumber: $seatNumber, firstName: $firstName, lastName: $lastName, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $BookingCreateCopyWith<$Res>  {
  factory $BookingCreateCopyWith(BookingCreate value, $Res Function(BookingCreate) _then) = _$BookingCreateCopyWithImpl;
@useResult
$Res call({
 int trip,@JsonKey(name: 'seat_number') String? seatNumber,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? phone
});




}
/// @nodoc
class _$BookingCreateCopyWithImpl<$Res>
    implements $BookingCreateCopyWith<$Res> {
  _$BookingCreateCopyWithImpl(this._self, this._then);

  final BookingCreate _self;
  final $Res Function(BookingCreate) _then;

/// Create a copy of BookingCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trip = null,Object? seatNumber = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingCreate].
extension BookingCreatePatterns on BookingCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingCreate value)  $default,){
final _that = this;
switch (_that) {
case _BookingCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingCreate value)?  $default,){
final _that = this;
switch (_that) {
case _BookingCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int trip, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingCreate() when $default != null:
return $default(_that.trip,_that.seatNumber,_that.firstName,_that.lastName,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int trip, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _BookingCreate():
return $default(_that.trip,_that.seatNumber,_that.firstName,_that.lastName,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int trip, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _BookingCreate() when $default != null:
return $default(_that.trip,_that.seatNumber,_that.firstName,_that.lastName,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingCreate implements BookingCreate {
  const _BookingCreate({required this.trip, @JsonKey(name: 'seat_number') this.seatNumber, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, this.phone});
  factory _BookingCreate.fromJson(Map<String, dynamic> json) => _$BookingCreateFromJson(json);

@override final  int trip;
@override@JsonKey(name: 'seat_number') final  String? seatNumber;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? phone;

/// Create a copy of BookingCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingCreateCopyWith<_BookingCreate> get copyWith => __$BookingCreateCopyWithImpl<_BookingCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingCreate&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,seatNumber,firstName,lastName,phone);

@override
String toString() {
  return 'BookingCreate(trip: $trip, seatNumber: $seatNumber, firstName: $firstName, lastName: $lastName, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$BookingCreateCopyWith<$Res> implements $BookingCreateCopyWith<$Res> {
  factory _$BookingCreateCopyWith(_BookingCreate value, $Res Function(_BookingCreate) _then) = __$BookingCreateCopyWithImpl;
@override @useResult
$Res call({
 int trip,@JsonKey(name: 'seat_number') String? seatNumber,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? phone
});




}
/// @nodoc
class __$BookingCreateCopyWithImpl<$Res>
    implements _$BookingCreateCopyWith<$Res> {
  __$BookingCreateCopyWithImpl(this._self, this._then);

  final _BookingCreate _self;
  final $Res Function(_BookingCreate) _then;

/// Create a copy of BookingCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trip = null,Object? seatNumber = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,}) {
  return _then(_BookingCreate(
trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
