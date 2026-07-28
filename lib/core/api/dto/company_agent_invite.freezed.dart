// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_agent_invite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyAgentInvite {

 String get phone; RoleEnum get role; String? get prenom; String? get nom;
/// Create a copy of CompanyAgentInvite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyAgentInviteCopyWith<CompanyAgentInvite> get copyWith => _$CompanyAgentInviteCopyWithImpl<CompanyAgentInvite>(this as CompanyAgentInvite, _$identity);

  /// Serializes this CompanyAgentInvite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyAgentInvite&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,role,prenom,nom);

@override
String toString() {
  return 'CompanyAgentInvite(phone: $phone, role: $role, prenom: $prenom, nom: $nom)';
}


}

/// @nodoc
abstract mixin class $CompanyAgentInviteCopyWith<$Res>  {
  factory $CompanyAgentInviteCopyWith(CompanyAgentInvite value, $Res Function(CompanyAgentInvite) _then) = _$CompanyAgentInviteCopyWithImpl;
@useResult
$Res call({
 String phone, RoleEnum role, String? prenom, String? nom
});




}
/// @nodoc
class _$CompanyAgentInviteCopyWithImpl<$Res>
    implements $CompanyAgentInviteCopyWith<$Res> {
  _$CompanyAgentInviteCopyWithImpl(this._self, this._then);

  final CompanyAgentInvite _self;
  final $Res Function(CompanyAgentInvite) _then;

/// Create a copy of CompanyAgentInvite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? role = null,Object? prenom = freezed,Object? nom = freezed,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleEnum,prenom: freezed == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyAgentInvite].
extension CompanyAgentInvitePatterns on CompanyAgentInvite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyAgentInvite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyAgentInvite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyAgentInvite value)  $default,){
final _that = this;
switch (_that) {
case _CompanyAgentInvite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyAgentInvite value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyAgentInvite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  RoleEnum role,  String? prenom,  String? nom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyAgentInvite() when $default != null:
return $default(_that.phone,_that.role,_that.prenom,_that.nom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  RoleEnum role,  String? prenom,  String? nom)  $default,) {final _that = this;
switch (_that) {
case _CompanyAgentInvite():
return $default(_that.phone,_that.role,_that.prenom,_that.nom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  RoleEnum role,  String? prenom,  String? nom)?  $default,) {final _that = this;
switch (_that) {
case _CompanyAgentInvite() when $default != null:
return $default(_that.phone,_that.role,_that.prenom,_that.nom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyAgentInvite implements CompanyAgentInvite {
  const _CompanyAgentInvite({required this.phone, required this.role, this.prenom, this.nom});
  factory _CompanyAgentInvite.fromJson(Map<String, dynamic> json) => _$CompanyAgentInviteFromJson(json);

@override final  String phone;
@override final  RoleEnum role;
@override final  String? prenom;
@override final  String? nom;

/// Create a copy of CompanyAgentInvite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyAgentInviteCopyWith<_CompanyAgentInvite> get copyWith => __$CompanyAgentInviteCopyWithImpl<_CompanyAgentInvite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyAgentInviteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyAgentInvite&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,role,prenom,nom);

@override
String toString() {
  return 'CompanyAgentInvite(phone: $phone, role: $role, prenom: $prenom, nom: $nom)';
}


}

/// @nodoc
abstract mixin class _$CompanyAgentInviteCopyWith<$Res> implements $CompanyAgentInviteCopyWith<$Res> {
  factory _$CompanyAgentInviteCopyWith(_CompanyAgentInvite value, $Res Function(_CompanyAgentInvite) _then) = __$CompanyAgentInviteCopyWithImpl;
@override @useResult
$Res call({
 String phone, RoleEnum role, String? prenom, String? nom
});




}
/// @nodoc
class __$CompanyAgentInviteCopyWithImpl<$Res>
    implements _$CompanyAgentInviteCopyWith<$Res> {
  __$CompanyAgentInviteCopyWithImpl(this._self, this._then);

  final _CompanyAgentInvite _self;
  final $Res Function(_CompanyAgentInvite) _then;

/// Create a copy of CompanyAgentInvite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? role = null,Object? prenom = freezed,Object? nom = freezed,}) {
  return _then(_CompanyAgentInvite(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleEnum,prenom: freezed == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
