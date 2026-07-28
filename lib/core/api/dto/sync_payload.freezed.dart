// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncPayload {

 List<OfflineBooking>? get bookings; List<OfflineParcel>? get parcels; List<OfflineValidation>? get validations;@JsonKey(name: 'parcel_notifications') List<OfflineParcelNotification>? get parcelNotifications;
/// Create a copy of SyncPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncPayloadCopyWith<SyncPayload> get copyWith => _$SyncPayloadCopyWithImpl<SyncPayload>(this as SyncPayload, _$identity);

  /// Serializes this SyncPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncPayload&&const DeepCollectionEquality().equals(other.bookings, bookings)&&const DeepCollectionEquality().equals(other.parcels, parcels)&&const DeepCollectionEquality().equals(other.validations, validations)&&const DeepCollectionEquality().equals(other.parcelNotifications, parcelNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bookings),const DeepCollectionEquality().hash(parcels),const DeepCollectionEquality().hash(validations),const DeepCollectionEquality().hash(parcelNotifications));

@override
String toString() {
  return 'SyncPayload(bookings: $bookings, parcels: $parcels, validations: $validations, parcelNotifications: $parcelNotifications)';
}


}

/// @nodoc
abstract mixin class $SyncPayloadCopyWith<$Res>  {
  factory $SyncPayloadCopyWith(SyncPayload value, $Res Function(SyncPayload) _then) = _$SyncPayloadCopyWithImpl;
@useResult
$Res call({
 List<OfflineBooking>? bookings, List<OfflineParcel>? parcels, List<OfflineValidation>? validations,@JsonKey(name: 'parcel_notifications') List<OfflineParcelNotification>? parcelNotifications
});




}
/// @nodoc
class _$SyncPayloadCopyWithImpl<$Res>
    implements $SyncPayloadCopyWith<$Res> {
  _$SyncPayloadCopyWithImpl(this._self, this._then);

  final SyncPayload _self;
  final $Res Function(SyncPayload) _then;

/// Create a copy of SyncPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookings = freezed,Object? parcels = freezed,Object? validations = freezed,Object? parcelNotifications = freezed,}) {
  return _then(_self.copyWith(
bookings: freezed == bookings ? _self.bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<OfflineBooking>?,parcels: freezed == parcels ? _self.parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<OfflineParcel>?,validations: freezed == validations ? _self.validations : validations // ignore: cast_nullable_to_non_nullable
as List<OfflineValidation>?,parcelNotifications: freezed == parcelNotifications ? _self.parcelNotifications : parcelNotifications // ignore: cast_nullable_to_non_nullable
as List<OfflineParcelNotification>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncPayload].
extension SyncPayloadPatterns on SyncPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncPayload value)  $default,){
final _that = this;
switch (_that) {
case _SyncPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncPayload value)?  $default,){
final _that = this;
switch (_that) {
case _SyncPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OfflineBooking>? bookings,  List<OfflineParcel>? parcels,  List<OfflineValidation>? validations, @JsonKey(name: 'parcel_notifications')  List<OfflineParcelNotification>? parcelNotifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncPayload() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OfflineBooking>? bookings,  List<OfflineParcel>? parcels,  List<OfflineValidation>? validations, @JsonKey(name: 'parcel_notifications')  List<OfflineParcelNotification>? parcelNotifications)  $default,) {final _that = this;
switch (_that) {
case _SyncPayload():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OfflineBooking>? bookings,  List<OfflineParcel>? parcels,  List<OfflineValidation>? validations, @JsonKey(name: 'parcel_notifications')  List<OfflineParcelNotification>? parcelNotifications)?  $default,) {final _that = this;
switch (_that) {
case _SyncPayload() when $default != null:
return $default(_that.bookings,_that.parcels,_that.validations,_that.parcelNotifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncPayload implements SyncPayload {
  const _SyncPayload({final  List<OfflineBooking>? bookings, final  List<OfflineParcel>? parcels, final  List<OfflineValidation>? validations, @JsonKey(name: 'parcel_notifications') final  List<OfflineParcelNotification>? parcelNotifications}): _bookings = bookings,_parcels = parcels,_validations = validations,_parcelNotifications = parcelNotifications;
  factory _SyncPayload.fromJson(Map<String, dynamic> json) => _$SyncPayloadFromJson(json);

 final  List<OfflineBooking>? _bookings;
@override List<OfflineBooking>? get bookings {
  final value = _bookings;
  if (value == null) return null;
  if (_bookings is EqualUnmodifiableListView) return _bookings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OfflineParcel>? _parcels;
@override List<OfflineParcel>? get parcels {
  final value = _parcels;
  if (value == null) return null;
  if (_parcels is EqualUnmodifiableListView) return _parcels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OfflineValidation>? _validations;
@override List<OfflineValidation>? get validations {
  final value = _validations;
  if (value == null) return null;
  if (_validations is EqualUnmodifiableListView) return _validations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OfflineParcelNotification>? _parcelNotifications;
@override@JsonKey(name: 'parcel_notifications') List<OfflineParcelNotification>? get parcelNotifications {
  final value = _parcelNotifications;
  if (value == null) return null;
  if (_parcelNotifications is EqualUnmodifiableListView) return _parcelNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SyncPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncPayloadCopyWith<_SyncPayload> get copyWith => __$SyncPayloadCopyWithImpl<_SyncPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncPayload&&const DeepCollectionEquality().equals(other._bookings, _bookings)&&const DeepCollectionEquality().equals(other._parcels, _parcels)&&const DeepCollectionEquality().equals(other._validations, _validations)&&const DeepCollectionEquality().equals(other._parcelNotifications, _parcelNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bookings),const DeepCollectionEquality().hash(_parcels),const DeepCollectionEquality().hash(_validations),const DeepCollectionEquality().hash(_parcelNotifications));

@override
String toString() {
  return 'SyncPayload(bookings: $bookings, parcels: $parcels, validations: $validations, parcelNotifications: $parcelNotifications)';
}


}

/// @nodoc
abstract mixin class _$SyncPayloadCopyWith<$Res> implements $SyncPayloadCopyWith<$Res> {
  factory _$SyncPayloadCopyWith(_SyncPayload value, $Res Function(_SyncPayload) _then) = __$SyncPayloadCopyWithImpl;
@override @useResult
$Res call({
 List<OfflineBooking>? bookings, List<OfflineParcel>? parcels, List<OfflineValidation>? validations,@JsonKey(name: 'parcel_notifications') List<OfflineParcelNotification>? parcelNotifications
});




}
/// @nodoc
class __$SyncPayloadCopyWithImpl<$Res>
    implements _$SyncPayloadCopyWith<$Res> {
  __$SyncPayloadCopyWithImpl(this._self, this._then);

  final _SyncPayload _self;
  final $Res Function(_SyncPayload) _then;

/// Create a copy of SyncPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookings = freezed,Object? parcels = freezed,Object? validations = freezed,Object? parcelNotifications = freezed,}) {
  return _then(_SyncPayload(
bookings: freezed == bookings ? _self._bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<OfflineBooking>?,parcels: freezed == parcels ? _self._parcels : parcels // ignore: cast_nullable_to_non_nullable
as List<OfflineParcel>?,validations: freezed == validations ? _self._validations : validations // ignore: cast_nullable_to_non_nullable
as List<OfflineValidation>?,parcelNotifications: freezed == parcelNotifications ? _self._parcelNotifications : parcelNotifications // ignore: cast_nullable_to_non_nullable
as List<OfflineParcelNotification>?,
  ));
}


}

// dart format on
