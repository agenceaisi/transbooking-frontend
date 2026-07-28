// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncLog {

 int get id;@JsonKey(name: 'bookings_synced') int? get bookingsSynced;@JsonKey(name: 'parcels_synced') int? get parcelsSynced;@JsonKey(name: 'validations_synced') int? get validationsSynced;@JsonKey(name: 'parcel_notifications_synced') int? get parcelNotificationsSynced;@JsonKey(name: 'conflicts_count') int? get conflictsCount;@JsonKey(name: 'errors_count') int? get errorsCount; List<SyncConflict> get conflicts;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of SyncLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncLogCopyWith<SyncLog> get copyWith => _$SyncLogCopyWithImpl<SyncLog>(this as SyncLog, _$identity);

  /// Serializes this SyncLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncLog&&(identical(other.id, id) || other.id == id)&&(identical(other.bookingsSynced, bookingsSynced) || other.bookingsSynced == bookingsSynced)&&(identical(other.parcelsSynced, parcelsSynced) || other.parcelsSynced == parcelsSynced)&&(identical(other.validationsSynced, validationsSynced) || other.validationsSynced == validationsSynced)&&(identical(other.parcelNotificationsSynced, parcelNotificationsSynced) || other.parcelNotificationsSynced == parcelNotificationsSynced)&&(identical(other.conflictsCount, conflictsCount) || other.conflictsCount == conflictsCount)&&(identical(other.errorsCount, errorsCount) || other.errorsCount == errorsCount)&&const DeepCollectionEquality().equals(other.conflicts, conflicts)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bookingsSynced,parcelsSynced,validationsSynced,parcelNotificationsSynced,conflictsCount,errorsCount,const DeepCollectionEquality().hash(conflicts),createdAt);

@override
String toString() {
  return 'SyncLog(id: $id, bookingsSynced: $bookingsSynced, parcelsSynced: $parcelsSynced, validationsSynced: $validationsSynced, parcelNotificationsSynced: $parcelNotificationsSynced, conflictsCount: $conflictsCount, errorsCount: $errorsCount, conflicts: $conflicts, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SyncLogCopyWith<$Res>  {
  factory $SyncLogCopyWith(SyncLog value, $Res Function(SyncLog) _then) = _$SyncLogCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'bookings_synced') int? bookingsSynced,@JsonKey(name: 'parcels_synced') int? parcelsSynced,@JsonKey(name: 'validations_synced') int? validationsSynced,@JsonKey(name: 'parcel_notifications_synced') int? parcelNotificationsSynced,@JsonKey(name: 'conflicts_count') int? conflictsCount,@JsonKey(name: 'errors_count') int? errorsCount, List<SyncConflict> conflicts,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$SyncLogCopyWithImpl<$Res>
    implements $SyncLogCopyWith<$Res> {
  _$SyncLogCopyWithImpl(this._self, this._then);

  final SyncLog _self;
  final $Res Function(SyncLog) _then;

/// Create a copy of SyncLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bookingsSynced = freezed,Object? parcelsSynced = freezed,Object? validationsSynced = freezed,Object? parcelNotificationsSynced = freezed,Object? conflictsCount = freezed,Object? errorsCount = freezed,Object? conflicts = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bookingsSynced: freezed == bookingsSynced ? _self.bookingsSynced : bookingsSynced // ignore: cast_nullable_to_non_nullable
as int?,parcelsSynced: freezed == parcelsSynced ? _self.parcelsSynced : parcelsSynced // ignore: cast_nullable_to_non_nullable
as int?,validationsSynced: freezed == validationsSynced ? _self.validationsSynced : validationsSynced // ignore: cast_nullable_to_non_nullable
as int?,parcelNotificationsSynced: freezed == parcelNotificationsSynced ? _self.parcelNotificationsSynced : parcelNotificationsSynced // ignore: cast_nullable_to_non_nullable
as int?,conflictsCount: freezed == conflictsCount ? _self.conflictsCount : conflictsCount // ignore: cast_nullable_to_non_nullable
as int?,errorsCount: freezed == errorsCount ? _self.errorsCount : errorsCount // ignore: cast_nullable_to_non_nullable
as int?,conflicts: null == conflicts ? _self.conflicts : conflicts // ignore: cast_nullable_to_non_nullable
as List<SyncConflict>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncLog].
extension SyncLogPatterns on SyncLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncLog value)  $default,){
final _that = this;
switch (_that) {
case _SyncLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncLog value)?  $default,){
final _that = this;
switch (_that) {
case _SyncLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'bookings_synced')  int? bookingsSynced, @JsonKey(name: 'parcels_synced')  int? parcelsSynced, @JsonKey(name: 'validations_synced')  int? validationsSynced, @JsonKey(name: 'parcel_notifications_synced')  int? parcelNotificationsSynced, @JsonKey(name: 'conflicts_count')  int? conflictsCount, @JsonKey(name: 'errors_count')  int? errorsCount,  List<SyncConflict> conflicts, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncLog() when $default != null:
return $default(_that.id,_that.bookingsSynced,_that.parcelsSynced,_that.validationsSynced,_that.parcelNotificationsSynced,_that.conflictsCount,_that.errorsCount,_that.conflicts,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'bookings_synced')  int? bookingsSynced, @JsonKey(name: 'parcels_synced')  int? parcelsSynced, @JsonKey(name: 'validations_synced')  int? validationsSynced, @JsonKey(name: 'parcel_notifications_synced')  int? parcelNotificationsSynced, @JsonKey(name: 'conflicts_count')  int? conflictsCount, @JsonKey(name: 'errors_count')  int? errorsCount,  List<SyncConflict> conflicts, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SyncLog():
return $default(_that.id,_that.bookingsSynced,_that.parcelsSynced,_that.validationsSynced,_that.parcelNotificationsSynced,_that.conflictsCount,_that.errorsCount,_that.conflicts,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'bookings_synced')  int? bookingsSynced, @JsonKey(name: 'parcels_synced')  int? parcelsSynced, @JsonKey(name: 'validations_synced')  int? validationsSynced, @JsonKey(name: 'parcel_notifications_synced')  int? parcelNotificationsSynced, @JsonKey(name: 'conflicts_count')  int? conflictsCount, @JsonKey(name: 'errors_count')  int? errorsCount,  List<SyncConflict> conflicts, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SyncLog() when $default != null:
return $default(_that.id,_that.bookingsSynced,_that.parcelsSynced,_that.validationsSynced,_that.parcelNotificationsSynced,_that.conflictsCount,_that.errorsCount,_that.conflicts,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncLog implements SyncLog {
  const _SyncLog({required this.id, @JsonKey(name: 'bookings_synced') this.bookingsSynced, @JsonKey(name: 'parcels_synced') this.parcelsSynced, @JsonKey(name: 'validations_synced') this.validationsSynced, @JsonKey(name: 'parcel_notifications_synced') this.parcelNotificationsSynced, @JsonKey(name: 'conflicts_count') this.conflictsCount, @JsonKey(name: 'errors_count') this.errorsCount, required final  List<SyncConflict> conflicts, @JsonKey(name: 'created_at') required this.createdAt}): _conflicts = conflicts;
  factory _SyncLog.fromJson(Map<String, dynamic> json) => _$SyncLogFromJson(json);

@override final  int id;
@override@JsonKey(name: 'bookings_synced') final  int? bookingsSynced;
@override@JsonKey(name: 'parcels_synced') final  int? parcelsSynced;
@override@JsonKey(name: 'validations_synced') final  int? validationsSynced;
@override@JsonKey(name: 'parcel_notifications_synced') final  int? parcelNotificationsSynced;
@override@JsonKey(name: 'conflicts_count') final  int? conflictsCount;
@override@JsonKey(name: 'errors_count') final  int? errorsCount;
 final  List<SyncConflict> _conflicts;
@override List<SyncConflict> get conflicts {
  if (_conflicts is EqualUnmodifiableListView) return _conflicts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conflicts);
}

@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of SyncLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncLogCopyWith<_SyncLog> get copyWith => __$SyncLogCopyWithImpl<_SyncLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncLog&&(identical(other.id, id) || other.id == id)&&(identical(other.bookingsSynced, bookingsSynced) || other.bookingsSynced == bookingsSynced)&&(identical(other.parcelsSynced, parcelsSynced) || other.parcelsSynced == parcelsSynced)&&(identical(other.validationsSynced, validationsSynced) || other.validationsSynced == validationsSynced)&&(identical(other.parcelNotificationsSynced, parcelNotificationsSynced) || other.parcelNotificationsSynced == parcelNotificationsSynced)&&(identical(other.conflictsCount, conflictsCount) || other.conflictsCount == conflictsCount)&&(identical(other.errorsCount, errorsCount) || other.errorsCount == errorsCount)&&const DeepCollectionEquality().equals(other._conflicts, _conflicts)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bookingsSynced,parcelsSynced,validationsSynced,parcelNotificationsSynced,conflictsCount,errorsCount,const DeepCollectionEquality().hash(_conflicts),createdAt);

@override
String toString() {
  return 'SyncLog(id: $id, bookingsSynced: $bookingsSynced, parcelsSynced: $parcelsSynced, validationsSynced: $validationsSynced, parcelNotificationsSynced: $parcelNotificationsSynced, conflictsCount: $conflictsCount, errorsCount: $errorsCount, conflicts: $conflicts, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SyncLogCopyWith<$Res> implements $SyncLogCopyWith<$Res> {
  factory _$SyncLogCopyWith(_SyncLog value, $Res Function(_SyncLog) _then) = __$SyncLogCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'bookings_synced') int? bookingsSynced,@JsonKey(name: 'parcels_synced') int? parcelsSynced,@JsonKey(name: 'validations_synced') int? validationsSynced,@JsonKey(name: 'parcel_notifications_synced') int? parcelNotificationsSynced,@JsonKey(name: 'conflicts_count') int? conflictsCount,@JsonKey(name: 'errors_count') int? errorsCount, List<SyncConflict> conflicts,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$SyncLogCopyWithImpl<$Res>
    implements _$SyncLogCopyWith<$Res> {
  __$SyncLogCopyWithImpl(this._self, this._then);

  final _SyncLog _self;
  final $Res Function(_SyncLog) _then;

/// Create a copy of SyncLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bookingsSynced = freezed,Object? parcelsSynced = freezed,Object? validationsSynced = freezed,Object? parcelNotificationsSynced = freezed,Object? conflictsCount = freezed,Object? errorsCount = freezed,Object? conflicts = null,Object? createdAt = null,}) {
  return _then(_SyncLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bookingsSynced: freezed == bookingsSynced ? _self.bookingsSynced : bookingsSynced // ignore: cast_nullable_to_non_nullable
as int?,parcelsSynced: freezed == parcelsSynced ? _self.parcelsSynced : parcelsSynced // ignore: cast_nullable_to_non_nullable
as int?,validationsSynced: freezed == validationsSynced ? _self.validationsSynced : validationsSynced // ignore: cast_nullable_to_non_nullable
as int?,parcelNotificationsSynced: freezed == parcelNotificationsSynced ? _self.parcelNotificationsSynced : parcelNotificationsSynced // ignore: cast_nullable_to_non_nullable
as int?,conflictsCount: freezed == conflictsCount ? _self.conflictsCount : conflictsCount // ignore: cast_nullable_to_non_nullable
as int?,errorsCount: freezed == errorsCount ? _self.errorsCount : errorsCount // ignore: cast_nullable_to_non_nullable
as int?,conflicts: null == conflicts ? _self._conflicts : conflicts // ignore: cast_nullable_to_non_nullable
as List<SyncConflict>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
