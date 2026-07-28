// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRegistration {

 String get prenom; String get nom; String get phone; String get password; String? get email;
/// Create a copy of UserRegistration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRegistrationCopyWith<UserRegistration> get copyWith => _$UserRegistrationCopyWithImpl<UserRegistration>(this as UserRegistration, _$identity);

  /// Serializes this UserRegistration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegistration&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prenom,nom,phone,password,email);

@override
String toString() {
  return 'UserRegistration(prenom: $prenom, nom: $nom, phone: $phone, password: $password, email: $email)';
}


}

/// @nodoc
abstract mixin class $UserRegistrationCopyWith<$Res>  {
  factory $UserRegistrationCopyWith(UserRegistration value, $Res Function(UserRegistration) _then) = _$UserRegistrationCopyWithImpl;
@useResult
$Res call({
 String prenom, String nom, String phone, String password, String? email
});




}
/// @nodoc
class _$UserRegistrationCopyWithImpl<$Res>
    implements $UserRegistrationCopyWith<$Res> {
  _$UserRegistrationCopyWithImpl(this._self, this._then);

  final UserRegistration _self;
  final $Res Function(UserRegistration) _then;

/// Create a copy of UserRegistration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prenom = null,Object? nom = null,Object? phone = null,Object? password = null,Object? email = freezed,}) {
  return _then(_self.copyWith(
prenom: null == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRegistration].
extension UserRegistrationPatterns on UserRegistration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRegistration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRegistration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRegistration value)  $default,){
final _that = this;
switch (_that) {
case _UserRegistration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRegistration value)?  $default,){
final _that = this;
switch (_that) {
case _UserRegistration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String prenom,  String nom,  String phone,  String password,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRegistration() when $default != null:
return $default(_that.prenom,_that.nom,_that.phone,_that.password,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String prenom,  String nom,  String phone,  String password,  String? email)  $default,) {final _that = this;
switch (_that) {
case _UserRegistration():
return $default(_that.prenom,_that.nom,_that.phone,_that.password,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String prenom,  String nom,  String phone,  String password,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _UserRegistration() when $default != null:
return $default(_that.prenom,_that.nom,_that.phone,_that.password,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRegistration implements UserRegistration {
  const _UserRegistration({required this.prenom, required this.nom, required this.phone, required this.password, this.email});
  factory _UserRegistration.fromJson(Map<String, dynamic> json) => _$UserRegistrationFromJson(json);

@override final  String prenom;
@override final  String nom;
@override final  String phone;
@override final  String password;
@override final  String? email;

/// Create a copy of UserRegistration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRegistrationCopyWith<_UserRegistration> get copyWith => __$UserRegistrationCopyWithImpl<_UserRegistration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRegistrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRegistration&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prenom,nom,phone,password,email);

@override
String toString() {
  return 'UserRegistration(prenom: $prenom, nom: $nom, phone: $phone, password: $password, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UserRegistrationCopyWith<$Res> implements $UserRegistrationCopyWith<$Res> {
  factory _$UserRegistrationCopyWith(_UserRegistration value, $Res Function(_UserRegistration) _then) = __$UserRegistrationCopyWithImpl;
@override @useResult
$Res call({
 String prenom, String nom, String phone, String password, String? email
});




}
/// @nodoc
class __$UserRegistrationCopyWithImpl<$Res>
    implements _$UserRegistrationCopyWith<$Res> {
  __$UserRegistrationCopyWithImpl(this._self, this._then);

  final _UserRegistration _self;
  final $Res Function(_UserRegistration) _then;

/// Create a copy of UserRegistration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prenom = null,Object? nom = null,Object? phone = null,Object? password = null,Object? email = freezed,}) {
  return _then(_UserRegistration(
prenom: null == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
