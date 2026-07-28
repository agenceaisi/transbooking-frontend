// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParcelHistoryEntry {

 Status62aEnum get status;@JsonKey(name: 'status_display') String get statusDisplay; String? get location; DateTime get timestamp; String? get note;
/// Create a copy of ParcelHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelHistoryEntryCopyWith<ParcelHistoryEntry> get copyWith => _$ParcelHistoryEntryCopyWithImpl<ParcelHistoryEntry>(this as ParcelHistoryEntry, _$identity);

  /// Serializes this ParcelHistoryEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelHistoryEntry&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.location, location) || other.location == location)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusDisplay,location,timestamp,note);

@override
String toString() {
  return 'ParcelHistoryEntry(status: $status, statusDisplay: $statusDisplay, location: $location, timestamp: $timestamp, note: $note)';
}


}

/// @nodoc
abstract mixin class $ParcelHistoryEntryCopyWith<$Res>  {
  factory $ParcelHistoryEntryCopyWith(ParcelHistoryEntry value, $Res Function(ParcelHistoryEntry) _then) = _$ParcelHistoryEntryCopyWithImpl;
@useResult
$Res call({
 Status62aEnum status,@JsonKey(name: 'status_display') String statusDisplay, String? location, DateTime timestamp, String? note
});




}
/// @nodoc
class _$ParcelHistoryEntryCopyWithImpl<$Res>
    implements $ParcelHistoryEntryCopyWith<$Res> {
  _$ParcelHistoryEntryCopyWithImpl(this._self, this._then);

  final ParcelHistoryEntry _self;
  final $Res Function(ParcelHistoryEntry) _then;

/// Create a copy of ParcelHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusDisplay = null,Object? location = freezed,Object? timestamp = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelHistoryEntry].
extension ParcelHistoryEntryPatterns on ParcelHistoryEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelHistoryEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelHistoryEntry value)  $default,){
final _that = this;
switch (_that) {
case _ParcelHistoryEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelHistoryEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status62aEnum status, @JsonKey(name: 'status_display')  String statusDisplay,  String? location,  DateTime timestamp,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelHistoryEntry() when $default != null:
return $default(_that.status,_that.statusDisplay,_that.location,_that.timestamp,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status62aEnum status, @JsonKey(name: 'status_display')  String statusDisplay,  String? location,  DateTime timestamp,  String? note)  $default,) {final _that = this;
switch (_that) {
case _ParcelHistoryEntry():
return $default(_that.status,_that.statusDisplay,_that.location,_that.timestamp,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status62aEnum status, @JsonKey(name: 'status_display')  String statusDisplay,  String? location,  DateTime timestamp,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _ParcelHistoryEntry() when $default != null:
return $default(_that.status,_that.statusDisplay,_that.location,_that.timestamp,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelHistoryEntry implements ParcelHistoryEntry {
  const _ParcelHistoryEntry({required this.status, @JsonKey(name: 'status_display') required this.statusDisplay, required this.location, required this.timestamp, required this.note});
  factory _ParcelHistoryEntry.fromJson(Map<String, dynamic> json) => _$ParcelHistoryEntryFromJson(json);

@override final  Status62aEnum status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override final  String? location;
@override final  DateTime timestamp;
@override final  String? note;

/// Create a copy of ParcelHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelHistoryEntryCopyWith<_ParcelHistoryEntry> get copyWith => __$ParcelHistoryEntryCopyWithImpl<_ParcelHistoryEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelHistoryEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelHistoryEntry&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.location, location) || other.location == location)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusDisplay,location,timestamp,note);

@override
String toString() {
  return 'ParcelHistoryEntry(status: $status, statusDisplay: $statusDisplay, location: $location, timestamp: $timestamp, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ParcelHistoryEntryCopyWith<$Res> implements $ParcelHistoryEntryCopyWith<$Res> {
  factory _$ParcelHistoryEntryCopyWith(_ParcelHistoryEntry value, $Res Function(_ParcelHistoryEntry) _then) = __$ParcelHistoryEntryCopyWithImpl;
@override @useResult
$Res call({
 Status62aEnum status,@JsonKey(name: 'status_display') String statusDisplay, String? location, DateTime timestamp, String? note
});




}
/// @nodoc
class __$ParcelHistoryEntryCopyWithImpl<$Res>
    implements _$ParcelHistoryEntryCopyWith<$Res> {
  __$ParcelHistoryEntryCopyWithImpl(this._self, this._then);

  final _ParcelHistoryEntry _self;
  final $Res Function(_ParcelHistoryEntry) _then;

/// Create a copy of ParcelHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusDisplay = null,Object? location = freezed,Object? timestamp = null,Object? note = freezed,}) {
  return _then(_ParcelHistoryEntry(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
