// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Logout {

 String get refresh;
/// Create a copy of Logout
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutCopyWith<Logout> get copyWith => _$LogoutCopyWithImpl<Logout>(this as Logout, _$identity);

  /// Serializes this Logout to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Logout&&(identical(other.refresh, refresh) || other.refresh == refresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refresh);

@override
String toString() {
  return 'Logout(refresh: $refresh)';
}


}

/// @nodoc
abstract mixin class $LogoutCopyWith<$Res>  {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) _then) = _$LogoutCopyWithImpl;
@useResult
$Res call({
 String refresh
});




}
/// @nodoc
class _$LogoutCopyWithImpl<$Res>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._self, this._then);

  final Logout _self;
  final $Res Function(Logout) _then;

/// Create a copy of Logout
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refresh = null,}) {
  return _then(_self.copyWith(
refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Logout].
extension LogoutPatterns on Logout {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Logout value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Logout() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Logout value)  $default,){
final _that = this;
switch (_that) {
case _Logout():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Logout value)?  $default,){
final _that = this;
switch (_that) {
case _Logout() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String refresh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Logout() when $default != null:
return $default(_that.refresh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String refresh)  $default,) {final _that = this;
switch (_that) {
case _Logout():
return $default(_that.refresh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String refresh)?  $default,) {final _that = this;
switch (_that) {
case _Logout() when $default != null:
return $default(_that.refresh);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Logout implements Logout {
  const _Logout({required this.refresh});
  factory _Logout.fromJson(Map<String, dynamic> json) => _$LogoutFromJson(json);

@override final  String refresh;

/// Create a copy of Logout
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutCopyWith<_Logout> get copyWith => __$LogoutCopyWithImpl<_Logout>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogoutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout&&(identical(other.refresh, refresh) || other.refresh == refresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refresh);

@override
String toString() {
  return 'Logout(refresh: $refresh)';
}


}

/// @nodoc
abstract mixin class _$LogoutCopyWith<$Res> implements $LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) _then) = __$LogoutCopyWithImpl;
@override @useResult
$Res call({
 String refresh
});




}
/// @nodoc
class __$LogoutCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(this._self, this._then);

  final _Logout _self;
  final $Res Function(_Logout) _then;

/// Create a copy of Logout
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refresh = null,}) {
  return _then(_Logout(
refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
