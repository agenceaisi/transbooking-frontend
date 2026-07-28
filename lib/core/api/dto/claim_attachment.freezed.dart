// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClaimAttachment {

 int get id; String get file;@JsonKey(name: 'original_name') String? get originalName;@JsonKey(name: 'content_type') String? get contentType; int? get size;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of ClaimAttachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimAttachmentCopyWith<ClaimAttachment> get copyWith => _$ClaimAttachmentCopyWithImpl<ClaimAttachment>(this as ClaimAttachment, _$identity);

  /// Serializes this ClaimAttachment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file,originalName,contentType,size,createdAt);

@override
String toString() {
  return 'ClaimAttachment(id: $id, file: $file, originalName: $originalName, contentType: $contentType, size: $size, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ClaimAttachmentCopyWith<$Res>  {
  factory $ClaimAttachmentCopyWith(ClaimAttachment value, $Res Function(ClaimAttachment) _then) = _$ClaimAttachmentCopyWithImpl;
@useResult
$Res call({
 int id, String file,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'content_type') String? contentType, int? size,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$ClaimAttachmentCopyWithImpl<$Res>
    implements $ClaimAttachmentCopyWith<$Res> {
  _$ClaimAttachmentCopyWithImpl(this._self, this._then);

  final ClaimAttachment _self;
  final $Res Function(ClaimAttachment) _then;

/// Create a copy of ClaimAttachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? file = null,Object? originalName = freezed,Object? contentType = freezed,Object? size = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimAttachment].
extension ClaimAttachmentPatterns on ClaimAttachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimAttachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimAttachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimAttachment value)  $default,){
final _that = this;
switch (_that) {
case _ClaimAttachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimAttachment value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimAttachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String file, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'content_type')  String? contentType,  int? size, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimAttachment() when $default != null:
return $default(_that.id,_that.file,_that.originalName,_that.contentType,_that.size,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String file, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'content_type')  String? contentType,  int? size, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ClaimAttachment():
return $default(_that.id,_that.file,_that.originalName,_that.contentType,_that.size,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String file, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'content_type')  String? contentType,  int? size, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ClaimAttachment() when $default != null:
return $default(_that.id,_that.file,_that.originalName,_that.contentType,_that.size,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimAttachment implements ClaimAttachment {
  const _ClaimAttachment({required this.id, required this.file, @JsonKey(name: 'original_name') this.originalName, @JsonKey(name: 'content_type') this.contentType, this.size, @JsonKey(name: 'created_at') required this.createdAt});
  factory _ClaimAttachment.fromJson(Map<String, dynamic> json) => _$ClaimAttachmentFromJson(json);

@override final  int id;
@override final  String file;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override@JsonKey(name: 'content_type') final  String? contentType;
@override final  int? size;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of ClaimAttachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimAttachmentCopyWith<_ClaimAttachment> get copyWith => __$ClaimAttachmentCopyWithImpl<_ClaimAttachment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimAttachmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file,originalName,contentType,size,createdAt);

@override
String toString() {
  return 'ClaimAttachment(id: $id, file: $file, originalName: $originalName, contentType: $contentType, size: $size, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ClaimAttachmentCopyWith<$Res> implements $ClaimAttachmentCopyWith<$Res> {
  factory _$ClaimAttachmentCopyWith(_ClaimAttachment value, $Res Function(_ClaimAttachment) _then) = __$ClaimAttachmentCopyWithImpl;
@override @useResult
$Res call({
 int id, String file,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'content_type') String? contentType, int? size,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$ClaimAttachmentCopyWithImpl<$Res>
    implements _$ClaimAttachmentCopyWith<$Res> {
  __$ClaimAttachmentCopyWithImpl(this._self, this._then);

  final _ClaimAttachment _self;
  final $Res Function(_ClaimAttachment) _then;

/// Create a copy of ClaimAttachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? file = null,Object? originalName = freezed,Object? contentType = freezed,Object? size = freezed,Object? createdAt = null,}) {
  return _then(_ClaimAttachment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
