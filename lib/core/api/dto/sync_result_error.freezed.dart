// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_result_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncResultError {

 TypeD05Enum get type; EntityEnum get entity; String get reference; String get message;
/// Create a copy of SyncResultError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncResultErrorCopyWith<SyncResultError> get copyWith => _$SyncResultErrorCopyWithImpl<SyncResultError>(this as SyncResultError, _$identity);

  /// Serializes this SyncResultError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncResultError&&(identical(other.type, type) || other.type == type)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,entity,reference,message);

@override
String toString() {
  return 'SyncResultError(type: $type, entity: $entity, reference: $reference, message: $message)';
}


}

/// @nodoc
abstract mixin class $SyncResultErrorCopyWith<$Res>  {
  factory $SyncResultErrorCopyWith(SyncResultError value, $Res Function(SyncResultError) _then) = _$SyncResultErrorCopyWithImpl;
@useResult
$Res call({
 TypeD05Enum type, EntityEnum entity, String reference, String message
});




}
/// @nodoc
class _$SyncResultErrorCopyWithImpl<$Res>
    implements $SyncResultErrorCopyWith<$Res> {
  _$SyncResultErrorCopyWithImpl(this._self, this._then);

  final SyncResultError _self;
  final $Res Function(SyncResultError) _then;

/// Create a copy of SyncResultError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? entity = null,Object? reference = null,Object? message = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeD05Enum,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as EntityEnum,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncResultError].
extension SyncResultErrorPatterns on SyncResultError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncResultError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncResultError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncResultError value)  $default,){
final _that = this;
switch (_that) {
case _SyncResultError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncResultError value)?  $default,){
final _that = this;
switch (_that) {
case _SyncResultError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TypeD05Enum type,  EntityEnum entity,  String reference,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncResultError() when $default != null:
return $default(_that.type,_that.entity,_that.reference,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TypeD05Enum type,  EntityEnum entity,  String reference,  String message)  $default,) {final _that = this;
switch (_that) {
case _SyncResultError():
return $default(_that.type,_that.entity,_that.reference,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TypeD05Enum type,  EntityEnum entity,  String reference,  String message)?  $default,) {final _that = this;
switch (_that) {
case _SyncResultError() when $default != null:
return $default(_that.type,_that.entity,_that.reference,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncResultError implements SyncResultError {
  const _SyncResultError({required this.type, required this.entity, required this.reference, required this.message});
  factory _SyncResultError.fromJson(Map<String, dynamic> json) => _$SyncResultErrorFromJson(json);

@override final  TypeD05Enum type;
@override final  EntityEnum entity;
@override final  String reference;
@override final  String message;

/// Create a copy of SyncResultError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncResultErrorCopyWith<_SyncResultError> get copyWith => __$SyncResultErrorCopyWithImpl<_SyncResultError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncResultErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncResultError&&(identical(other.type, type) || other.type == type)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,entity,reference,message);

@override
String toString() {
  return 'SyncResultError(type: $type, entity: $entity, reference: $reference, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SyncResultErrorCopyWith<$Res> implements $SyncResultErrorCopyWith<$Res> {
  factory _$SyncResultErrorCopyWith(_SyncResultError value, $Res Function(_SyncResultError) _then) = __$SyncResultErrorCopyWithImpl;
@override @useResult
$Res call({
 TypeD05Enum type, EntityEnum entity, String reference, String message
});




}
/// @nodoc
class __$SyncResultErrorCopyWithImpl<$Res>
    implements _$SyncResultErrorCopyWith<$Res> {
  __$SyncResultErrorCopyWithImpl(this._self, this._then);

  final _SyncResultError _self;
  final $Res Function(_SyncResultError) _then;

/// Create a copy of SyncResultError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? entity = null,Object? reference = null,Object? message = null,}) {
  return _then(_SyncResultError(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeD05Enum,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as EntityEnum,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
