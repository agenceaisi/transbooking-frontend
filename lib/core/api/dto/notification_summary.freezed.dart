// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSummary {

 int get id; String get title; String get body;@JsonKey(name: 'is_read') bool get isRead;@JsonKey(name: 'created_at') DateTime get createdAt; Type6f3Enum get type;@JsonKey(name: 'type_display') String? get typeDisplay;
/// Create a copy of NotificationSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSummaryCopyWith<NotificationSummary> get copyWith => _$NotificationSummaryCopyWithImpl<NotificationSummary>(this as NotificationSummary, _$identity);

  /// Serializes this NotificationSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeDisplay, typeDisplay) || other.typeDisplay == typeDisplay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,isRead,createdAt,type,typeDisplay);

@override
String toString() {
  return 'NotificationSummary(id: $id, title: $title, body: $body, isRead: $isRead, createdAt: $createdAt, type: $type, typeDisplay: $typeDisplay)';
}


}

/// @nodoc
abstract mixin class $NotificationSummaryCopyWith<$Res>  {
  factory $NotificationSummaryCopyWith(NotificationSummary value, $Res Function(NotificationSummary) _then) = _$NotificationSummaryCopyWithImpl;
@useResult
$Res call({
 int id, String title, String body,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'created_at') DateTime createdAt, Type6f3Enum type,@JsonKey(name: 'type_display') String? typeDisplay
});




}
/// @nodoc
class _$NotificationSummaryCopyWithImpl<$Res>
    implements $NotificationSummaryCopyWith<$Res> {
  _$NotificationSummaryCopyWithImpl(this._self, this._then);

  final NotificationSummary _self;
  final $Res Function(NotificationSummary) _then;

/// Create a copy of NotificationSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? isRead = null,Object? createdAt = null,Object? type = null,Object? typeDisplay = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type6f3Enum,typeDisplay: freezed == typeDisplay ? _self.typeDisplay : typeDisplay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSummary].
extension NotificationSummaryPatterns on NotificationSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSummary value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSummary value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  DateTime createdAt,  Type6f3Enum type, @JsonKey(name: 'type_display')  String? typeDisplay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSummary() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.isRead,_that.createdAt,_that.type,_that.typeDisplay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  DateTime createdAt,  Type6f3Enum type, @JsonKey(name: 'type_display')  String? typeDisplay)  $default,) {final _that = this;
switch (_that) {
case _NotificationSummary():
return $default(_that.id,_that.title,_that.body,_that.isRead,_that.createdAt,_that.type,_that.typeDisplay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  DateTime createdAt,  Type6f3Enum type, @JsonKey(name: 'type_display')  String? typeDisplay)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSummary() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.isRead,_that.createdAt,_that.type,_that.typeDisplay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationSummary implements NotificationSummary {
  const _NotificationSummary({required this.id, required this.title, required this.body, @JsonKey(name: 'is_read') required this.isRead, @JsonKey(name: 'created_at') required this.createdAt, required this.type, @JsonKey(name: 'type_display') required this.typeDisplay});
  factory _NotificationSummary.fromJson(Map<String, dynamic> json) => _$NotificationSummaryFromJson(json);

@override final  int id;
@override final  String title;
@override final  String body;
@override@JsonKey(name: 'is_read') final  bool isRead;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override final  Type6f3Enum type;
@override@JsonKey(name: 'type_display') final  String? typeDisplay;

/// Create a copy of NotificationSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSummaryCopyWith<_NotificationSummary> get copyWith => __$NotificationSummaryCopyWithImpl<_NotificationSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeDisplay, typeDisplay) || other.typeDisplay == typeDisplay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,isRead,createdAt,type,typeDisplay);

@override
String toString() {
  return 'NotificationSummary(id: $id, title: $title, body: $body, isRead: $isRead, createdAt: $createdAt, type: $type, typeDisplay: $typeDisplay)';
}


}

/// @nodoc
abstract mixin class _$NotificationSummaryCopyWith<$Res> implements $NotificationSummaryCopyWith<$Res> {
  factory _$NotificationSummaryCopyWith(_NotificationSummary value, $Res Function(_NotificationSummary) _then) = __$NotificationSummaryCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String body,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'created_at') DateTime createdAt, Type6f3Enum type,@JsonKey(name: 'type_display') String? typeDisplay
});




}
/// @nodoc
class __$NotificationSummaryCopyWithImpl<$Res>
    implements _$NotificationSummaryCopyWith<$Res> {
  __$NotificationSummaryCopyWithImpl(this._self, this._then);

  final _NotificationSummary _self;
  final $Res Function(_NotificationSummary) _then;

/// Create a copy of NotificationSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? isRead = null,Object? createdAt = null,Object? type = null,Object? typeDisplay = freezed,}) {
  return _then(_NotificationSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type6f3Enum,typeDisplay: freezed == typeDisplay ? _self.typeDisplay : typeDisplay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
