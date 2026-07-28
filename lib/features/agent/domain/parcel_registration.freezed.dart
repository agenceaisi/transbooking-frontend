// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParcelRegistration {

 String get trackingNumber; String get senderName; String get recipientName; String get originCity; String get destinationCity; String get nature; String get weightKg; bool get isOffline; String? get tariff; String? get qrCode;
/// Create a copy of ParcelRegistration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelRegistrationCopyWith<ParcelRegistration> get copyWith => _$ParcelRegistrationCopyWithImpl<ParcelRegistration>(this as ParcelRegistration, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelRegistration&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.tariff, tariff) || other.tariff == tariff)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}


@override
int get hashCode => Object.hash(runtimeType,trackingNumber,senderName,recipientName,originCity,destinationCity,nature,weightKg,isOffline,tariff,qrCode);

@override
String toString() {
  return 'ParcelRegistration(trackingNumber: $trackingNumber, senderName: $senderName, recipientName: $recipientName, originCity: $originCity, destinationCity: $destinationCity, nature: $nature, weightKg: $weightKg, isOffline: $isOffline, tariff: $tariff, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class $ParcelRegistrationCopyWith<$Res>  {
  factory $ParcelRegistrationCopyWith(ParcelRegistration value, $Res Function(ParcelRegistration) _then) = _$ParcelRegistrationCopyWithImpl;
@useResult
$Res call({
 String trackingNumber, String senderName, String recipientName, String originCity, String destinationCity, String nature, String weightKg, bool isOffline, String? tariff, String? qrCode
});




}
/// @nodoc
class _$ParcelRegistrationCopyWithImpl<$Res>
    implements $ParcelRegistrationCopyWith<$Res> {
  _$ParcelRegistrationCopyWithImpl(this._self, this._then);

  final ParcelRegistration _self;
  final $Res Function(ParcelRegistration) _then;

/// Create a copy of ParcelRegistration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackingNumber = null,Object? senderName = null,Object? recipientName = null,Object? originCity = null,Object? destinationCity = null,Object? nature = null,Object? weightKg = null,Object? isOffline = null,Object? tariff = freezed,Object? qrCode = freezed,}) {
  return _then(_self.copyWith(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,tariff: freezed == tariff ? _self.tariff : tariff // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelRegistration].
extension ParcelRegistrationPatterns on ParcelRegistration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelRegistration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelRegistration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelRegistration value)  $default,){
final _that = this;
switch (_that) {
case _ParcelRegistration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelRegistration value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelRegistration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String trackingNumber,  String senderName,  String recipientName,  String originCity,  String destinationCity,  String nature,  String weightKg,  bool isOffline,  String? tariff,  String? qrCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelRegistration() when $default != null:
return $default(_that.trackingNumber,_that.senderName,_that.recipientName,_that.originCity,_that.destinationCity,_that.nature,_that.weightKg,_that.isOffline,_that.tariff,_that.qrCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String trackingNumber,  String senderName,  String recipientName,  String originCity,  String destinationCity,  String nature,  String weightKg,  bool isOffline,  String? tariff,  String? qrCode)  $default,) {final _that = this;
switch (_that) {
case _ParcelRegistration():
return $default(_that.trackingNumber,_that.senderName,_that.recipientName,_that.originCity,_that.destinationCity,_that.nature,_that.weightKg,_that.isOffline,_that.tariff,_that.qrCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String trackingNumber,  String senderName,  String recipientName,  String originCity,  String destinationCity,  String nature,  String weightKg,  bool isOffline,  String? tariff,  String? qrCode)?  $default,) {final _that = this;
switch (_that) {
case _ParcelRegistration() when $default != null:
return $default(_that.trackingNumber,_that.senderName,_that.recipientName,_that.originCity,_that.destinationCity,_that.nature,_that.weightKg,_that.isOffline,_that.tariff,_that.qrCode);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelRegistration implements ParcelRegistration {
  const _ParcelRegistration({required this.trackingNumber, required this.senderName, required this.recipientName, required this.originCity, required this.destinationCity, required this.nature, required this.weightKg, required this.isOffline, this.tariff, this.qrCode});
  

@override final  String trackingNumber;
@override final  String senderName;
@override final  String recipientName;
@override final  String originCity;
@override final  String destinationCity;
@override final  String nature;
@override final  String weightKg;
@override final  bool isOffline;
@override final  String? tariff;
@override final  String? qrCode;

/// Create a copy of ParcelRegistration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelRegistrationCopyWith<_ParcelRegistration> get copyWith => __$ParcelRegistrationCopyWithImpl<_ParcelRegistration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelRegistration&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.tariff, tariff) || other.tariff == tariff)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}


@override
int get hashCode => Object.hash(runtimeType,trackingNumber,senderName,recipientName,originCity,destinationCity,nature,weightKg,isOffline,tariff,qrCode);

@override
String toString() {
  return 'ParcelRegistration(trackingNumber: $trackingNumber, senderName: $senderName, recipientName: $recipientName, originCity: $originCity, destinationCity: $destinationCity, nature: $nature, weightKg: $weightKg, isOffline: $isOffline, tariff: $tariff, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$ParcelRegistrationCopyWith<$Res> implements $ParcelRegistrationCopyWith<$Res> {
  factory _$ParcelRegistrationCopyWith(_ParcelRegistration value, $Res Function(_ParcelRegistration) _then) = __$ParcelRegistrationCopyWithImpl;
@override @useResult
$Res call({
 String trackingNumber, String senderName, String recipientName, String originCity, String destinationCity, String nature, String weightKg, bool isOffline, String? tariff, String? qrCode
});




}
/// @nodoc
class __$ParcelRegistrationCopyWithImpl<$Res>
    implements _$ParcelRegistrationCopyWith<$Res> {
  __$ParcelRegistrationCopyWithImpl(this._self, this._then);

  final _ParcelRegistration _self;
  final $Res Function(_ParcelRegistration) _then;

/// Create a copy of ParcelRegistration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackingNumber = null,Object? senderName = null,Object? recipientName = null,Object? originCity = null,Object? destinationCity = null,Object? nature = null,Object? weightKg = null,Object? isOffline = null,Object? tariff = freezed,Object? qrCode = freezed,}) {
  return _then(_ParcelRegistration(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,tariff: freezed == tariff ? _self.tariff : tariff // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
