// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_tracking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParcelTracking {

 String get trackingNumber; String get statusDisplay; ParcelStage? get stage; String get originCity; String get destinationCity; String get recipientName;/// Téléphone du destinataire, **déjà masqué** par le serveur.
 String get recipientPhone;/// Position actuelle du colis (bandeau « statut actuel »).
 String? get currentLocation;/// Date de livraison estimée renvoyée par l'API.
 DateTime? get estimatedDelivery;/// Historique horodaté renvoyé par l'API (chronologique).
 List<ParcelHistoryEvent> get history;
/// Create a copy of ParcelTracking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelTrackingCopyWith<ParcelTracking> get copyWith => _$ParcelTrackingCopyWithImpl<ParcelTracking>(this as ParcelTracking, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelTracking&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.estimatedDelivery, estimatedDelivery) || other.estimatedDelivery == estimatedDelivery)&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,trackingNumber,statusDisplay,stage,originCity,destinationCity,recipientName,recipientPhone,currentLocation,estimatedDelivery,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'ParcelTracking(trackingNumber: $trackingNumber, statusDisplay: $statusDisplay, stage: $stage, originCity: $originCity, destinationCity: $destinationCity, recipientName: $recipientName, recipientPhone: $recipientPhone, currentLocation: $currentLocation, estimatedDelivery: $estimatedDelivery, history: $history)';
}


}

/// @nodoc
abstract mixin class $ParcelTrackingCopyWith<$Res>  {
  factory $ParcelTrackingCopyWith(ParcelTracking value, $Res Function(ParcelTracking) _then) = _$ParcelTrackingCopyWithImpl;
@useResult
$Res call({
 String trackingNumber, String statusDisplay, ParcelStage? stage, String originCity, String destinationCity, String recipientName, String recipientPhone, String? currentLocation, DateTime? estimatedDelivery, List<ParcelHistoryEvent> history
});




}
/// @nodoc
class _$ParcelTrackingCopyWithImpl<$Res>
    implements $ParcelTrackingCopyWith<$Res> {
  _$ParcelTrackingCopyWithImpl(this._self, this._then);

  final ParcelTracking _self;
  final $Res Function(ParcelTracking) _then;

/// Create a copy of ParcelTracking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackingNumber = null,Object? statusDisplay = null,Object? stage = freezed,Object? originCity = null,Object? destinationCity = null,Object? recipientName = null,Object? recipientPhone = null,Object? currentLocation = freezed,Object? estimatedDelivery = freezed,Object? history = null,}) {
  return _then(_self.copyWith(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ParcelStage?,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,estimatedDelivery: freezed == estimatedDelivery ? _self.estimatedDelivery : estimatedDelivery // ignore: cast_nullable_to_non_nullable
as DateTime?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<ParcelHistoryEvent>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelTracking].
extension ParcelTrackingPatterns on ParcelTracking {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelTracking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelTracking() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelTracking value)  $default,){
final _that = this;
switch (_that) {
case _ParcelTracking():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelTracking value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelTracking() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String trackingNumber,  String statusDisplay,  ParcelStage? stage,  String originCity,  String destinationCity,  String recipientName,  String recipientPhone,  String? currentLocation,  DateTime? estimatedDelivery,  List<ParcelHistoryEvent> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelTracking() when $default != null:
return $default(_that.trackingNumber,_that.statusDisplay,_that.stage,_that.originCity,_that.destinationCity,_that.recipientName,_that.recipientPhone,_that.currentLocation,_that.estimatedDelivery,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String trackingNumber,  String statusDisplay,  ParcelStage? stage,  String originCity,  String destinationCity,  String recipientName,  String recipientPhone,  String? currentLocation,  DateTime? estimatedDelivery,  List<ParcelHistoryEvent> history)  $default,) {final _that = this;
switch (_that) {
case _ParcelTracking():
return $default(_that.trackingNumber,_that.statusDisplay,_that.stage,_that.originCity,_that.destinationCity,_that.recipientName,_that.recipientPhone,_that.currentLocation,_that.estimatedDelivery,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String trackingNumber,  String statusDisplay,  ParcelStage? stage,  String originCity,  String destinationCity,  String recipientName,  String recipientPhone,  String? currentLocation,  DateTime? estimatedDelivery,  List<ParcelHistoryEvent> history)?  $default,) {final _that = this;
switch (_that) {
case _ParcelTracking() when $default != null:
return $default(_that.trackingNumber,_that.statusDisplay,_that.stage,_that.originCity,_that.destinationCity,_that.recipientName,_that.recipientPhone,_that.currentLocation,_that.estimatedDelivery,_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelTracking extends ParcelTracking {
  const _ParcelTracking({required this.trackingNumber, required this.statusDisplay, this.stage, required this.originCity, required this.destinationCity, required this.recipientName, required this.recipientPhone, this.currentLocation, this.estimatedDelivery, final  List<ParcelHistoryEvent> history = const <ParcelHistoryEvent>[]}): _history = history,super._();
  

@override final  String trackingNumber;
@override final  String statusDisplay;
@override final  ParcelStage? stage;
@override final  String originCity;
@override final  String destinationCity;
@override final  String recipientName;
/// Téléphone du destinataire, **déjà masqué** par le serveur.
@override final  String recipientPhone;
/// Position actuelle du colis (bandeau « statut actuel »).
@override final  String? currentLocation;
/// Date de livraison estimée renvoyée par l'API.
@override final  DateTime? estimatedDelivery;
/// Historique horodaté renvoyé par l'API (chronologique).
 final  List<ParcelHistoryEvent> _history;
/// Historique horodaté renvoyé par l'API (chronologique).
@override@JsonKey() List<ParcelHistoryEvent> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of ParcelTracking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelTrackingCopyWith<_ParcelTracking> get copyWith => __$ParcelTrackingCopyWithImpl<_ParcelTracking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelTracking&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.estimatedDelivery, estimatedDelivery) || other.estimatedDelivery == estimatedDelivery)&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,trackingNumber,statusDisplay,stage,originCity,destinationCity,recipientName,recipientPhone,currentLocation,estimatedDelivery,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'ParcelTracking(trackingNumber: $trackingNumber, statusDisplay: $statusDisplay, stage: $stage, originCity: $originCity, destinationCity: $destinationCity, recipientName: $recipientName, recipientPhone: $recipientPhone, currentLocation: $currentLocation, estimatedDelivery: $estimatedDelivery, history: $history)';
}


}

/// @nodoc
abstract mixin class _$ParcelTrackingCopyWith<$Res> implements $ParcelTrackingCopyWith<$Res> {
  factory _$ParcelTrackingCopyWith(_ParcelTracking value, $Res Function(_ParcelTracking) _then) = __$ParcelTrackingCopyWithImpl;
@override @useResult
$Res call({
 String trackingNumber, String statusDisplay, ParcelStage? stage, String originCity, String destinationCity, String recipientName, String recipientPhone, String? currentLocation, DateTime? estimatedDelivery, List<ParcelHistoryEvent> history
});




}
/// @nodoc
class __$ParcelTrackingCopyWithImpl<$Res>
    implements _$ParcelTrackingCopyWith<$Res> {
  __$ParcelTrackingCopyWithImpl(this._self, this._then);

  final _ParcelTracking _self;
  final $Res Function(_ParcelTracking) _then;

/// Create a copy of ParcelTracking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackingNumber = null,Object? statusDisplay = null,Object? stage = freezed,Object? originCity = null,Object? destinationCity = null,Object? recipientName = null,Object? recipientPhone = null,Object? currentLocation = freezed,Object? estimatedDelivery = freezed,Object? history = null,}) {
  return _then(_ParcelTracking(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ParcelStage?,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,estimatedDelivery: freezed == estimatedDelivery ? _self.estimatedDelivery : estimatedDelivery // ignore: cast_nullable_to_non_nullable
as DateTime?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<ParcelHistoryEvent>,
  ));
}


}

// dart format on
