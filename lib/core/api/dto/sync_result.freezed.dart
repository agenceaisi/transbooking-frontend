// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncResult {

 SyncSyncedCounts get synced; List<SyncResultConflict> get conflicts; List<SyncResultError> get errors;
/// Create a copy of SyncResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncResultCopyWith<SyncResult> get copyWith => _$SyncResultCopyWithImpl<SyncResult>(this as SyncResult, _$identity);

  /// Serializes this SyncResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncResult&&(identical(other.synced, synced) || other.synced == synced)&&const DeepCollectionEquality().equals(other.conflicts, conflicts)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,synced,const DeepCollectionEquality().hash(conflicts),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SyncResult(synced: $synced, conflicts: $conflicts, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SyncResultCopyWith<$Res>  {
  factory $SyncResultCopyWith(SyncResult value, $Res Function(SyncResult) _then) = _$SyncResultCopyWithImpl;
@useResult
$Res call({
 SyncSyncedCounts synced, List<SyncResultConflict> conflicts, List<SyncResultError> errors
});


$SyncSyncedCountsCopyWith<$Res> get synced;

}
/// @nodoc
class _$SyncResultCopyWithImpl<$Res>
    implements $SyncResultCopyWith<$Res> {
  _$SyncResultCopyWithImpl(this._self, this._then);

  final SyncResult _self;
  final $Res Function(SyncResult) _then;

/// Create a copy of SyncResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? synced = null,Object? conflicts = null,Object? errors = null,}) {
  return _then(_self.copyWith(
synced: null == synced ? _self.synced : synced // ignore: cast_nullable_to_non_nullable
as SyncSyncedCounts,conflicts: null == conflicts ? _self.conflicts : conflicts // ignore: cast_nullable_to_non_nullable
as List<SyncResultConflict>,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<SyncResultError>,
  ));
}
/// Create a copy of SyncResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SyncSyncedCountsCopyWith<$Res> get synced {
  
  return $SyncSyncedCountsCopyWith<$Res>(_self.synced, (value) {
    return _then(_self.copyWith(synced: value));
  });
}
}


/// Adds pattern-matching-related methods to [SyncResult].
extension SyncResultPatterns on SyncResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncResult value)  $default,){
final _that = this;
switch (_that) {
case _SyncResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncResult value)?  $default,){
final _that = this;
switch (_that) {
case _SyncResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SyncSyncedCounts synced,  List<SyncResultConflict> conflicts,  List<SyncResultError> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncResult() when $default != null:
return $default(_that.synced,_that.conflicts,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SyncSyncedCounts synced,  List<SyncResultConflict> conflicts,  List<SyncResultError> errors)  $default,) {final _that = this;
switch (_that) {
case _SyncResult():
return $default(_that.synced,_that.conflicts,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SyncSyncedCounts synced,  List<SyncResultConflict> conflicts,  List<SyncResultError> errors)?  $default,) {final _that = this;
switch (_that) {
case _SyncResult() when $default != null:
return $default(_that.synced,_that.conflicts,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncResult implements SyncResult {
  const _SyncResult({required this.synced, required final  List<SyncResultConflict> conflicts, required final  List<SyncResultError> errors}): _conflicts = conflicts,_errors = errors;
  factory _SyncResult.fromJson(Map<String, dynamic> json) => _$SyncResultFromJson(json);

@override final  SyncSyncedCounts synced;
 final  List<SyncResultConflict> _conflicts;
@override List<SyncResultConflict> get conflicts {
  if (_conflicts is EqualUnmodifiableListView) return _conflicts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conflicts);
}

 final  List<SyncResultError> _errors;
@override List<SyncResultError> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of SyncResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncResultCopyWith<_SyncResult> get copyWith => __$SyncResultCopyWithImpl<_SyncResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncResult&&(identical(other.synced, synced) || other.synced == synced)&&const DeepCollectionEquality().equals(other._conflicts, _conflicts)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,synced,const DeepCollectionEquality().hash(_conflicts),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'SyncResult(synced: $synced, conflicts: $conflicts, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SyncResultCopyWith<$Res> implements $SyncResultCopyWith<$Res> {
  factory _$SyncResultCopyWith(_SyncResult value, $Res Function(_SyncResult) _then) = __$SyncResultCopyWithImpl;
@override @useResult
$Res call({
 SyncSyncedCounts synced, List<SyncResultConflict> conflicts, List<SyncResultError> errors
});


@override $SyncSyncedCountsCopyWith<$Res> get synced;

}
/// @nodoc
class __$SyncResultCopyWithImpl<$Res>
    implements _$SyncResultCopyWith<$Res> {
  __$SyncResultCopyWithImpl(this._self, this._then);

  final _SyncResult _self;
  final $Res Function(_SyncResult) _then;

/// Create a copy of SyncResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? synced = null,Object? conflicts = null,Object? errors = null,}) {
  return _then(_SyncResult(
synced: null == synced ? _self.synced : synced // ignore: cast_nullable_to_non_nullable
as SyncSyncedCounts,conflicts: null == conflicts ? _self._conflicts : conflicts // ignore: cast_nullable_to_non_nullable
as List<SyncResultConflict>,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<SyncResultError>,
  ));
}

/// Create a copy of SyncResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SyncSyncedCountsCopyWith<$Res> get synced {
  
  return $SyncSyncedCountsCopyWith<$Res>(_self.synced, (value) {
    return _then(_self.copyWith(synced: value));
  });
}
}

// dart format on
