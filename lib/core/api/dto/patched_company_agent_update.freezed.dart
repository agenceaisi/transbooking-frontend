// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_company_agent_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedCompanyAgentUpdate {

 String? get prenom; String? get nom; String? get email;@JsonKey(name: 'is_active') bool? get isActive; RoleEnum? get role; int? get station;
/// Create a copy of PatchedCompanyAgentUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedCompanyAgentUpdateCopyWith<PatchedCompanyAgentUpdate> get copyWith => _$PatchedCompanyAgentUpdateCopyWithImpl<PatchedCompanyAgentUpdate>(this as PatchedCompanyAgentUpdate, _$identity);

  /// Serializes this PatchedCompanyAgentUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedCompanyAgentUpdate&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.role, role) || other.role == role)&&(identical(other.station, station) || other.station == station));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prenom,nom,email,isActive,role,station);

@override
String toString() {
  return 'PatchedCompanyAgentUpdate(prenom: $prenom, nom: $nom, email: $email, isActive: $isActive, role: $role, station: $station)';
}


}

/// @nodoc
abstract mixin class $PatchedCompanyAgentUpdateCopyWith<$Res>  {
  factory $PatchedCompanyAgentUpdateCopyWith(PatchedCompanyAgentUpdate value, $Res Function(PatchedCompanyAgentUpdate) _then) = _$PatchedCompanyAgentUpdateCopyWithImpl;
@useResult
$Res call({
 String? prenom, String? nom, String? email,@JsonKey(name: 'is_active') bool? isActive, RoleEnum? role, int? station
});




}
/// @nodoc
class _$PatchedCompanyAgentUpdateCopyWithImpl<$Res>
    implements $PatchedCompanyAgentUpdateCopyWith<$Res> {
  _$PatchedCompanyAgentUpdateCopyWithImpl(this._self, this._then);

  final PatchedCompanyAgentUpdate _self;
  final $Res Function(PatchedCompanyAgentUpdate) _then;

/// Create a copy of PatchedCompanyAgentUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prenom = freezed,Object? nom = freezed,Object? email = freezed,Object? isActive = freezed,Object? role = freezed,Object? station = freezed,}) {
  return _then(_self.copyWith(
prenom: freezed == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleEnum?,station: freezed == station ? _self.station : station // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedCompanyAgentUpdate].
extension PatchedCompanyAgentUpdatePatterns on PatchedCompanyAgentUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedCompanyAgentUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedCompanyAgentUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedCompanyAgentUpdate value)  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyAgentUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedCompanyAgentUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyAgentUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? prenom,  String? nom,  String? email, @JsonKey(name: 'is_active')  bool? isActive,  RoleEnum? role,  int? station)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedCompanyAgentUpdate() when $default != null:
return $default(_that.prenom,_that.nom,_that.email,_that.isActive,_that.role,_that.station);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? prenom,  String? nom,  String? email, @JsonKey(name: 'is_active')  bool? isActive,  RoleEnum? role,  int? station)  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyAgentUpdate():
return $default(_that.prenom,_that.nom,_that.email,_that.isActive,_that.role,_that.station);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? prenom,  String? nom,  String? email, @JsonKey(name: 'is_active')  bool? isActive,  RoleEnum? role,  int? station)?  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyAgentUpdate() when $default != null:
return $default(_that.prenom,_that.nom,_that.email,_that.isActive,_that.role,_that.station);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedCompanyAgentUpdate implements PatchedCompanyAgentUpdate {
  const _PatchedCompanyAgentUpdate({this.prenom, this.nom, this.email, @JsonKey(name: 'is_active') this.isActive, this.role, this.station});
  factory _PatchedCompanyAgentUpdate.fromJson(Map<String, dynamic> json) => _$PatchedCompanyAgentUpdateFromJson(json);

@override final  String? prenom;
@override final  String? nom;
@override final  String? email;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override final  RoleEnum? role;
@override final  int? station;

/// Create a copy of PatchedCompanyAgentUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedCompanyAgentUpdateCopyWith<_PatchedCompanyAgentUpdate> get copyWith => __$PatchedCompanyAgentUpdateCopyWithImpl<_PatchedCompanyAgentUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedCompanyAgentUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedCompanyAgentUpdate&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.role, role) || other.role == role)&&(identical(other.station, station) || other.station == station));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prenom,nom,email,isActive,role,station);

@override
String toString() {
  return 'PatchedCompanyAgentUpdate(prenom: $prenom, nom: $nom, email: $email, isActive: $isActive, role: $role, station: $station)';
}


}

/// @nodoc
abstract mixin class _$PatchedCompanyAgentUpdateCopyWith<$Res> implements $PatchedCompanyAgentUpdateCopyWith<$Res> {
  factory _$PatchedCompanyAgentUpdateCopyWith(_PatchedCompanyAgentUpdate value, $Res Function(_PatchedCompanyAgentUpdate) _then) = __$PatchedCompanyAgentUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? prenom, String? nom, String? email,@JsonKey(name: 'is_active') bool? isActive, RoleEnum? role, int? station
});




}
/// @nodoc
class __$PatchedCompanyAgentUpdateCopyWithImpl<$Res>
    implements _$PatchedCompanyAgentUpdateCopyWith<$Res> {
  __$PatchedCompanyAgentUpdateCopyWithImpl(this._self, this._then);

  final _PatchedCompanyAgentUpdate _self;
  final $Res Function(_PatchedCompanyAgentUpdate) _then;

/// Create a copy of PatchedCompanyAgentUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prenom = freezed,Object? nom = freezed,Object? email = freezed,Object? isActive = freezed,Object? role = freezed,Object? station = freezed,}) {
  return _then(_PatchedCompanyAgentUpdate(
prenom: freezed == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleEnum?,station: freezed == station ? _self.station : station // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
