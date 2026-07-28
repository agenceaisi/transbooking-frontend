// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralSettings {

@JsonKey(name: 'platform_name') String? get platformName;@JsonKey(name: 'support_phone') String? get supportPhone;@JsonKey(name: 'support_email') String? get supportEmail;@JsonKey(name: 'maintenance_mode') bool? get maintenanceMode;@JsonKey(name: 'sms_provider') String get smsProvider;
/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralSettingsCopyWith<GeneralSettings> get copyWith => _$GeneralSettingsCopyWithImpl<GeneralSettings>(this as GeneralSettings, _$identity);

  /// Serializes this GeneralSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralSettings&&(identical(other.platformName, platformName) || other.platformName == platformName)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.maintenanceMode, maintenanceMode) || other.maintenanceMode == maintenanceMode)&&(identical(other.smsProvider, smsProvider) || other.smsProvider == smsProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platformName,supportPhone,supportEmail,maintenanceMode,smsProvider);

@override
String toString() {
  return 'GeneralSettings(platformName: $platformName, supportPhone: $supportPhone, supportEmail: $supportEmail, maintenanceMode: $maintenanceMode, smsProvider: $smsProvider)';
}


}

/// @nodoc
abstract mixin class $GeneralSettingsCopyWith<$Res>  {
  factory $GeneralSettingsCopyWith(GeneralSettings value, $Res Function(GeneralSettings) _then) = _$GeneralSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'platform_name') String? platformName,@JsonKey(name: 'support_phone') String? supportPhone,@JsonKey(name: 'support_email') String? supportEmail,@JsonKey(name: 'maintenance_mode') bool? maintenanceMode,@JsonKey(name: 'sms_provider') String smsProvider
});




}
/// @nodoc
class _$GeneralSettingsCopyWithImpl<$Res>
    implements $GeneralSettingsCopyWith<$Res> {
  _$GeneralSettingsCopyWithImpl(this._self, this._then);

  final GeneralSettings _self;
  final $Res Function(GeneralSettings) _then;

/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? platformName = freezed,Object? supportPhone = freezed,Object? supportEmail = freezed,Object? maintenanceMode = freezed,Object? smsProvider = null,}) {
  return _then(_self.copyWith(
platformName: freezed == platformName ? _self.platformName : platformName // ignore: cast_nullable_to_non_nullable
as String?,supportPhone: freezed == supportPhone ? _self.supportPhone : supportPhone // ignore: cast_nullable_to_non_nullable
as String?,supportEmail: freezed == supportEmail ? _self.supportEmail : supportEmail // ignore: cast_nullable_to_non_nullable
as String?,maintenanceMode: freezed == maintenanceMode ? _self.maintenanceMode : maintenanceMode // ignore: cast_nullable_to_non_nullable
as bool?,smsProvider: null == smsProvider ? _self.smsProvider : smsProvider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralSettings].
extension GeneralSettingsPatterns on GeneralSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralSettings value)  $default,){
final _that = this;
switch (_that) {
case _GeneralSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralSettings value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'platform_name')  String? platformName, @JsonKey(name: 'support_phone')  String? supportPhone, @JsonKey(name: 'support_email')  String? supportEmail, @JsonKey(name: 'maintenance_mode')  bool? maintenanceMode, @JsonKey(name: 'sms_provider')  String smsProvider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralSettings() when $default != null:
return $default(_that.platformName,_that.supportPhone,_that.supportEmail,_that.maintenanceMode,_that.smsProvider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'platform_name')  String? platformName, @JsonKey(name: 'support_phone')  String? supportPhone, @JsonKey(name: 'support_email')  String? supportEmail, @JsonKey(name: 'maintenance_mode')  bool? maintenanceMode, @JsonKey(name: 'sms_provider')  String smsProvider)  $default,) {final _that = this;
switch (_that) {
case _GeneralSettings():
return $default(_that.platformName,_that.supportPhone,_that.supportEmail,_that.maintenanceMode,_that.smsProvider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'platform_name')  String? platformName, @JsonKey(name: 'support_phone')  String? supportPhone, @JsonKey(name: 'support_email')  String? supportEmail, @JsonKey(name: 'maintenance_mode')  bool? maintenanceMode, @JsonKey(name: 'sms_provider')  String smsProvider)?  $default,) {final _that = this;
switch (_that) {
case _GeneralSettings() when $default != null:
return $default(_that.platformName,_that.supportPhone,_that.supportEmail,_that.maintenanceMode,_that.smsProvider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneralSettings implements GeneralSettings {
  const _GeneralSettings({@JsonKey(name: 'platform_name') this.platformName, @JsonKey(name: 'support_phone') this.supportPhone, @JsonKey(name: 'support_email') this.supportEmail, @JsonKey(name: 'maintenance_mode') this.maintenanceMode, @JsonKey(name: 'sms_provider') required this.smsProvider});
  factory _GeneralSettings.fromJson(Map<String, dynamic> json) => _$GeneralSettingsFromJson(json);

@override@JsonKey(name: 'platform_name') final  String? platformName;
@override@JsonKey(name: 'support_phone') final  String? supportPhone;
@override@JsonKey(name: 'support_email') final  String? supportEmail;
@override@JsonKey(name: 'maintenance_mode') final  bool? maintenanceMode;
@override@JsonKey(name: 'sms_provider') final  String smsProvider;

/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralSettingsCopyWith<_GeneralSettings> get copyWith => __$GeneralSettingsCopyWithImpl<_GeneralSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralSettings&&(identical(other.platformName, platformName) || other.platformName == platformName)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.maintenanceMode, maintenanceMode) || other.maintenanceMode == maintenanceMode)&&(identical(other.smsProvider, smsProvider) || other.smsProvider == smsProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platformName,supportPhone,supportEmail,maintenanceMode,smsProvider);

@override
String toString() {
  return 'GeneralSettings(platformName: $platformName, supportPhone: $supportPhone, supportEmail: $supportEmail, maintenanceMode: $maintenanceMode, smsProvider: $smsProvider)';
}


}

/// @nodoc
abstract mixin class _$GeneralSettingsCopyWith<$Res> implements $GeneralSettingsCopyWith<$Res> {
  factory _$GeneralSettingsCopyWith(_GeneralSettings value, $Res Function(_GeneralSettings) _then) = __$GeneralSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'platform_name') String? platformName,@JsonKey(name: 'support_phone') String? supportPhone,@JsonKey(name: 'support_email') String? supportEmail,@JsonKey(name: 'maintenance_mode') bool? maintenanceMode,@JsonKey(name: 'sms_provider') String smsProvider
});




}
/// @nodoc
class __$GeneralSettingsCopyWithImpl<$Res>
    implements _$GeneralSettingsCopyWith<$Res> {
  __$GeneralSettingsCopyWithImpl(this._self, this._then);

  final _GeneralSettings _self;
  final $Res Function(_GeneralSettings) _then;

/// Create a copy of GeneralSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? platformName = freezed,Object? supportPhone = freezed,Object? supportEmail = freezed,Object? maintenanceMode = freezed,Object? smsProvider = null,}) {
  return _then(_GeneralSettings(
platformName: freezed == platformName ? _self.platformName : platformName // ignore: cast_nullable_to_non_nullable
as String?,supportPhone: freezed == supportPhone ? _self.supportPhone : supportPhone // ignore: cast_nullable_to_non_nullable
as String?,supportEmail: freezed == supportEmail ? _self.supportEmail : supportEmail // ignore: cast_nullable_to_non_nullable
as String?,maintenanceMode: freezed == maintenanceMode ? _self.maintenanceMode : maintenanceMode // ignore: cast_nullable_to_non_nullable
as bool?,smsProvider: null == smsProvider ? _self.smsProvider : smsProvider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
