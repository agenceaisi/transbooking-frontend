// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuperNotification {

 String get type; String get severity; String get title; String get body;@JsonKey(name: 'reference_type') String get referenceType;@JsonKey(name: 'reference_id') int? get referenceId;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of SuperNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuperNotificationCopyWith<SuperNotification> get copyWith => _$SuperNotificationCopyWithImpl<SuperNotification>(this as SuperNotification, _$identity);

  /// Serializes this SuperNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuperNotification&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,severity,title,body,referenceType,referenceId,createdAt);

@override
String toString() {
  return 'SuperNotification(type: $type, severity: $severity, title: $title, body: $body, referenceType: $referenceType, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SuperNotificationCopyWith<$Res>  {
  factory $SuperNotificationCopyWith(SuperNotification value, $Res Function(SuperNotification) _then) = _$SuperNotificationCopyWithImpl;
@useResult
$Res call({
 String type, String severity, String title, String body,@JsonKey(name: 'reference_type') String referenceType,@JsonKey(name: 'reference_id') int? referenceId,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$SuperNotificationCopyWithImpl<$Res>
    implements $SuperNotificationCopyWith<$Res> {
  _$SuperNotificationCopyWithImpl(this._self, this._then);

  final SuperNotification _self;
  final $Res Function(SuperNotification) _then;

/// Create a copy of SuperNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? severity = null,Object? title = null,Object? body = null,Object? referenceType = null,Object? referenceId = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,referenceType: null == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SuperNotification].
extension SuperNotificationPatterns on SuperNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuperNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuperNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuperNotification value)  $default,){
final _that = this;
switch (_that) {
case _SuperNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuperNotification value)?  $default,){
final _that = this;
switch (_that) {
case _SuperNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String severity,  String title,  String body, @JsonKey(name: 'reference_type')  String referenceType, @JsonKey(name: 'reference_id')  int? referenceId, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuperNotification() when $default != null:
return $default(_that.type,_that.severity,_that.title,_that.body,_that.referenceType,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String severity,  String title,  String body, @JsonKey(name: 'reference_type')  String referenceType, @JsonKey(name: 'reference_id')  int? referenceId, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SuperNotification():
return $default(_that.type,_that.severity,_that.title,_that.body,_that.referenceType,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String severity,  String title,  String body, @JsonKey(name: 'reference_type')  String referenceType, @JsonKey(name: 'reference_id')  int? referenceId, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SuperNotification() when $default != null:
return $default(_that.type,_that.severity,_that.title,_that.body,_that.referenceType,_that.referenceId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuperNotification implements SuperNotification {
  const _SuperNotification({required this.type, required this.severity, required this.title, required this.body, @JsonKey(name: 'reference_type') required this.referenceType, @JsonKey(name: 'reference_id') required this.referenceId, @JsonKey(name: 'created_at') required this.createdAt});
  factory _SuperNotification.fromJson(Map<String, dynamic> json) => _$SuperNotificationFromJson(json);

@override final  String type;
@override final  String severity;
@override final  String title;
@override final  String body;
@override@JsonKey(name: 'reference_type') final  String referenceType;
@override@JsonKey(name: 'reference_id') final  int? referenceId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of SuperNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuperNotificationCopyWith<_SuperNotification> get copyWith => __$SuperNotificationCopyWithImpl<_SuperNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuperNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuperNotification&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,severity,title,body,referenceType,referenceId,createdAt);

@override
String toString() {
  return 'SuperNotification(type: $type, severity: $severity, title: $title, body: $body, referenceType: $referenceType, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SuperNotificationCopyWith<$Res> implements $SuperNotificationCopyWith<$Res> {
  factory _$SuperNotificationCopyWith(_SuperNotification value, $Res Function(_SuperNotification) _then) = __$SuperNotificationCopyWithImpl;
@override @useResult
$Res call({
 String type, String severity, String title, String body,@JsonKey(name: 'reference_type') String referenceType,@JsonKey(name: 'reference_id') int? referenceId,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$SuperNotificationCopyWithImpl<$Res>
    implements _$SuperNotificationCopyWith<$Res> {
  __$SuperNotificationCopyWithImpl(this._self, this._then);

  final _SuperNotification _self;
  final $Res Function(_SuperNotification) _then;

/// Create a copy of SuperNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? severity = null,Object? title = null,Object? body = null,Object? referenceType = null,Object? referenceId = freezed,Object? createdAt = null,}) {
  return _then(_SuperNotification(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,referenceType: null == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
