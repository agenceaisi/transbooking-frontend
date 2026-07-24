// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityRef {

 int get id; String get name; String? get region;
/// Create a copy of CityRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityRefCopyWith<CityRef> get copyWith => _$CityRefCopyWithImpl<CityRef>(this as CityRef, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,region);

@override
String toString() {
  return 'CityRef(id: $id, name: $name, region: $region)';
}


}

/// @nodoc
abstract mixin class $CityRefCopyWith<$Res>  {
  factory $CityRefCopyWith(CityRef value, $Res Function(CityRef) _then) = _$CityRefCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? region
});




}
/// @nodoc
class _$CityRefCopyWithImpl<$Res>
    implements $CityRefCopyWith<$Res> {
  _$CityRefCopyWithImpl(this._self, this._then);

  final CityRef _self;
  final $Res Function(CityRef) _then;

/// Create a copy of CityRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? region = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CityRef].
extension CityRefPatterns on CityRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityRef value)  $default,){
final _that = this;
switch (_that) {
case _CityRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityRef value)?  $default,){
final _that = this;
switch (_that) {
case _CityRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? region)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityRef() when $default != null:
return $default(_that.id,_that.name,_that.region);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? region)  $default,) {final _that = this;
switch (_that) {
case _CityRef():
return $default(_that.id,_that.name,_that.region);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? region)?  $default,) {final _that = this;
switch (_that) {
case _CityRef() when $default != null:
return $default(_that.id,_that.name,_that.region);case _:
  return null;

}
}

}

/// @nodoc


class _CityRef implements CityRef {
  const _CityRef({required this.id, required this.name, this.region});
  

@override final  int id;
@override final  String name;
@override final  String? region;

/// Create a copy of CityRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityRefCopyWith<_CityRef> get copyWith => __$CityRefCopyWithImpl<_CityRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,region);

@override
String toString() {
  return 'CityRef(id: $id, name: $name, region: $region)';
}


}

/// @nodoc
abstract mixin class _$CityRefCopyWith<$Res> implements $CityRefCopyWith<$Res> {
  factory _$CityRefCopyWith(_CityRef value, $Res Function(_CityRef) _then) = __$CityRefCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? region
});




}
/// @nodoc
class __$CityRefCopyWithImpl<$Res>
    implements _$CityRefCopyWith<$Res> {
  __$CityRefCopyWithImpl(this._self, this._then);

  final _CityRef _self;
  final $Res Function(_CityRef) _then;

/// Create a copy of CityRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? region = freezed,}) {
  return _then(_CityRef(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
