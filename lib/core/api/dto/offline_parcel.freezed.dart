// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_parcel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfflineParcel {

@JsonKey(name: 'tracking_number') String get trackingNumber;@JsonKey(name: 'origin_city') int get originCity;@JsonKey(name: 'destination_city') int get destinationCity;@JsonKey(name: 'destination_station') int? get destinationStation; int? get trip;@JsonKey(name: 'sender_name') String get senderName;@JsonKey(name: 'sender_phone') String get senderPhone;@JsonKey(name: 'recipient_name') String get recipientName;@JsonKey(name: 'recipient_phone') String get recipientPhone; String? get description;@JsonKey(name: 'weight_kg') String get weightKg;@JsonKey(name: 'offline_created_at') DateTime get offlineCreatedAt;
/// Create a copy of OfflineParcel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineParcelCopyWith<OfflineParcel> get copyWith => _$OfflineParcelCopyWithImpl<OfflineParcel>(this as OfflineParcel, _$identity);

  /// Serializes this OfflineParcel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineParcel&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.description, description) || other.description == description)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,originCity,destinationCity,destinationStation,trip,senderName,senderPhone,recipientName,recipientPhone,description,weightKg,offlineCreatedAt);

@override
String toString() {
  return 'OfflineParcel(trackingNumber: $trackingNumber, originCity: $originCity, destinationCity: $destinationCity, destinationStation: $destinationStation, trip: $trip, senderName: $senderName, senderPhone: $senderPhone, recipientName: $recipientName, recipientPhone: $recipientPhone, description: $description, weightKg: $weightKg, offlineCreatedAt: $offlineCreatedAt)';
}


}

/// @nodoc
abstract mixin class $OfflineParcelCopyWith<$Res>  {
  factory $OfflineParcelCopyWith(OfflineParcel value, $Res Function(OfflineParcel) _then) = _$OfflineParcelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tracking_number') String trackingNumber,@JsonKey(name: 'origin_city') int originCity,@JsonKey(name: 'destination_city') int destinationCity,@JsonKey(name: 'destination_station') int? destinationStation, int? trip,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'sender_phone') String senderPhone,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone, String? description,@JsonKey(name: 'weight_kg') String weightKg,@JsonKey(name: 'offline_created_at') DateTime offlineCreatedAt
});




}
/// @nodoc
class _$OfflineParcelCopyWithImpl<$Res>
    implements $OfflineParcelCopyWith<$Res> {
  _$OfflineParcelCopyWithImpl(this._self, this._then);

  final OfflineParcel _self;
  final $Res Function(OfflineParcel) _then;

/// Create a copy of OfflineParcel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackingNumber = null,Object? originCity = null,Object? destinationCity = null,Object? destinationStation = freezed,Object? trip = freezed,Object? senderName = null,Object? senderPhone = null,Object? recipientName = null,Object? recipientPhone = null,Object? description = freezed,Object? weightKg = null,Object? offlineCreatedAt = null,}) {
  return _then(_self.copyWith(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as int,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as int,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,offlineCreatedAt: null == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OfflineParcel].
extension OfflineParcelPatterns on OfflineParcel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineParcel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineParcel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineParcel value)  $default,){
final _that = this;
switch (_that) {
case _OfflineParcel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineParcel value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineParcel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tracking_number')  String trackingNumber, @JsonKey(name: 'origin_city')  int originCity, @JsonKey(name: 'destination_city')  int destinationCity, @JsonKey(name: 'destination_station')  int? destinationStation,  int? trip, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone,  String? description, @JsonKey(name: 'weight_kg')  String weightKg, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineParcel() when $default != null:
return $default(_that.trackingNumber,_that.originCity,_that.destinationCity,_that.destinationStation,_that.trip,_that.senderName,_that.senderPhone,_that.recipientName,_that.recipientPhone,_that.description,_that.weightKg,_that.offlineCreatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tracking_number')  String trackingNumber, @JsonKey(name: 'origin_city')  int originCity, @JsonKey(name: 'destination_city')  int destinationCity, @JsonKey(name: 'destination_station')  int? destinationStation,  int? trip, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone,  String? description, @JsonKey(name: 'weight_kg')  String weightKg, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)  $default,) {final _that = this;
switch (_that) {
case _OfflineParcel():
return $default(_that.trackingNumber,_that.originCity,_that.destinationCity,_that.destinationStation,_that.trip,_that.senderName,_that.senderPhone,_that.recipientName,_that.recipientPhone,_that.description,_that.weightKg,_that.offlineCreatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tracking_number')  String trackingNumber, @JsonKey(name: 'origin_city')  int originCity, @JsonKey(name: 'destination_city')  int destinationCity, @JsonKey(name: 'destination_station')  int? destinationStation,  int? trip, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone,  String? description, @JsonKey(name: 'weight_kg')  String weightKg, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OfflineParcel() when $default != null:
return $default(_that.trackingNumber,_that.originCity,_that.destinationCity,_that.destinationStation,_that.trip,_that.senderName,_that.senderPhone,_that.recipientName,_that.recipientPhone,_that.description,_that.weightKg,_that.offlineCreatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineParcel implements OfflineParcel {
  const _OfflineParcel({@JsonKey(name: 'tracking_number') required this.trackingNumber, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'destination_city') required this.destinationCity, @JsonKey(name: 'destination_station') this.destinationStation, this.trip, @JsonKey(name: 'sender_name') required this.senderName, @JsonKey(name: 'sender_phone') required this.senderPhone, @JsonKey(name: 'recipient_name') required this.recipientName, @JsonKey(name: 'recipient_phone') required this.recipientPhone, this.description, @JsonKey(name: 'weight_kg') required this.weightKg, @JsonKey(name: 'offline_created_at') required this.offlineCreatedAt});
  factory _OfflineParcel.fromJson(Map<String, dynamic> json) => _$OfflineParcelFromJson(json);

@override@JsonKey(name: 'tracking_number') final  String trackingNumber;
@override@JsonKey(name: 'origin_city') final  int originCity;
@override@JsonKey(name: 'destination_city') final  int destinationCity;
@override@JsonKey(name: 'destination_station') final  int? destinationStation;
@override final  int? trip;
@override@JsonKey(name: 'sender_name') final  String senderName;
@override@JsonKey(name: 'sender_phone') final  String senderPhone;
@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override@JsonKey(name: 'recipient_phone') final  String recipientPhone;
@override final  String? description;
@override@JsonKey(name: 'weight_kg') final  String weightKg;
@override@JsonKey(name: 'offline_created_at') final  DateTime offlineCreatedAt;

/// Create a copy of OfflineParcel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineParcelCopyWith<_OfflineParcel> get copyWith => __$OfflineParcelCopyWithImpl<_OfflineParcel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineParcelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineParcel&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.description, description) || other.description == description)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,originCity,destinationCity,destinationStation,trip,senderName,senderPhone,recipientName,recipientPhone,description,weightKg,offlineCreatedAt);

@override
String toString() {
  return 'OfflineParcel(trackingNumber: $trackingNumber, originCity: $originCity, destinationCity: $destinationCity, destinationStation: $destinationStation, trip: $trip, senderName: $senderName, senderPhone: $senderPhone, recipientName: $recipientName, recipientPhone: $recipientPhone, description: $description, weightKg: $weightKg, offlineCreatedAt: $offlineCreatedAt)';
}


}

/// @nodoc
abstract mixin class _$OfflineParcelCopyWith<$Res> implements $OfflineParcelCopyWith<$Res> {
  factory _$OfflineParcelCopyWith(_OfflineParcel value, $Res Function(_OfflineParcel) _then) = __$OfflineParcelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tracking_number') String trackingNumber,@JsonKey(name: 'origin_city') int originCity,@JsonKey(name: 'destination_city') int destinationCity,@JsonKey(name: 'destination_station') int? destinationStation, int? trip,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'sender_phone') String senderPhone,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone, String? description,@JsonKey(name: 'weight_kg') String weightKg,@JsonKey(name: 'offline_created_at') DateTime offlineCreatedAt
});




}
/// @nodoc
class __$OfflineParcelCopyWithImpl<$Res>
    implements _$OfflineParcelCopyWith<$Res> {
  __$OfflineParcelCopyWithImpl(this._self, this._then);

  final _OfflineParcel _self;
  final $Res Function(_OfflineParcel) _then;

/// Create a copy of OfflineParcel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackingNumber = null,Object? originCity = null,Object? destinationCity = null,Object? destinationStation = freezed,Object? trip = freezed,Object? senderName = null,Object? senderPhone = null,Object? recipientName = null,Object? recipientPhone = null,Object? description = freezed,Object? weightKg = null,Object? offlineCreatedAt = null,}) {
  return _then(_OfflineParcel(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as int,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as int,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,offlineCreatedAt: null == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
