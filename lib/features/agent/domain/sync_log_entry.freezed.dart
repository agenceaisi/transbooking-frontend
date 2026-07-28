// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_log_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncLogEntry {

 int get id; int get bookingsSynced; int get parcelsSynced; int get validationsSynced; int get parcelNotificationsSynced; int get conflictsCount; int get errorsCount; DateTime get createdAt;
/// Create a copy of SyncLogEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncLogEntryCopyWith<SyncLogEntry> get copyWith => _$SyncLogEntryCopyWithImpl<SyncLogEntry>(this as SyncLogEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncLogEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.bookingsSynced, bookingsSynced) || other.bookingsSynced == bookingsSynced)&&(identical(other.parcelsSynced, parcelsSynced) || other.parcelsSynced == parcelsSynced)&&(identical(other.validationsSynced, validationsSynced) || other.validationsSynced == validationsSynced)&&(identical(other.parcelNotificationsSynced, parcelNotificationsSynced) || other.parcelNotificationsSynced == parcelNotificationsSynced)&&(identical(other.conflictsCount, conflictsCount) || other.conflictsCount == conflictsCount)&&(identical(other.errorsCount, errorsCount) || other.errorsCount == errorsCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,bookingsSynced,parcelsSynced,validationsSynced,parcelNotificationsSynced,conflictsCount,errorsCount,createdAt);

@override
String toString() {
  return 'SyncLogEntry(id: $id, bookingsSynced: $bookingsSynced, parcelsSynced: $parcelsSynced, validationsSynced: $validationsSynced, parcelNotificationsSynced: $parcelNotificationsSynced, conflictsCount: $conflictsCount, errorsCount: $errorsCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SyncLogEntryCopyWith<$Res>  {
  factory $SyncLogEntryCopyWith(SyncLogEntry value, $Res Function(SyncLogEntry) _then) = _$SyncLogEntryCopyWithImpl;
@useResult
$Res call({
 int id, int bookingsSynced, int parcelsSynced, int validationsSynced, int parcelNotificationsSynced, int conflictsCount, int errorsCount, DateTime createdAt
});




}
/// @nodoc
class _$SyncLogEntryCopyWithImpl<$Res>
    implements $SyncLogEntryCopyWith<$Res> {
  _$SyncLogEntryCopyWithImpl(this._self, this._then);

  final SyncLogEntry _self;
  final $Res Function(SyncLogEntry) _then;

/// Create a copy of SyncLogEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bookingsSynced = null,Object? parcelsSynced = null,Object? validationsSynced = null,Object? parcelNotificationsSynced = null,Object? conflictsCount = null,Object? errorsCount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bookingsSynced: null == bookingsSynced ? _self.bookingsSynced : bookingsSynced // ignore: cast_nullable_to_non_nullable
as int,parcelsSynced: null == parcelsSynced ? _self.parcelsSynced : parcelsSynced // ignore: cast_nullable_to_non_nullable
as int,validationsSynced: null == validationsSynced ? _self.validationsSynced : validationsSynced // ignore: cast_nullable_to_non_nullable
as int,parcelNotificationsSynced: null == parcelNotificationsSynced ? _self.parcelNotificationsSynced : parcelNotificationsSynced // ignore: cast_nullable_to_non_nullable
as int,conflictsCount: null == conflictsCount ? _self.conflictsCount : conflictsCount // ignore: cast_nullable_to_non_nullable
as int,errorsCount: null == errorsCount ? _self.errorsCount : errorsCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncLogEntry].
extension SyncLogEntryPatterns on SyncLogEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncLogEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncLogEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncLogEntry value)  $default,){
final _that = this;
switch (_that) {
case _SyncLogEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncLogEntry value)?  $default,){
final _that = this;
switch (_that) {
case _SyncLogEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int bookingsSynced,  int parcelsSynced,  int validationsSynced,  int parcelNotificationsSynced,  int conflictsCount,  int errorsCount,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncLogEntry() when $default != null:
return $default(_that.id,_that.bookingsSynced,_that.parcelsSynced,_that.validationsSynced,_that.parcelNotificationsSynced,_that.conflictsCount,_that.errorsCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int bookingsSynced,  int parcelsSynced,  int validationsSynced,  int parcelNotificationsSynced,  int conflictsCount,  int errorsCount,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SyncLogEntry():
return $default(_that.id,_that.bookingsSynced,_that.parcelsSynced,_that.validationsSynced,_that.parcelNotificationsSynced,_that.conflictsCount,_that.errorsCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int bookingsSynced,  int parcelsSynced,  int validationsSynced,  int parcelNotificationsSynced,  int conflictsCount,  int errorsCount,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SyncLogEntry() when $default != null:
return $default(_that.id,_that.bookingsSynced,_that.parcelsSynced,_that.validationsSynced,_that.parcelNotificationsSynced,_that.conflictsCount,_that.errorsCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _SyncLogEntry implements SyncLogEntry {
  const _SyncLogEntry({required this.id, required this.bookingsSynced, required this.parcelsSynced, required this.validationsSynced, required this.parcelNotificationsSynced, required this.conflictsCount, required this.errorsCount, required this.createdAt});
  

@override final  int id;
@override final  int bookingsSynced;
@override final  int parcelsSynced;
@override final  int validationsSynced;
@override final  int parcelNotificationsSynced;
@override final  int conflictsCount;
@override final  int errorsCount;
@override final  DateTime createdAt;

/// Create a copy of SyncLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncLogEntryCopyWith<_SyncLogEntry> get copyWith => __$SyncLogEntryCopyWithImpl<_SyncLogEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncLogEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.bookingsSynced, bookingsSynced) || other.bookingsSynced == bookingsSynced)&&(identical(other.parcelsSynced, parcelsSynced) || other.parcelsSynced == parcelsSynced)&&(identical(other.validationsSynced, validationsSynced) || other.validationsSynced == validationsSynced)&&(identical(other.parcelNotificationsSynced, parcelNotificationsSynced) || other.parcelNotificationsSynced == parcelNotificationsSynced)&&(identical(other.conflictsCount, conflictsCount) || other.conflictsCount == conflictsCount)&&(identical(other.errorsCount, errorsCount) || other.errorsCount == errorsCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,bookingsSynced,parcelsSynced,validationsSynced,parcelNotificationsSynced,conflictsCount,errorsCount,createdAt);

@override
String toString() {
  return 'SyncLogEntry(id: $id, bookingsSynced: $bookingsSynced, parcelsSynced: $parcelsSynced, validationsSynced: $validationsSynced, parcelNotificationsSynced: $parcelNotificationsSynced, conflictsCount: $conflictsCount, errorsCount: $errorsCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SyncLogEntryCopyWith<$Res> implements $SyncLogEntryCopyWith<$Res> {
  factory _$SyncLogEntryCopyWith(_SyncLogEntry value, $Res Function(_SyncLogEntry) _then) = __$SyncLogEntryCopyWithImpl;
@override @useResult
$Res call({
 int id, int bookingsSynced, int parcelsSynced, int validationsSynced, int parcelNotificationsSynced, int conflictsCount, int errorsCount, DateTime createdAt
});




}
/// @nodoc
class __$SyncLogEntryCopyWithImpl<$Res>
    implements _$SyncLogEntryCopyWith<$Res> {
  __$SyncLogEntryCopyWithImpl(this._self, this._then);

  final _SyncLogEntry _self;
  final $Res Function(_SyncLogEntry) _then;

/// Create a copy of SyncLogEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bookingsSynced = null,Object? parcelsSynced = null,Object? validationsSynced = null,Object? parcelNotificationsSynced = null,Object? conflictsCount = null,Object? errorsCount = null,Object? createdAt = null,}) {
  return _then(_SyncLogEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bookingsSynced: null == bookingsSynced ? _self.bookingsSynced : bookingsSynced // ignore: cast_nullable_to_non_nullable
as int,parcelsSynced: null == parcelsSynced ? _self.parcelsSynced : parcelsSynced // ignore: cast_nullable_to_non_nullable
as int,validationsSynced: null == validationsSynced ? _self.validationsSynced : validationsSynced // ignore: cast_nullable_to_non_nullable
as int,parcelNotificationsSynced: null == parcelNotificationsSynced ? _self.parcelNotificationsSynced : parcelNotificationsSynced // ignore: cast_nullable_to_non_nullable
as int,conflictsCount: null == conflictsCount ? _self.conflictsCount : conflictsCount // ignore: cast_nullable_to_non_nullable
as int,errorsCount: null == errorsCount ? _self.errorsCount : errorsCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
