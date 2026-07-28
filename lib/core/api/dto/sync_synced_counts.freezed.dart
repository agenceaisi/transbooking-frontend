// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_synced_counts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncSyncedCounts {

 int get bookings; int get parcels; int get validations;@JsonKey(name: 'parcel_notifications') int get parcelNotifications;
/// Create a copy of SyncSyncedCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncSyncedCountsCopyWith<SyncSyncedCounts> get copyWith => _$SyncSyncedCountsCopyWithImpl<SyncSyncedCounts>(this as SyncSyncedCounts, _$identity);

  /// Serializes this SyncSyncedCounts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncSyncedCounts&&(identical(other.bookings, bookings) || other.bookings == bookings)&&(identical(other.parcels, parcels) || other.parcels == parcels)&&(identical(other.validations, validations) || other.validations == validations)&&(identical(other.parcelNotifications, parcelNotifications) || other.parcelNotifications == parcelNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookings,parcels,validations,parcelNotifications);

@override
String toString() {
  return 'SyncSyncedCounts(bookings: $bookings, parcels: $parcels, validations: $validations, parcelNotifications: $parcelNotifications)';
}


}

/// @nodoc
abstract mixin class $SyncSyncedCountsCopyWith<$Res>  {
  factory $SyncSyncedCountsCopyWith(SyncSyncedCounts value, $Res Function(SyncSyncedCounts) _then) = _$SyncSyncedCountsCopyWithImpl;
@useResult
$Res call({
 int bookings, int parcels, int validations,@JsonKey(name: 'parcel_notifications') int parcelNotifications
});




}
/// @nodoc
class _$SyncSyncedCountsCopyWithImpl<$Res>
    implements $SyncSyncedCountsCopyWith<$Res> {
  _$SyncSyncedCountsCopyWithImpl(this._self, this._then);

  final SyncSyncedCounts _self;
  final $Res Function(SyncSyncedCounts) _then;

/// Create a copy of SyncSyncedCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookings = null,Object? parcels = null,Object? validations = null,Object? parcelNotifications = null,}) {
  return _then(_self.copyWith(
bookings: null == bookings ? _self.bookings : bookings // ignore: cast_nullable_to_non_nullable
as int,parcels: null == parcels ? _self.parcels : parcels // ignore: cast_nullable_to_non_nullable
as int,validations: null == validations ? _self.validations : validations // ignore: cast_nullable_to_non_nullable
as int,parcelNotifications: null == parcelNotifications ? _self.parcelNotifications : parcelNotifications // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncSyncedCounts].
extension SyncSyncedCountsPatterns on SyncSyncedCounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncSyncedCounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncSyncedCounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncSyncedCounts value)  $default,){
final _that = this;
switch (_that) {
case _SyncSyncedCounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncSyncedCounts value)?  $default,){
final _that = this;
switch (_that) {
case _SyncSyncedCounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bookings,  int parcels,  int validations, @JsonKey(name: 'parcel_notifications')  int parcelNotifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncSyncedCounts() when $default != null:
return $default(_that.bookings,_that.parcels,_that.validations,_that.parcelNotifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bookings,  int parcels,  int validations, @JsonKey(name: 'parcel_notifications')  int parcelNotifications)  $default,) {final _that = this;
switch (_that) {
case _SyncSyncedCounts():
return $default(_that.bookings,_that.parcels,_that.validations,_that.parcelNotifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bookings,  int parcels,  int validations, @JsonKey(name: 'parcel_notifications')  int parcelNotifications)?  $default,) {final _that = this;
switch (_that) {
case _SyncSyncedCounts() when $default != null:
return $default(_that.bookings,_that.parcels,_that.validations,_that.parcelNotifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncSyncedCounts implements SyncSyncedCounts {
  const _SyncSyncedCounts({required this.bookings, required this.parcels, required this.validations, @JsonKey(name: 'parcel_notifications') required this.parcelNotifications});
  factory _SyncSyncedCounts.fromJson(Map<String, dynamic> json) => _$SyncSyncedCountsFromJson(json);

@override final  int bookings;
@override final  int parcels;
@override final  int validations;
@override@JsonKey(name: 'parcel_notifications') final  int parcelNotifications;

/// Create a copy of SyncSyncedCounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncSyncedCountsCopyWith<_SyncSyncedCounts> get copyWith => __$SyncSyncedCountsCopyWithImpl<_SyncSyncedCounts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncSyncedCountsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncSyncedCounts&&(identical(other.bookings, bookings) || other.bookings == bookings)&&(identical(other.parcels, parcels) || other.parcels == parcels)&&(identical(other.validations, validations) || other.validations == validations)&&(identical(other.parcelNotifications, parcelNotifications) || other.parcelNotifications == parcelNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookings,parcels,validations,parcelNotifications);

@override
String toString() {
  return 'SyncSyncedCounts(bookings: $bookings, parcels: $parcels, validations: $validations, parcelNotifications: $parcelNotifications)';
}


}

/// @nodoc
abstract mixin class _$SyncSyncedCountsCopyWith<$Res> implements $SyncSyncedCountsCopyWith<$Res> {
  factory _$SyncSyncedCountsCopyWith(_SyncSyncedCounts value, $Res Function(_SyncSyncedCounts) _then) = __$SyncSyncedCountsCopyWithImpl;
@override @useResult
$Res call({
 int bookings, int parcels, int validations,@JsonKey(name: 'parcel_notifications') int parcelNotifications
});




}
/// @nodoc
class __$SyncSyncedCountsCopyWithImpl<$Res>
    implements _$SyncSyncedCountsCopyWith<$Res> {
  __$SyncSyncedCountsCopyWithImpl(this._self, this._then);

  final _SyncSyncedCounts _self;
  final $Res Function(_SyncSyncedCounts) _then;

/// Create a copy of SyncSyncedCounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookings = null,Object? parcels = null,Object? validations = null,Object? parcelNotifications = null,}) {
  return _then(_SyncSyncedCounts(
bookings: null == bookings ? _self.bookings : bookings // ignore: cast_nullable_to_non_nullable
as int,parcels: null == parcels ? _self.parcels : parcels // ignore: cast_nullable_to_non_nullable
as int,validations: null == validations ? _self.validations : validations // ignore: cast_nullable_to_non_nullable
as int,parcelNotifications: null == parcelNotifications ? _self.parcelNotifications : parcelNotifications // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
