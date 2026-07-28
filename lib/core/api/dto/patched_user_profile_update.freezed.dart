// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_user_profile_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedUserProfileUpdate {

 String? get phone; String? get email;
/// Create a copy of PatchedUserProfileUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedUserProfileUpdateCopyWith<PatchedUserProfileUpdate> get copyWith => _$PatchedUserProfileUpdateCopyWithImpl<PatchedUserProfileUpdate>(this as PatchedUserProfileUpdate, _$identity);

  /// Serializes this PatchedUserProfileUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedUserProfileUpdate&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,email);

@override
String toString() {
  return 'PatchedUserProfileUpdate(phone: $phone, email: $email)';
}


}

/// @nodoc
abstract mixin class $PatchedUserProfileUpdateCopyWith<$Res>  {
  factory $PatchedUserProfileUpdateCopyWith(PatchedUserProfileUpdate value, $Res Function(PatchedUserProfileUpdate) _then) = _$PatchedUserProfileUpdateCopyWithImpl;
@useResult
$Res call({
 String? phone, String? email
});




}
/// @nodoc
class _$PatchedUserProfileUpdateCopyWithImpl<$Res>
    implements $PatchedUserProfileUpdateCopyWith<$Res> {
  _$PatchedUserProfileUpdateCopyWithImpl(this._self, this._then);

  final PatchedUserProfileUpdate _self;
  final $Res Function(PatchedUserProfileUpdate) _then;

/// Create a copy of PatchedUserProfileUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedUserProfileUpdate].
extension PatchedUserProfileUpdatePatterns on PatchedUserProfileUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedUserProfileUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedUserProfileUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedUserProfileUpdate value)  $default,){
final _that = this;
switch (_that) {
case _PatchedUserProfileUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedUserProfileUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedUserProfileUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? phone,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedUserProfileUpdate() when $default != null:
return $default(_that.phone,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? phone,  String? email)  $default,) {final _that = this;
switch (_that) {
case _PatchedUserProfileUpdate():
return $default(_that.phone,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? phone,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _PatchedUserProfileUpdate() when $default != null:
return $default(_that.phone,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedUserProfileUpdate implements PatchedUserProfileUpdate {
  const _PatchedUserProfileUpdate({this.phone, this.email});
  factory _PatchedUserProfileUpdate.fromJson(Map<String, dynamic> json) => _$PatchedUserProfileUpdateFromJson(json);

@override final  String? phone;
@override final  String? email;

/// Create a copy of PatchedUserProfileUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedUserProfileUpdateCopyWith<_PatchedUserProfileUpdate> get copyWith => __$PatchedUserProfileUpdateCopyWithImpl<_PatchedUserProfileUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedUserProfileUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedUserProfileUpdate&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,email);

@override
String toString() {
  return 'PatchedUserProfileUpdate(phone: $phone, email: $email)';
}


}

/// @nodoc
abstract mixin class _$PatchedUserProfileUpdateCopyWith<$Res> implements $PatchedUserProfileUpdateCopyWith<$Res> {
  factory _$PatchedUserProfileUpdateCopyWith(_PatchedUserProfileUpdate value, $Res Function(_PatchedUserProfileUpdate) _then) = __$PatchedUserProfileUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? phone, String? email
});




}
/// @nodoc
class __$PatchedUserProfileUpdateCopyWithImpl<$Res>
    implements _$PatchedUserProfileUpdateCopyWith<$Res> {
  __$PatchedUserProfileUpdateCopyWithImpl(this._self, this._then);

  final _PatchedUserProfileUpdate _self;
  final $Res Function(_PatchedUserProfileUpdate) _then;

/// Create a copy of PatchedUserProfileUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? email = freezed,}) {
  return _then(_PatchedUserProfileUpdate(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
