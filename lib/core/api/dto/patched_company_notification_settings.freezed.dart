// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_company_notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedCompanyNotificationSettings {

@JsonKey(name: 'sms_booking_confirmation') bool? get smsBookingConfirmation;@JsonKey(name: 'sms_departure_reminder') bool? get smsDepartureReminder;@JsonKey(name: 'sms_parcel_arrival') bool? get smsParcelArrival;
/// Create a copy of PatchedCompanyNotificationSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedCompanyNotificationSettingsCopyWith<PatchedCompanyNotificationSettings> get copyWith => _$PatchedCompanyNotificationSettingsCopyWithImpl<PatchedCompanyNotificationSettings>(this as PatchedCompanyNotificationSettings, _$identity);

  /// Serializes this PatchedCompanyNotificationSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedCompanyNotificationSettings&&(identical(other.smsBookingConfirmation, smsBookingConfirmation) || other.smsBookingConfirmation == smsBookingConfirmation)&&(identical(other.smsDepartureReminder, smsDepartureReminder) || other.smsDepartureReminder == smsDepartureReminder)&&(identical(other.smsParcelArrival, smsParcelArrival) || other.smsParcelArrival == smsParcelArrival));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,smsBookingConfirmation,smsDepartureReminder,smsParcelArrival);

@override
String toString() {
  return 'PatchedCompanyNotificationSettings(smsBookingConfirmation: $smsBookingConfirmation, smsDepartureReminder: $smsDepartureReminder, smsParcelArrival: $smsParcelArrival)';
}


}

/// @nodoc
abstract mixin class $PatchedCompanyNotificationSettingsCopyWith<$Res>  {
  factory $PatchedCompanyNotificationSettingsCopyWith(PatchedCompanyNotificationSettings value, $Res Function(PatchedCompanyNotificationSettings) _then) = _$PatchedCompanyNotificationSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sms_booking_confirmation') bool? smsBookingConfirmation,@JsonKey(name: 'sms_departure_reminder') bool? smsDepartureReminder,@JsonKey(name: 'sms_parcel_arrival') bool? smsParcelArrival
});




}
/// @nodoc
class _$PatchedCompanyNotificationSettingsCopyWithImpl<$Res>
    implements $PatchedCompanyNotificationSettingsCopyWith<$Res> {
  _$PatchedCompanyNotificationSettingsCopyWithImpl(this._self, this._then);

  final PatchedCompanyNotificationSettings _self;
  final $Res Function(PatchedCompanyNotificationSettings) _then;

/// Create a copy of PatchedCompanyNotificationSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? smsBookingConfirmation = freezed,Object? smsDepartureReminder = freezed,Object? smsParcelArrival = freezed,}) {
  return _then(_self.copyWith(
smsBookingConfirmation: freezed == smsBookingConfirmation ? _self.smsBookingConfirmation : smsBookingConfirmation // ignore: cast_nullable_to_non_nullable
as bool?,smsDepartureReminder: freezed == smsDepartureReminder ? _self.smsDepartureReminder : smsDepartureReminder // ignore: cast_nullable_to_non_nullable
as bool?,smsParcelArrival: freezed == smsParcelArrival ? _self.smsParcelArrival : smsParcelArrival // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedCompanyNotificationSettings].
extension PatchedCompanyNotificationSettingsPatterns on PatchedCompanyNotificationSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedCompanyNotificationSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedCompanyNotificationSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedCompanyNotificationSettings value)  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyNotificationSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedCompanyNotificationSettings value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyNotificationSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sms_booking_confirmation')  bool? smsBookingConfirmation, @JsonKey(name: 'sms_departure_reminder')  bool? smsDepartureReminder, @JsonKey(name: 'sms_parcel_arrival')  bool? smsParcelArrival)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedCompanyNotificationSettings() when $default != null:
return $default(_that.smsBookingConfirmation,_that.smsDepartureReminder,_that.smsParcelArrival);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sms_booking_confirmation')  bool? smsBookingConfirmation, @JsonKey(name: 'sms_departure_reminder')  bool? smsDepartureReminder, @JsonKey(name: 'sms_parcel_arrival')  bool? smsParcelArrival)  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyNotificationSettings():
return $default(_that.smsBookingConfirmation,_that.smsDepartureReminder,_that.smsParcelArrival);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sms_booking_confirmation')  bool? smsBookingConfirmation, @JsonKey(name: 'sms_departure_reminder')  bool? smsDepartureReminder, @JsonKey(name: 'sms_parcel_arrival')  bool? smsParcelArrival)?  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyNotificationSettings() when $default != null:
return $default(_that.smsBookingConfirmation,_that.smsDepartureReminder,_that.smsParcelArrival);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedCompanyNotificationSettings implements PatchedCompanyNotificationSettings {
  const _PatchedCompanyNotificationSettings({@JsonKey(name: 'sms_booking_confirmation') this.smsBookingConfirmation, @JsonKey(name: 'sms_departure_reminder') this.smsDepartureReminder, @JsonKey(name: 'sms_parcel_arrival') this.smsParcelArrival});
  factory _PatchedCompanyNotificationSettings.fromJson(Map<String, dynamic> json) => _$PatchedCompanyNotificationSettingsFromJson(json);

@override@JsonKey(name: 'sms_booking_confirmation') final  bool? smsBookingConfirmation;
@override@JsonKey(name: 'sms_departure_reminder') final  bool? smsDepartureReminder;
@override@JsonKey(name: 'sms_parcel_arrival') final  bool? smsParcelArrival;

/// Create a copy of PatchedCompanyNotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedCompanyNotificationSettingsCopyWith<_PatchedCompanyNotificationSettings> get copyWith => __$PatchedCompanyNotificationSettingsCopyWithImpl<_PatchedCompanyNotificationSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedCompanyNotificationSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedCompanyNotificationSettings&&(identical(other.smsBookingConfirmation, smsBookingConfirmation) || other.smsBookingConfirmation == smsBookingConfirmation)&&(identical(other.smsDepartureReminder, smsDepartureReminder) || other.smsDepartureReminder == smsDepartureReminder)&&(identical(other.smsParcelArrival, smsParcelArrival) || other.smsParcelArrival == smsParcelArrival));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,smsBookingConfirmation,smsDepartureReminder,smsParcelArrival);

@override
String toString() {
  return 'PatchedCompanyNotificationSettings(smsBookingConfirmation: $smsBookingConfirmation, smsDepartureReminder: $smsDepartureReminder, smsParcelArrival: $smsParcelArrival)';
}


}

/// @nodoc
abstract mixin class _$PatchedCompanyNotificationSettingsCopyWith<$Res> implements $PatchedCompanyNotificationSettingsCopyWith<$Res> {
  factory _$PatchedCompanyNotificationSettingsCopyWith(_PatchedCompanyNotificationSettings value, $Res Function(_PatchedCompanyNotificationSettings) _then) = __$PatchedCompanyNotificationSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sms_booking_confirmation') bool? smsBookingConfirmation,@JsonKey(name: 'sms_departure_reminder') bool? smsDepartureReminder,@JsonKey(name: 'sms_parcel_arrival') bool? smsParcelArrival
});




}
/// @nodoc
class __$PatchedCompanyNotificationSettingsCopyWithImpl<$Res>
    implements _$PatchedCompanyNotificationSettingsCopyWith<$Res> {
  __$PatchedCompanyNotificationSettingsCopyWithImpl(this._self, this._then);

  final _PatchedCompanyNotificationSettings _self;
  final $Res Function(_PatchedCompanyNotificationSettings) _then;

/// Create a copy of PatchedCompanyNotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? smsBookingConfirmation = freezed,Object? smsDepartureReminder = freezed,Object? smsParcelArrival = freezed,}) {
  return _then(_PatchedCompanyNotificationSettings(
smsBookingConfirmation: freezed == smsBookingConfirmation ? _self.smsBookingConfirmation : smsBookingConfirmation // ignore: cast_nullable_to_non_nullable
as bool?,smsDepartureReminder: freezed == smsDepartureReminder ? _self.smsDepartureReminder : smsDepartureReminder // ignore: cast_nullable_to_non_nullable
as bool?,smsParcelArrival: freezed == smsParcelArrival ? _self.smsParcelArrival : smsParcelArrival // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
