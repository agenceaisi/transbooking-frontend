// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParcelRead {

 int get id;@JsonKey(name: 'tracking_number') String get trackingNumber; int get company; int? get trip;@JsonKey(name: 'origin_city') String get originCity;@JsonKey(name: 'destination_city') String get destinationCity;@JsonKey(name: 'origin_station') int? get originStation;@JsonKey(name: 'destination_station') int? get destinationStation;@JsonKey(name: 'sender_name') String get senderName;@JsonKey(name: 'sender_phone') String get senderPhone;@JsonKey(name: 'recipient_name') String get recipientName;@JsonKey(name: 'recipient_phone') String get recipientPhone; String? get description;@JsonKey(name: 'weight_kg') String get weightKg; String? get tariff;@JsonKey(name: 'qr_code') String? get qrCode; Status62aEnum? get status;@JsonKey(name: 'status_display') String get statusDisplay;@JsonKey(name: 'collected_at') DateTime? get collectedAt;@JsonKey(name: 'is_offline') bool? get isOffline; List<ParcelNotification> get notifications; List<dynamic> get history;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of ParcelRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelReadCopyWith<ParcelRead> get copyWith => _$ParcelReadCopyWithImpl<ParcelRead>(this as ParcelRead, _$identity);

  /// Serializes this ParcelRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelRead&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.company, company) || other.company == company)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.originStation, originStation) || other.originStation == originStation)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.description, description) || other.description == description)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.tariff, tariff) || other.tariff == tariff)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.collectedAt, collectedAt) || other.collectedAt == collectedAt)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&const DeepCollectionEquality().equals(other.notifications, notifications)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,trackingNumber,company,trip,originCity,destinationCity,originStation,destinationStation,senderName,senderPhone,recipientName,recipientPhone,description,weightKg,tariff,qrCode,status,statusDisplay,collectedAt,isOffline,const DeepCollectionEquality().hash(notifications),const DeepCollectionEquality().hash(history),createdAt,updatedAt]);

@override
String toString() {
  return 'ParcelRead(id: $id, trackingNumber: $trackingNumber, company: $company, trip: $trip, originCity: $originCity, destinationCity: $destinationCity, originStation: $originStation, destinationStation: $destinationStation, senderName: $senderName, senderPhone: $senderPhone, recipientName: $recipientName, recipientPhone: $recipientPhone, description: $description, weightKg: $weightKg, tariff: $tariff, qrCode: $qrCode, status: $status, statusDisplay: $statusDisplay, collectedAt: $collectedAt, isOffline: $isOffline, notifications: $notifications, history: $history, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ParcelReadCopyWith<$Res>  {
  factory $ParcelReadCopyWith(ParcelRead value, $Res Function(ParcelRead) _then) = _$ParcelReadCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'tracking_number') String trackingNumber, int company, int? trip,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'origin_station') int? originStation,@JsonKey(name: 'destination_station') int? destinationStation,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'sender_phone') String senderPhone,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone, String? description,@JsonKey(name: 'weight_kg') String weightKg, String? tariff,@JsonKey(name: 'qr_code') String? qrCode, Status62aEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'collected_at') DateTime? collectedAt,@JsonKey(name: 'is_offline') bool? isOffline, List<ParcelNotification> notifications, List<dynamic> history,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$ParcelReadCopyWithImpl<$Res>
    implements $ParcelReadCopyWith<$Res> {
  _$ParcelReadCopyWithImpl(this._self, this._then);

  final ParcelRead _self;
  final $Res Function(ParcelRead) _then;

/// Create a copy of ParcelRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? trackingNumber = null,Object? company = null,Object? trip = freezed,Object? originCity = null,Object? destinationCity = null,Object? originStation = freezed,Object? destinationStation = freezed,Object? senderName = null,Object? senderPhone = null,Object? recipientName = null,Object? recipientPhone = null,Object? description = freezed,Object? weightKg = null,Object? tariff = freezed,Object? qrCode = freezed,Object? status = freezed,Object? statusDisplay = null,Object? collectedAt = freezed,Object? isOffline = freezed,Object? notifications = null,Object? history = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,originStation: freezed == originStation ? _self.originStation : originStation // ignore: cast_nullable_to_non_nullable
as int?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,tariff: freezed == tariff ? _self.tariff : tariff // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,collectedAt: freezed == collectedAt ? _self.collectedAt : collectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,notifications: null == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<ParcelNotification>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelRead].
extension ParcelReadPatterns on ParcelRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelRead value)  $default,){
final _that = this;
switch (_that) {
case _ParcelRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelRead value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'tracking_number')  String trackingNumber,  int company,  int? trip, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone,  String? description, @JsonKey(name: 'weight_kg')  String weightKg,  String? tariff, @JsonKey(name: 'qr_code')  String? qrCode,  Status62aEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'collected_at')  DateTime? collectedAt, @JsonKey(name: 'is_offline')  bool? isOffline,  List<ParcelNotification> notifications,  List<dynamic> history, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelRead() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.company,_that.trip,_that.originCity,_that.destinationCity,_that.originStation,_that.destinationStation,_that.senderName,_that.senderPhone,_that.recipientName,_that.recipientPhone,_that.description,_that.weightKg,_that.tariff,_that.qrCode,_that.status,_that.statusDisplay,_that.collectedAt,_that.isOffline,_that.notifications,_that.history,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'tracking_number')  String trackingNumber,  int company,  int? trip, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone,  String? description, @JsonKey(name: 'weight_kg')  String weightKg,  String? tariff, @JsonKey(name: 'qr_code')  String? qrCode,  Status62aEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'collected_at')  DateTime? collectedAt, @JsonKey(name: 'is_offline')  bool? isOffline,  List<ParcelNotification> notifications,  List<dynamic> history, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ParcelRead():
return $default(_that.id,_that.trackingNumber,_that.company,_that.trip,_that.originCity,_that.destinationCity,_that.originStation,_that.destinationStation,_that.senderName,_that.senderPhone,_that.recipientName,_that.recipientPhone,_that.description,_that.weightKg,_that.tariff,_that.qrCode,_that.status,_that.statusDisplay,_that.collectedAt,_that.isOffline,_that.notifications,_that.history,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'tracking_number')  String trackingNumber,  int company,  int? trip, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'origin_station')  int? originStation, @JsonKey(name: 'destination_station')  int? destinationStation, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone,  String? description, @JsonKey(name: 'weight_kg')  String weightKg,  String? tariff, @JsonKey(name: 'qr_code')  String? qrCode,  Status62aEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'collected_at')  DateTime? collectedAt, @JsonKey(name: 'is_offline')  bool? isOffline,  List<ParcelNotification> notifications,  List<dynamic> history, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ParcelRead() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.company,_that.trip,_that.originCity,_that.destinationCity,_that.originStation,_that.destinationStation,_that.senderName,_that.senderPhone,_that.recipientName,_that.recipientPhone,_that.description,_that.weightKg,_that.tariff,_that.qrCode,_that.status,_that.statusDisplay,_that.collectedAt,_that.isOffline,_that.notifications,_that.history,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelRead implements ParcelRead {
  const _ParcelRead({required this.id, @JsonKey(name: 'tracking_number') required this.trackingNumber, required this.company, this.trip, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'destination_city') required this.destinationCity, @JsonKey(name: 'origin_station') this.originStation, @JsonKey(name: 'destination_station') this.destinationStation, @JsonKey(name: 'sender_name') required this.senderName, @JsonKey(name: 'sender_phone') required this.senderPhone, @JsonKey(name: 'recipient_name') required this.recipientName, @JsonKey(name: 'recipient_phone') required this.recipientPhone, this.description, @JsonKey(name: 'weight_kg') required this.weightKg, this.tariff, @JsonKey(name: 'qr_code') this.qrCode, this.status, @JsonKey(name: 'status_display') required this.statusDisplay, @JsonKey(name: 'collected_at') this.collectedAt, @JsonKey(name: 'is_offline') this.isOffline, required final  List<ParcelNotification> notifications, required final  List<dynamic> history, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _notifications = notifications,_history = history;
  factory _ParcelRead.fromJson(Map<String, dynamic> json) => _$ParcelReadFromJson(json);

@override final  int id;
@override@JsonKey(name: 'tracking_number') final  String trackingNumber;
@override final  int company;
@override final  int? trip;
@override@JsonKey(name: 'origin_city') final  String originCity;
@override@JsonKey(name: 'destination_city') final  String destinationCity;
@override@JsonKey(name: 'origin_station') final  int? originStation;
@override@JsonKey(name: 'destination_station') final  int? destinationStation;
@override@JsonKey(name: 'sender_name') final  String senderName;
@override@JsonKey(name: 'sender_phone') final  String senderPhone;
@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override@JsonKey(name: 'recipient_phone') final  String recipientPhone;
@override final  String? description;
@override@JsonKey(name: 'weight_kg') final  String weightKg;
@override final  String? tariff;
@override@JsonKey(name: 'qr_code') final  String? qrCode;
@override final  Status62aEnum? status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override@JsonKey(name: 'collected_at') final  DateTime? collectedAt;
@override@JsonKey(name: 'is_offline') final  bool? isOffline;
 final  List<ParcelNotification> _notifications;
@override List<ParcelNotification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

 final  List<dynamic> _history;
@override List<dynamic> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of ParcelRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelReadCopyWith<_ParcelRead> get copyWith => __$ParcelReadCopyWithImpl<_ParcelRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelRead&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.company, company) || other.company == company)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.originStation, originStation) || other.originStation == originStation)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.description, description) || other.description == description)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.tariff, tariff) || other.tariff == tariff)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.collectedAt, collectedAt) || other.collectedAt == collectedAt)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,trackingNumber,company,trip,originCity,destinationCity,originStation,destinationStation,senderName,senderPhone,recipientName,recipientPhone,description,weightKg,tariff,qrCode,status,statusDisplay,collectedAt,isOffline,const DeepCollectionEquality().hash(_notifications),const DeepCollectionEquality().hash(_history),createdAt,updatedAt]);

@override
String toString() {
  return 'ParcelRead(id: $id, trackingNumber: $trackingNumber, company: $company, trip: $trip, originCity: $originCity, destinationCity: $destinationCity, originStation: $originStation, destinationStation: $destinationStation, senderName: $senderName, senderPhone: $senderPhone, recipientName: $recipientName, recipientPhone: $recipientPhone, description: $description, weightKg: $weightKg, tariff: $tariff, qrCode: $qrCode, status: $status, statusDisplay: $statusDisplay, collectedAt: $collectedAt, isOffline: $isOffline, notifications: $notifications, history: $history, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ParcelReadCopyWith<$Res> implements $ParcelReadCopyWith<$Res> {
  factory _$ParcelReadCopyWith(_ParcelRead value, $Res Function(_ParcelRead) _then) = __$ParcelReadCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'tracking_number') String trackingNumber, int company, int? trip,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'origin_station') int? originStation,@JsonKey(name: 'destination_station') int? destinationStation,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'sender_phone') String senderPhone,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone, String? description,@JsonKey(name: 'weight_kg') String weightKg, String? tariff,@JsonKey(name: 'qr_code') String? qrCode, Status62aEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'collected_at') DateTime? collectedAt,@JsonKey(name: 'is_offline') bool? isOffline, List<ParcelNotification> notifications, List<dynamic> history,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$ParcelReadCopyWithImpl<$Res>
    implements _$ParcelReadCopyWith<$Res> {
  __$ParcelReadCopyWithImpl(this._self, this._then);

  final _ParcelRead _self;
  final $Res Function(_ParcelRead) _then;

/// Create a copy of ParcelRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? trackingNumber = null,Object? company = null,Object? trip = freezed,Object? originCity = null,Object? destinationCity = null,Object? originStation = freezed,Object? destinationStation = freezed,Object? senderName = null,Object? senderPhone = null,Object? recipientName = null,Object? recipientPhone = null,Object? description = freezed,Object? weightKg = null,Object? tariff = freezed,Object? qrCode = freezed,Object? status = freezed,Object? statusDisplay = null,Object? collectedAt = freezed,Object? isOffline = freezed,Object? notifications = null,Object? history = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ParcelRead(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,originStation: freezed == originStation ? _self.originStation : originStation // ignore: cast_nullable_to_non_nullable
as int?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,tariff: freezed == tariff ? _self.tariff : tariff // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,collectedAt: freezed == collectedAt ? _self.collectedAt : collectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<ParcelNotification>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
