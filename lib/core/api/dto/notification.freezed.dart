// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notification {

 int get id; Type6f3Enum get type;@JsonKey(name: 'type_display') String get typeDisplay; String get title; String get body;@JsonKey(name: 'is_read') bool get isRead;@JsonKey(name: 'reference_id') int? get referenceId;@JsonKey(name: 'reference_type') String get referenceType;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeDisplay, typeDisplay) || other.typeDisplay == typeDisplay)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,typeDisplay,title,body,isRead,referenceId,referenceType,createdAt);

@override
String toString() {
  return 'Notification(id: $id, type: $type, typeDisplay: $typeDisplay, title: $title, body: $body, isRead: $isRead, referenceId: $referenceId, referenceType: $referenceType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 int id, Type6f3Enum type,@JsonKey(name: 'type_display') String typeDisplay, String title, String body,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'reference_id') int? referenceId,@JsonKey(name: 'reference_type') String referenceType,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? typeDisplay = null,Object? title = null,Object? body = null,Object? isRead = null,Object? referenceId = freezed,Object? referenceType = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type6f3Enum,typeDisplay: null == typeDisplay ? _self.typeDisplay : typeDisplay // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,referenceType: null == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notification value)  $default,){
final _that = this;
switch (_that) {
case _Notification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notification value)?  $default,){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Type6f3Enum type, @JsonKey(name: 'type_display')  String typeDisplay,  String title,  String body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'reference_id')  int? referenceId, @JsonKey(name: 'reference_type')  String referenceType, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.type,_that.typeDisplay,_that.title,_that.body,_that.isRead,_that.referenceId,_that.referenceType,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Type6f3Enum type, @JsonKey(name: 'type_display')  String typeDisplay,  String title,  String body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'reference_id')  int? referenceId, @JsonKey(name: 'reference_type')  String referenceType, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Notification():
return $default(_that.id,_that.type,_that.typeDisplay,_that.title,_that.body,_that.isRead,_that.referenceId,_that.referenceType,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  Type6f3Enum type, @JsonKey(name: 'type_display')  String typeDisplay,  String title,  String body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'reference_id')  int? referenceId, @JsonKey(name: 'reference_type')  String referenceType, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.type,_that.typeDisplay,_that.title,_that.body,_that.isRead,_that.referenceId,_that.referenceType,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Notification implements Notification {
  const _Notification({required this.id, required this.type, @JsonKey(name: 'type_display') required this.typeDisplay, required this.title, required this.body, @JsonKey(name: 'is_read') required this.isRead, @JsonKey(name: 'reference_id') required this.referenceId, @JsonKey(name: 'reference_type') required this.referenceType, @JsonKey(name: 'created_at') required this.createdAt});
  factory _Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

@override final  int id;
@override final  Type6f3Enum type;
@override@JsonKey(name: 'type_display') final  String typeDisplay;
@override final  String title;
@override final  String body;
@override@JsonKey(name: 'is_read') final  bool isRead;
@override@JsonKey(name: 'reference_id') final  int? referenceId;
@override@JsonKey(name: 'reference_type') final  String referenceType;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeDisplay, typeDisplay) || other.typeDisplay == typeDisplay)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,typeDisplay,title,body,isRead,referenceId,referenceType,createdAt);

@override
String toString() {
  return 'Notification(id: $id, type: $type, typeDisplay: $typeDisplay, title: $title, body: $body, isRead: $isRead, referenceId: $referenceId, referenceType: $referenceType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
 int id, Type6f3Enum type,@JsonKey(name: 'type_display') String typeDisplay, String title, String body,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'reference_id') int? referenceId,@JsonKey(name: 'reference_type') String referenceType,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? typeDisplay = null,Object? title = null,Object? body = null,Object? isRead = null,Object? referenceId = freezed,Object? referenceType = null,Object? createdAt = null,}) {
  return _then(_Notification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type6f3Enum,typeDisplay: null == typeDisplay ? _self.typeDisplay : typeDisplay // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,referenceType: null == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
