// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParcelTrack {

@JsonKey(name: 'tracking_number') String get trackingNumber; Status62aEnum? get status;@JsonKey(name: 'status_display') String get statusDisplay;@JsonKey(name: 'origin_city') String get originCity;@JsonKey(name: 'destination_city') String get destinationCity;@JsonKey(name: 'recipient_name') String get recipientName;@JsonKey(name: 'recipient_phone') String get recipientPhone;@JsonKey(name: 'current_location') String? get currentLocation;@JsonKey(name: 'estimated_delivery') DateTime? get estimatedDelivery; List<ParcelHistoryEntry> get history;
/// Create a copy of ParcelTrack
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelTrackCopyWith<ParcelTrack> get copyWith => _$ParcelTrackCopyWithImpl<ParcelTrack>(this as ParcelTrack, _$identity);

  /// Serializes this ParcelTrack to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelTrack&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.estimatedDelivery, estimatedDelivery) || other.estimatedDelivery == estimatedDelivery)&&const DeepCollectionEquality().equals(other.history, history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,status,statusDisplay,originCity,destinationCity,recipientName,recipientPhone,currentLocation,estimatedDelivery,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'ParcelTrack(trackingNumber: $trackingNumber, status: $status, statusDisplay: $statusDisplay, originCity: $originCity, destinationCity: $destinationCity, recipientName: $recipientName, recipientPhone: $recipientPhone, currentLocation: $currentLocation, estimatedDelivery: $estimatedDelivery, history: $history)';
}


}

/// @nodoc
abstract mixin class $ParcelTrackCopyWith<$Res>  {
  factory $ParcelTrackCopyWith(ParcelTrack value, $Res Function(ParcelTrack) _then) = _$ParcelTrackCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tracking_number') String trackingNumber, Status62aEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone,@JsonKey(name: 'current_location') String? currentLocation,@JsonKey(name: 'estimated_delivery') DateTime? estimatedDelivery, List<ParcelHistoryEntry> history
});




}
/// @nodoc
class _$ParcelTrackCopyWithImpl<$Res>
    implements $ParcelTrackCopyWith<$Res> {
  _$ParcelTrackCopyWithImpl(this._self, this._then);

  final ParcelTrack _self;
  final $Res Function(ParcelTrack) _then;

/// Create a copy of ParcelTrack
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackingNumber = null,Object? status = freezed,Object? statusDisplay = null,Object? originCity = null,Object? destinationCity = null,Object? recipientName = null,Object? recipientPhone = null,Object? currentLocation = freezed,Object? estimatedDelivery = freezed,Object? history = null,}) {
  return _then(_self.copyWith(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,estimatedDelivery: freezed == estimatedDelivery ? _self.estimatedDelivery : estimatedDelivery // ignore: cast_nullable_to_non_nullable
as DateTime?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<ParcelHistoryEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelTrack].
extension ParcelTrackPatterns on ParcelTrack {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelTrack value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelTrack() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelTrack value)  $default,){
final _that = this;
switch (_that) {
case _ParcelTrack():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelTrack value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelTrack() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tracking_number')  String trackingNumber,  Status62aEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'current_location')  String? currentLocation, @JsonKey(name: 'estimated_delivery')  DateTime? estimatedDelivery,  List<ParcelHistoryEntry> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelTrack() when $default != null:
return $default(_that.trackingNumber,_that.status,_that.statusDisplay,_that.originCity,_that.destinationCity,_that.recipientName,_that.recipientPhone,_that.currentLocation,_that.estimatedDelivery,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tracking_number')  String trackingNumber,  Status62aEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'current_location')  String? currentLocation, @JsonKey(name: 'estimated_delivery')  DateTime? estimatedDelivery,  List<ParcelHistoryEntry> history)  $default,) {final _that = this;
switch (_that) {
case _ParcelTrack():
return $default(_that.trackingNumber,_that.status,_that.statusDisplay,_that.originCity,_that.destinationCity,_that.recipientName,_that.recipientPhone,_that.currentLocation,_that.estimatedDelivery,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tracking_number')  String trackingNumber,  Status62aEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'current_location')  String? currentLocation, @JsonKey(name: 'estimated_delivery')  DateTime? estimatedDelivery,  List<ParcelHistoryEntry> history)?  $default,) {final _that = this;
switch (_that) {
case _ParcelTrack() when $default != null:
return $default(_that.trackingNumber,_that.status,_that.statusDisplay,_that.originCity,_that.destinationCity,_that.recipientName,_that.recipientPhone,_that.currentLocation,_that.estimatedDelivery,_that.history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelTrack implements ParcelTrack {
  const _ParcelTrack({@JsonKey(name: 'tracking_number') required this.trackingNumber, this.status, @JsonKey(name: 'status_display') required this.statusDisplay, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'destination_city') required this.destinationCity, @JsonKey(name: 'recipient_name') required this.recipientName, @JsonKey(name: 'recipient_phone') required this.recipientPhone, @JsonKey(name: 'current_location') required this.currentLocation, @JsonKey(name: 'estimated_delivery') required this.estimatedDelivery, required final  List<ParcelHistoryEntry> history}): _history = history;
  factory _ParcelTrack.fromJson(Map<String, dynamic> json) => _$ParcelTrackFromJson(json);

@override@JsonKey(name: 'tracking_number') final  String trackingNumber;
@override final  Status62aEnum? status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override@JsonKey(name: 'origin_city') final  String originCity;
@override@JsonKey(name: 'destination_city') final  String destinationCity;
@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override@JsonKey(name: 'recipient_phone') final  String recipientPhone;
@override@JsonKey(name: 'current_location') final  String? currentLocation;
@override@JsonKey(name: 'estimated_delivery') final  DateTime? estimatedDelivery;
 final  List<ParcelHistoryEntry> _history;
@override List<ParcelHistoryEntry> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of ParcelTrack
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelTrackCopyWith<_ParcelTrack> get copyWith => __$ParcelTrackCopyWithImpl<_ParcelTrack>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelTrackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelTrack&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.estimatedDelivery, estimatedDelivery) || other.estimatedDelivery == estimatedDelivery)&&const DeepCollectionEquality().equals(other._history, _history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,status,statusDisplay,originCity,destinationCity,recipientName,recipientPhone,currentLocation,estimatedDelivery,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'ParcelTrack(trackingNumber: $trackingNumber, status: $status, statusDisplay: $statusDisplay, originCity: $originCity, destinationCity: $destinationCity, recipientName: $recipientName, recipientPhone: $recipientPhone, currentLocation: $currentLocation, estimatedDelivery: $estimatedDelivery, history: $history)';
}


}

/// @nodoc
abstract mixin class _$ParcelTrackCopyWith<$Res> implements $ParcelTrackCopyWith<$Res> {
  factory _$ParcelTrackCopyWith(_ParcelTrack value, $Res Function(_ParcelTrack) _then) = __$ParcelTrackCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tracking_number') String trackingNumber, Status62aEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone,@JsonKey(name: 'current_location') String? currentLocation,@JsonKey(name: 'estimated_delivery') DateTime? estimatedDelivery, List<ParcelHistoryEntry> history
});




}
/// @nodoc
class __$ParcelTrackCopyWithImpl<$Res>
    implements _$ParcelTrackCopyWith<$Res> {
  __$ParcelTrackCopyWithImpl(this._self, this._then);

  final _ParcelTrack _self;
  final $Res Function(_ParcelTrack) _then;

/// Create a copy of ParcelTrack
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackingNumber = null,Object? status = freezed,Object? statusDisplay = null,Object? originCity = null,Object? destinationCity = null,Object? recipientName = null,Object? recipientPhone = null,Object? currentLocation = freezed,Object? estimatedDelivery = freezed,Object? history = null,}) {
  return _then(_ParcelTrack(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,estimatedDelivery: freezed == estimatedDelivery ? _self.estimatedDelivery : estimatedDelivery // ignore: cast_nullable_to_non_nullable
as DateTime?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<ParcelHistoryEntry>,
  ));
}


}

// dart format on
