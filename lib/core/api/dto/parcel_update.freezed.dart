// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParcelUpdate {

@JsonKey(name: 'recipient_name') String get recipientName;@JsonKey(name: 'recipient_phone') String get recipientPhone;@JsonKey(name: 'sender_name') String get senderName;@JsonKey(name: 'sender_phone') String get senderPhone; String? get description;@JsonKey(name: 'destination_station') int? get destinationStation; int? get trip;
/// Create a copy of ParcelUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelUpdateCopyWith<ParcelUpdate> get copyWith => _$ParcelUpdateCopyWithImpl<ParcelUpdate>(this as ParcelUpdate, _$identity);

  /// Serializes this ParcelUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelUpdate&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.description, description) || other.description == description)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.trip, trip) || other.trip == trip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipientName,recipientPhone,senderName,senderPhone,description,destinationStation,trip);

@override
String toString() {
  return 'ParcelUpdate(recipientName: $recipientName, recipientPhone: $recipientPhone, senderName: $senderName, senderPhone: $senderPhone, description: $description, destinationStation: $destinationStation, trip: $trip)';
}


}

/// @nodoc
abstract mixin class $ParcelUpdateCopyWith<$Res>  {
  factory $ParcelUpdateCopyWith(ParcelUpdate value, $Res Function(ParcelUpdate) _then) = _$ParcelUpdateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'sender_phone') String senderPhone, String? description,@JsonKey(name: 'destination_station') int? destinationStation, int? trip
});




}
/// @nodoc
class _$ParcelUpdateCopyWithImpl<$Res>
    implements $ParcelUpdateCopyWith<$Res> {
  _$ParcelUpdateCopyWithImpl(this._self, this._then);

  final ParcelUpdate _self;
  final $Res Function(ParcelUpdate) _then;

/// Create a copy of ParcelUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipientName = null,Object? recipientPhone = null,Object? senderName = null,Object? senderPhone = null,Object? description = freezed,Object? destinationStation = freezed,Object? trip = freezed,}) {
  return _then(_self.copyWith(
recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelUpdate].
extension ParcelUpdatePatterns on ParcelUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ParcelUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone,  String? description, @JsonKey(name: 'destination_station')  int? destinationStation,  int? trip)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelUpdate() when $default != null:
return $default(_that.recipientName,_that.recipientPhone,_that.senderName,_that.senderPhone,_that.description,_that.destinationStation,_that.trip);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone,  String? description, @JsonKey(name: 'destination_station')  int? destinationStation,  int? trip)  $default,) {final _that = this;
switch (_that) {
case _ParcelUpdate():
return $default(_that.recipientName,_that.recipientPhone,_that.senderName,_that.senderPhone,_that.description,_that.destinationStation,_that.trip);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'recipient_phone')  String recipientPhone, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'sender_phone')  String senderPhone,  String? description, @JsonKey(name: 'destination_station')  int? destinationStation,  int? trip)?  $default,) {final _that = this;
switch (_that) {
case _ParcelUpdate() when $default != null:
return $default(_that.recipientName,_that.recipientPhone,_that.senderName,_that.senderPhone,_that.description,_that.destinationStation,_that.trip);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParcelUpdate implements ParcelUpdate {
  const _ParcelUpdate({@JsonKey(name: 'recipient_name') required this.recipientName, @JsonKey(name: 'recipient_phone') required this.recipientPhone, @JsonKey(name: 'sender_name') required this.senderName, @JsonKey(name: 'sender_phone') required this.senderPhone, this.description, @JsonKey(name: 'destination_station') this.destinationStation, this.trip});
  factory _ParcelUpdate.fromJson(Map<String, dynamic> json) => _$ParcelUpdateFromJson(json);

@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override@JsonKey(name: 'recipient_phone') final  String recipientPhone;
@override@JsonKey(name: 'sender_name') final  String senderName;
@override@JsonKey(name: 'sender_phone') final  String senderPhone;
@override final  String? description;
@override@JsonKey(name: 'destination_station') final  int? destinationStation;
@override final  int? trip;

/// Create a copy of ParcelUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelUpdateCopyWith<_ParcelUpdate> get copyWith => __$ParcelUpdateCopyWithImpl<_ParcelUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParcelUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelUpdate&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.description, description) || other.description == description)&&(identical(other.destinationStation, destinationStation) || other.destinationStation == destinationStation)&&(identical(other.trip, trip) || other.trip == trip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipientName,recipientPhone,senderName,senderPhone,description,destinationStation,trip);

@override
String toString() {
  return 'ParcelUpdate(recipientName: $recipientName, recipientPhone: $recipientPhone, senderName: $senderName, senderPhone: $senderPhone, description: $description, destinationStation: $destinationStation, trip: $trip)';
}


}

/// @nodoc
abstract mixin class _$ParcelUpdateCopyWith<$Res> implements $ParcelUpdateCopyWith<$Res> {
  factory _$ParcelUpdateCopyWith(_ParcelUpdate value, $Res Function(_ParcelUpdate) _then) = __$ParcelUpdateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'recipient_phone') String recipientPhone,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'sender_phone') String senderPhone, String? description,@JsonKey(name: 'destination_station') int? destinationStation, int? trip
});




}
/// @nodoc
class __$ParcelUpdateCopyWithImpl<$Res>
    implements _$ParcelUpdateCopyWith<$Res> {
  __$ParcelUpdateCopyWithImpl(this._self, this._then);

  final _ParcelUpdate _self;
  final $Res Function(_ParcelUpdate) _then;

/// Create a copy of ParcelUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipientName = null,Object? recipientPhone = null,Object? senderName = null,Object? senderPhone = null,Object? description = freezed,Object? destinationStation = freezed,Object? trip = freezed,}) {
  return _then(_ParcelUpdate(
recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,destinationStation: freezed == destinationStation ? _self.destinationStation : destinationStation // ignore: cast_nullable_to_non_nullable
as int?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
