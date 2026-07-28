// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_parcel_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfflineParcelRead {

@JsonKey(name: 'tracking_number') String get trackingNumber;@JsonKey(name: 'recipient_name') String get recipientName;@JsonKey(name: 'recipient_phone') String get recipientPhone;@JsonKey(name: 'destination_city') String get destinationCity; Status62aEnum? get status;
/// Create a copy of OfflineParcelRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineParcelReadCopyWith<OfflineParcelRead> get copyWith => _$OfflineParcelReadCopyWithImpl<OfflineParcelRead>(this as OfflineParcelRead, _$identity);

  /// Serializes this OfflineParcelRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineParcelRead&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,recipientName,recipientPhone,destinationCity,status);

@override
String toString() {
  return 'OfflineParcelRead(trackingNumber: $trackingNumber, recipientName: $recipientName, recipientPhone: $recipientPhone, destinationCity: $destinationCity, status: $status)';
}


}

/// @nodoc
abstract mixin class $OfflineParcelReadCopyWith<$Res>  {
  factory $OfflineParcelReadCopyWith(OfflineParcelRead value, $Res Function(OfflineParcelRead) _then) = _$OfflineParcelReadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tracking_number') String trackingNumber,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone,@JsonKey(name: 'destination_city') String destinationCity, Status62aEnum? status
});




}
/// @nodoc
class _$OfflineParcelReadCopyWithImpl<$Res>
    implements $OfflineParcelReadCopyWith<$Res> {
  _$OfflineParcelReadCopyWithImpl(this._self, this._then);

  final OfflineParcelRead _self;
  final $Res Function(OfflineParcelRead) _then;

/// Create a copy of OfflineParcelRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackingNumber = null,Object? recipientName = null,Object? recipientPhone = null,Object? destinationCity = null,Object? status = freezed,}) {
  return _then(_self.copyWith(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfflineParcelRead].
extension OfflineParcelReadPatterns on OfflineParcelRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineParcelRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineParcelRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineParcelRead value)  $default,){
final _that = this;
switch (_that) {
case _OfflineParcelRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineParcelRead value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineParcelRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tracking_number')  String trackingNumber, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'destination_city')  String destinationCity,  Status62aEnum? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineParcelRead() when $default != null:
return $default(_that.trackingNumber,_that.recipientName,_that.recipientPhone,_that.destinationCity,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tracking_number')  String trackingNumber, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'destination_city')  String destinationCity,  Status62aEnum? status)  $default,) {final _that = this;
switch (_that) {
case _OfflineParcelRead():
return $default(_that.trackingNumber,_that.recipientName,_that.recipientPhone,_that.destinationCity,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tracking_number')  String trackingNumber, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'destination_city')  String destinationCity,  Status62aEnum? status)?  $default,) {final _that = this;
switch (_that) {
case _OfflineParcelRead() when $default != null:
return $default(_that.trackingNumber,_that.recipientName,_that.recipientPhone,_that.destinationCity,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineParcelRead implements OfflineParcelRead {
  const _OfflineParcelRead({@JsonKey(name: 'tracking_number') required this.trackingNumber, @JsonKey(name: 'recipient_name') required this.recipientName, @JsonKey(name: 'recipient_phone') required this.recipientPhone, @JsonKey(name: 'destination_city') required this.destinationCity, this.status});
  factory _OfflineParcelRead.fromJson(Map<String, dynamic> json) => _$OfflineParcelReadFromJson(json);

@override@JsonKey(name: 'tracking_number') final  String trackingNumber;
@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override@JsonKey(name: 'recipient_phone') final  String recipientPhone;
@override@JsonKey(name: 'destination_city') final  String destinationCity;
@override final  Status62aEnum? status;

/// Create a copy of OfflineParcelRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineParcelReadCopyWith<_OfflineParcelRead> get copyWith => __$OfflineParcelReadCopyWithImpl<_OfflineParcelRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineParcelReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineParcelRead&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackingNumber,recipientName,recipientPhone,destinationCity,status);

@override
String toString() {
  return 'OfflineParcelRead(trackingNumber: $trackingNumber, recipientName: $recipientName, recipientPhone: $recipientPhone, destinationCity: $destinationCity, status: $status)';
}


}

/// @nodoc
abstract mixin class _$OfflineParcelReadCopyWith<$Res> implements $OfflineParcelReadCopyWith<$Res> {
  factory _$OfflineParcelReadCopyWith(_OfflineParcelRead value, $Res Function(_OfflineParcelRead) _then) = __$OfflineParcelReadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tracking_number') String trackingNumber,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone,@JsonKey(name: 'destination_city') String destinationCity, Status62aEnum? status
});




}
/// @nodoc
class __$OfflineParcelReadCopyWithImpl<$Res>
    implements _$OfflineParcelReadCopyWith<$Res> {
  __$OfflineParcelReadCopyWithImpl(this._self, this._then);

  final _OfflineParcelRead _self;
  final $Res Function(_OfflineParcelRead) _then;

/// Create a copy of OfflineParcelRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackingNumber = null,Object? recipientName = null,Object? recipientPhone = null,Object? destinationCity = null,Object? status = freezed,}) {
  return _then(_OfflineParcelRead(
trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status62aEnum?,
  ));
}


}

// dart format on
