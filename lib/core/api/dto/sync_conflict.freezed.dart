// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_conflict.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncConflict {

 int get id; EntityEnum? get entity;@JsonKey(name: 'conflict_type') ConflictTypeEnum get conflictType;@JsonKey(name: 'conflict_type_display') String get conflictTypeDisplay; String? get reference;@JsonKey(name: 'original_seat') String? get originalSeat;@JsonKey(name: 'assigned_seat') String? get assignedSeat; String get resolution; bool? get resolved;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncConflictCopyWith<SyncConflict> get copyWith => _$SyncConflictCopyWithImpl<SyncConflict>(this as SyncConflict, _$identity);

  /// Serializes this SyncConflict to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncConflict&&(identical(other.id, id) || other.id == id)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.conflictType, conflictType) || other.conflictType == conflictType)&&(identical(other.conflictTypeDisplay, conflictTypeDisplay) || other.conflictTypeDisplay == conflictTypeDisplay)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.originalSeat, originalSeat) || other.originalSeat == originalSeat)&&(identical(other.assignedSeat, assignedSeat) || other.assignedSeat == assignedSeat)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.resolved, resolved) || other.resolved == resolved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,entity,conflictType,conflictTypeDisplay,reference,originalSeat,assignedSeat,resolution,resolved,createdAt);

@override
String toString() {
  return 'SyncConflict(id: $id, entity: $entity, conflictType: $conflictType, conflictTypeDisplay: $conflictTypeDisplay, reference: $reference, originalSeat: $originalSeat, assignedSeat: $assignedSeat, resolution: $resolution, resolved: $resolved, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SyncConflictCopyWith<$Res>  {
  factory $SyncConflictCopyWith(SyncConflict value, $Res Function(SyncConflict) _then) = _$SyncConflictCopyWithImpl;
@useResult
$Res call({
 int id, EntityEnum? entity,@JsonKey(name: 'conflict_type') ConflictTypeEnum conflictType,@JsonKey(name: 'conflict_type_display') String conflictTypeDisplay, String? reference,@JsonKey(name: 'original_seat') String? originalSeat,@JsonKey(name: 'assigned_seat') String? assignedSeat, String resolution, bool? resolved,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$SyncConflictCopyWithImpl<$Res>
    implements $SyncConflictCopyWith<$Res> {
  _$SyncConflictCopyWithImpl(this._self, this._then);

  final SyncConflict _self;
  final $Res Function(SyncConflict) _then;

/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? entity = freezed,Object? conflictType = null,Object? conflictTypeDisplay = null,Object? reference = freezed,Object? originalSeat = freezed,Object? assignedSeat = freezed,Object? resolution = null,Object? resolved = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as EntityEnum?,conflictType: null == conflictType ? _self.conflictType : conflictType // ignore: cast_nullable_to_non_nullable
as ConflictTypeEnum,conflictTypeDisplay: null == conflictTypeDisplay ? _self.conflictTypeDisplay : conflictTypeDisplay // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,originalSeat: freezed == originalSeat ? _self.originalSeat : originalSeat // ignore: cast_nullable_to_non_nullable
as String?,assignedSeat: freezed == assignedSeat ? _self.assignedSeat : assignedSeat // ignore: cast_nullable_to_non_nullable
as String?,resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String,resolved: freezed == resolved ? _self.resolved : resolved // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncConflict].
extension SyncConflictPatterns on SyncConflict {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncConflict value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncConflict value)  $default,){
final _that = this;
switch (_that) {
case _SyncConflict():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncConflict value)?  $default,){
final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  EntityEnum? entity, @JsonKey(name: 'conflict_type')  ConflictTypeEnum conflictType, @JsonKey(name: 'conflict_type_display')  String conflictTypeDisplay,  String? reference, @JsonKey(name: 'original_seat')  String? originalSeat, @JsonKey(name: 'assigned_seat')  String? assignedSeat,  String resolution,  bool? resolved, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
return $default(_that.id,_that.entity,_that.conflictType,_that.conflictTypeDisplay,_that.reference,_that.originalSeat,_that.assignedSeat,_that.resolution,_that.resolved,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  EntityEnum? entity, @JsonKey(name: 'conflict_type')  ConflictTypeEnum conflictType, @JsonKey(name: 'conflict_type_display')  String conflictTypeDisplay,  String? reference, @JsonKey(name: 'original_seat')  String? originalSeat, @JsonKey(name: 'assigned_seat')  String? assignedSeat,  String resolution,  bool? resolved, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SyncConflict():
return $default(_that.id,_that.entity,_that.conflictType,_that.conflictTypeDisplay,_that.reference,_that.originalSeat,_that.assignedSeat,_that.resolution,_that.resolved,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  EntityEnum? entity, @JsonKey(name: 'conflict_type')  ConflictTypeEnum conflictType, @JsonKey(name: 'conflict_type_display')  String conflictTypeDisplay,  String? reference, @JsonKey(name: 'original_seat')  String? originalSeat, @JsonKey(name: 'assigned_seat')  String? assignedSeat,  String resolution,  bool? resolved, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SyncConflict() when $default != null:
return $default(_that.id,_that.entity,_that.conflictType,_that.conflictTypeDisplay,_that.reference,_that.originalSeat,_that.assignedSeat,_that.resolution,_that.resolved,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncConflict implements SyncConflict {
  const _SyncConflict({required this.id, this.entity, @JsonKey(name: 'conflict_type') required this.conflictType, @JsonKey(name: 'conflict_type_display') required this.conflictTypeDisplay, this.reference, @JsonKey(name: 'original_seat') this.originalSeat, @JsonKey(name: 'assigned_seat') this.assignedSeat, required this.resolution, this.resolved, @JsonKey(name: 'created_at') required this.createdAt});
  factory _SyncConflict.fromJson(Map<String, dynamic> json) => _$SyncConflictFromJson(json);

@override final  int id;
@override final  EntityEnum? entity;
@override@JsonKey(name: 'conflict_type') final  ConflictTypeEnum conflictType;
@override@JsonKey(name: 'conflict_type_display') final  String conflictTypeDisplay;
@override final  String? reference;
@override@JsonKey(name: 'original_seat') final  String? originalSeat;
@override@JsonKey(name: 'assigned_seat') final  String? assignedSeat;
@override final  String resolution;
@override final  bool? resolved;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncConflictCopyWith<_SyncConflict> get copyWith => __$SyncConflictCopyWithImpl<_SyncConflict>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncConflictToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncConflict&&(identical(other.id, id) || other.id == id)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.conflictType, conflictType) || other.conflictType == conflictType)&&(identical(other.conflictTypeDisplay, conflictTypeDisplay) || other.conflictTypeDisplay == conflictTypeDisplay)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.originalSeat, originalSeat) || other.originalSeat == originalSeat)&&(identical(other.assignedSeat, assignedSeat) || other.assignedSeat == assignedSeat)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.resolved, resolved) || other.resolved == resolved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,entity,conflictType,conflictTypeDisplay,reference,originalSeat,assignedSeat,resolution,resolved,createdAt);

@override
String toString() {
  return 'SyncConflict(id: $id, entity: $entity, conflictType: $conflictType, conflictTypeDisplay: $conflictTypeDisplay, reference: $reference, originalSeat: $originalSeat, assignedSeat: $assignedSeat, resolution: $resolution, resolved: $resolved, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SyncConflictCopyWith<$Res> implements $SyncConflictCopyWith<$Res> {
  factory _$SyncConflictCopyWith(_SyncConflict value, $Res Function(_SyncConflict) _then) = __$SyncConflictCopyWithImpl;
@override @useResult
$Res call({
 int id, EntityEnum? entity,@JsonKey(name: 'conflict_type') ConflictTypeEnum conflictType,@JsonKey(name: 'conflict_type_display') String conflictTypeDisplay, String? reference,@JsonKey(name: 'original_seat') String? originalSeat,@JsonKey(name: 'assigned_seat') String? assignedSeat, String resolution, bool? resolved,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$SyncConflictCopyWithImpl<$Res>
    implements _$SyncConflictCopyWith<$Res> {
  __$SyncConflictCopyWithImpl(this._self, this._then);

  final _SyncConflict _self;
  final $Res Function(_SyncConflict) _then;

/// Create a copy of SyncConflict
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? entity = freezed,Object? conflictType = null,Object? conflictTypeDisplay = null,Object? reference = freezed,Object? originalSeat = freezed,Object? assignedSeat = freezed,Object? resolution = null,Object? resolved = freezed,Object? createdAt = null,}) {
  return _then(_SyncConflict(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as EntityEnum?,conflictType: null == conflictType ? _self.conflictType : conflictType // ignore: cast_nullable_to_non_nullable
as ConflictTypeEnum,conflictTypeDisplay: null == conflictTypeDisplay ? _self.conflictTypeDisplay : conflictTypeDisplay // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,originalSeat: freezed == originalSeat ? _self.originalSeat : originalSeat // ignore: cast_nullable_to_non_nullable
as String?,assignedSeat: freezed == assignedSeat ? _self.assignedSeat : assignedSeat // ignore: cast_nullable_to_non_nullable
as String?,resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String,resolved: freezed == resolved ? _self.resolved : resolved // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
