// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParcelNotification {

 int get id; ParcelNotificationMethodEnum? get method;@JsonKey(name: 'method_display') String get methodDisplay; String? get message;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of ParcelNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelNotificationCopyWith<ParcelNotification> get copyWith => _$ParcelNotificationCopyWithImpl<ParcelNotification>(this as ParcelNotification, _$identity);

  /// Serializes this ParcelNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.message, message) || other.message == message)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,method,methodDisplay,message,createdAt);

@override
String toString() {
  return 'ParcelNotification(id: $id, method: $method, methodDisplay: $methodDisplay, message: $message, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ParcelNotificationCopyWith<$Res>  {
  factory $ParcelNotificationCopyWith(ParcelNotification value, $Res Function(ParcelNotification) _then) = _$ParcelNotificationCopyWithImpl;
@useResult
$Res call({
 int id, ParcelNotificationMethodEnum? method,@JsonKey(name: 'method_display') String methodDisplay, String? message,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$ParcelNotificationCopyWithImpl<$Res>
    implements $ParcelNotificationCopyWith<$Res> {
  _$ParcelNotificationCopyWithImpl(this._self, this._then);

  final ParcelNotification _self;
  final $Res Function(ParcelNotification) _then;

/// Create a copy of ParcelNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? method = freezed,Object? methodDisplay = null,Object? message = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ParcelNotificationMethodEnum?,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelNotification].
extension ParcelNotificationPatterns on ParcelNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelNotification value)  $default,){
final _that = this;
switch (_that) {
case _ParcelNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelNotification value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  ParcelNotificationMethodEnum? method, @JsonKey(name: 'method_display')  String methodDisplay,  String? message, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelNotification() when $default != null:
return $default(_that.id,_that.method,_that.methodDisplay,_that.message,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  ParcelNotificationMethodEnum? method, @JsonKey(name: 'method_display')  String methodDisplay,  String? message, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ParcelNotification():
return $default(_that.id,_that.method,_that.methodDisplay,_that.message,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  ParcelNotificationMethodEnum? method, @JsonKey(name: 'method_display')  String methodDisplay,  String? message, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ParcelNotification() when $default != null:
return $default(_that.id,_that.method,_that.methodDisplay,_that.message,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelNotification implements ParcelNotification {
  const _ParcelNotification({required this.id, this.method, @JsonKey(name: 'method_display') required this.methodDisplay, this.message, @JsonKey(name: 'created_at') required this.createdAt});
  factory _ParcelNotification.fromJson(Map<String, dynamic> json) => _$ParcelNotificationFromJson(json);

@override final  int id;
@override final  ParcelNotificationMethodEnum? method;
@override@JsonKey(name: 'method_display') final  String methodDisplay;
@override final  String? message;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of ParcelNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelNotificationCopyWith<_ParcelNotification> get copyWith => __$ParcelNotificationCopyWithImpl<_ParcelNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.message, message) || other.message == message)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,method,methodDisplay,message,createdAt);

@override
String toString() {
  return 'ParcelNotification(id: $id, method: $method, methodDisplay: $methodDisplay, message: $message, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ParcelNotificationCopyWith<$Res> implements $ParcelNotificationCopyWith<$Res> {
  factory _$ParcelNotificationCopyWith(_ParcelNotification value, $Res Function(_ParcelNotification) _then) = __$ParcelNotificationCopyWithImpl;
@override @useResult
$Res call({
 int id, ParcelNotificationMethodEnum? method,@JsonKey(name: 'method_display') String methodDisplay, String? message,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$ParcelNotificationCopyWithImpl<$Res>
    implements _$ParcelNotificationCopyWith<$Res> {
  __$ParcelNotificationCopyWithImpl(this._self, this._then);

  final _ParcelNotification _self;
  final $Res Function(_ParcelNotification) _then;

/// Create a copy of ParcelNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? method = freezed,Object? methodDisplay = null,Object? message = freezed,Object? createdAt = null,}) {
  return _then(_ParcelNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ParcelNotificationMethodEnum?,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
