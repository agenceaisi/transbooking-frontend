// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PassengerDetails {

 String get firstName; String get lastName;/// Numéro local à 8 chiffres (sans l'indicatif +226).
 String get localPhone;
/// Create a copy of PassengerDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerDetailsCopyWith<PassengerDetails> get copyWith => _$PassengerDetailsCopyWithImpl<PassengerDetails>(this as PassengerDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerDetails&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.localPhone, localPhone) || other.localPhone == localPhone));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,localPhone);

@override
String toString() {
  return 'PassengerDetails(firstName: $firstName, lastName: $lastName, localPhone: $localPhone)';
}


}

/// @nodoc
abstract mixin class $PassengerDetailsCopyWith<$Res>  {
  factory $PassengerDetailsCopyWith(PassengerDetails value, $Res Function(PassengerDetails) _then) = _$PassengerDetailsCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String localPhone
});




}
/// @nodoc
class _$PassengerDetailsCopyWithImpl<$Res>
    implements $PassengerDetailsCopyWith<$Res> {
  _$PassengerDetailsCopyWithImpl(this._self, this._then);

  final PassengerDetails _self;
  final $Res Function(PassengerDetails) _then;

/// Create a copy of PassengerDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? localPhone = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,localPhone: null == localPhone ? _self.localPhone : localPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerDetails].
extension PassengerDetailsPatterns on PassengerDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerDetails value)  $default,){
final _that = this;
switch (_that) {
case _PassengerDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String localPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerDetails() when $default != null:
return $default(_that.firstName,_that.lastName,_that.localPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String localPhone)  $default,) {final _that = this;
switch (_that) {
case _PassengerDetails():
return $default(_that.firstName,_that.lastName,_that.localPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String localPhone)?  $default,) {final _that = this;
switch (_that) {
case _PassengerDetails() when $default != null:
return $default(_that.firstName,_that.lastName,_that.localPhone);case _:
  return null;

}
}

}

/// @nodoc


class _PassengerDetails extends PassengerDetails {
  const _PassengerDetails({this.firstName = '', this.lastName = '', this.localPhone = ''}): super._();
  

@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
/// Numéro local à 8 chiffres (sans l'indicatif +226).
@override@JsonKey() final  String localPhone;

/// Create a copy of PassengerDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerDetailsCopyWith<_PassengerDetails> get copyWith => __$PassengerDetailsCopyWithImpl<_PassengerDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerDetails&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.localPhone, localPhone) || other.localPhone == localPhone));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,localPhone);

@override
String toString() {
  return 'PassengerDetails(firstName: $firstName, lastName: $lastName, localPhone: $localPhone)';
}


}

/// @nodoc
abstract mixin class _$PassengerDetailsCopyWith<$Res> implements $PassengerDetailsCopyWith<$Res> {
  factory _$PassengerDetailsCopyWith(_PassengerDetails value, $Res Function(_PassengerDetails) _then) = __$PassengerDetailsCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String localPhone
});




}
/// @nodoc
class __$PassengerDetailsCopyWithImpl<$Res>
    implements _$PassengerDetailsCopyWith<$Res> {
  __$PassengerDetailsCopyWithImpl(this._self, this._then);

  final _PassengerDetails _self;
  final $Res Function(_PassengerDetails) _then;

/// Create a copy of PassengerDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? localPhone = null,}) {
  return _then(_PassengerDetails(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,localPhone: null == localPhone ? _self.localPhone : localPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
