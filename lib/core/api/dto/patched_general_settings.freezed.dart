// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_general_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedGeneralSettings {

@JsonKey(name: 'platform_name') String? get platformName;@JsonKey(name: 'support_phone') String? get supportPhone;@JsonKey(name: 'support_email') String? get supportEmail;@JsonKey(name: 'maintenance_mode') bool? get maintenanceMode;@JsonKey(name: 'sms_provider') String? get smsProvider;
/// Create a copy of PatchedGeneralSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedGeneralSettingsCopyWith<PatchedGeneralSettings> get copyWith => _$PatchedGeneralSettingsCopyWithImpl<PatchedGeneralSettings>(this as PatchedGeneralSettings, _$identity);

  /// Serializes this PatchedGeneralSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedGeneralSettings&&(identical(other.platformName, platformName) || other.platformName == platformName)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.maintenanceMode, maintenanceMode) || other.maintenanceMode == maintenanceMode)&&(identical(other.smsProvider, smsProvider) || other.smsProvider == smsProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platformName,supportPhone,supportEmail,maintenanceMode,smsProvider);

@override
String toString() {
  return 'PatchedGeneralSettings(platformName: $platformName, supportPhone: $supportPhone, supportEmail: $supportEmail, maintenanceMode: $maintenanceMode, smsProvider: $smsProvider)';
}


}

/// @nodoc
abstract mixin class $PatchedGeneralSettingsCopyWith<$Res>  {
  factory $PatchedGeneralSettingsCopyWith(PatchedGeneralSettings value, $Res Function(PatchedGeneralSettings) _then) = _$PatchedGeneralSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'platform_name') String? platformName,@JsonKey(name: 'support_phone') String? supportPhone,@JsonKey(name: 'support_email') String? supportEmail,@JsonKey(name: 'maintenance_mode') bool? maintenanceMode,@JsonKey(name: 'sms_provider') String? smsProvider
});




}
/// @nodoc
class _$PatchedGeneralSettingsCopyWithImpl<$Res>
    implements $PatchedGeneralSettingsCopyWith<$Res> {
  _$PatchedGeneralSettingsCopyWithImpl(this._self, this._then);

  final PatchedGeneralSettings _self;
  final $Res Function(PatchedGeneralSettings) _then;

/// Create a copy of PatchedGeneralSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? platformName = freezed,Object? supportPhone = freezed,Object? supportEmail = freezed,Object? maintenanceMode = freezed,Object? smsProvider = freezed,}) {
  return _then(_self.copyWith(
platformName: freezed == platformName ? _self.platformName : platformName // ignore: cast_nullable_to_non_nullable
as String?,supportPhone: freezed == supportPhone ? _self.supportPhone : supportPhone // ignore: cast_nullable_to_non_nullable
as String?,supportEmail: freezed == supportEmail ? _self.supportEmail : supportEmail // ignore: cast_nullable_to_non_nullable
as String?,maintenanceMode: freezed == maintenanceMode ? _self.maintenanceMode : maintenanceMode // ignore: cast_nullable_to_non_nullable
as bool?,smsProvider: freezed == smsProvider ? _self.smsProvider : smsProvider // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedGeneralSettings].
extension PatchedGeneralSettingsPatterns on PatchedGeneralSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedGeneralSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedGeneralSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedGeneralSettings value)  $default,){
final _that = this;
switch (_that) {
case _PatchedGeneralSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedGeneralSettings value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedGeneralSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'platform_name')  String? platformName, @JsonKey(name: 'support_phone')  String? supportPhone, @JsonKey(name: 'support_email')  String? supportEmail, @JsonKey(name: 'maintenance_mode')  bool? maintenanceMode, @JsonKey(name: 'sms_provider')  String? smsProvider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedGeneralSettings() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'platform_name')  String? platformName, @JsonKey(name: 'support_phone')  String? supportPhone, @JsonKey(name: 'support_email')  String? supportEmail, @JsonKey(name: 'maintenance_mode')  bool? maintenanceMode, @JsonKey(name: 'sms_provider')  String? smsProvider)  $default,) {final _that = this;
switch (_that) {
case _PatchedGeneralSettings():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'platform_name')  String? platformName, @JsonKey(name: 'support_phone')  String? supportPhone, @JsonKey(name: 'support_email')  String? supportEmail, @JsonKey(name: 'maintenance_mode')  bool? maintenanceMode, @JsonKey(name: 'sms_provider')  String? smsProvider)?  $default,) {final _that = this;
switch (_that) {
case _PatchedGeneralSettings() when $default != null:
return $default(_that.platformName,_that.supportPhone,_that.supportEmail,_that.maintenanceMode,_that.smsProvider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedGeneralSettings implements PatchedGeneralSettings {
  const _PatchedGeneralSettings({@JsonKey(name: 'platform_name') this.platformName, @JsonKey(name: 'support_phone') this.supportPhone, @JsonKey(name: 'support_email') this.supportEmail, @JsonKey(name: 'maintenance_mode') this.maintenanceMode, @JsonKey(name: 'sms_provider') this.smsProvider});
  factory _PatchedGeneralSettings.fromJson(Map<String, dynamic> json) => _$PatchedGeneralSettingsFromJson(json);

@override@JsonKey(name: 'platform_name') final  String? platformName;
@override@JsonKey(name: 'support_phone') final  String? supportPhone;
@override@JsonKey(name: 'support_email') final  String? supportEmail;
@override@JsonKey(name: 'maintenance_mode') final  bool? maintenanceMode;
@override@JsonKey(name: 'sms_provider') final  String? smsProvider;

/// Create a copy of PatchedGeneralSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedGeneralSettingsCopyWith<_PatchedGeneralSettings> get copyWith => __$PatchedGeneralSettingsCopyWithImpl<_PatchedGeneralSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedGeneralSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedGeneralSettings&&(identical(other.platformName, platformName) || other.platformName == platformName)&&(identical(other.supportPhone, supportPhone) || other.supportPhone == supportPhone)&&(identical(other.supportEmail, supportEmail) || other.supportEmail == supportEmail)&&(identical(other.maintenanceMode, maintenanceMode) || other.maintenanceMode == maintenanceMode)&&(identical(other.smsProvider, smsProvider) || other.smsProvider == smsProvider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platformName,supportPhone,supportEmail,maintenanceMode,smsProvider);

@override
String toString() {
  return 'PatchedGeneralSettings(platformName: $platformName, supportPhone: $supportPhone, supportEmail: $supportEmail, maintenanceMode: $maintenanceMode, smsProvider: $smsProvider)';
}


}

/// @nodoc
abstract mixin class _$PatchedGeneralSettingsCopyWith<$Res> implements $PatchedGeneralSettingsCopyWith<$Res> {
  factory _$PatchedGeneralSettingsCopyWith(_PatchedGeneralSettings value, $Res Function(_PatchedGeneralSettings) _then) = __$PatchedGeneralSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'platform_name') String? platformName,@JsonKey(name: 'support_phone') String? supportPhone,@JsonKey(name: 'support_email') String? supportEmail,@JsonKey(name: 'maintenance_mode') bool? maintenanceMode,@JsonKey(name: 'sms_provider') String? smsProvider
});




}
/// @nodoc
class __$PatchedGeneralSettingsCopyWithImpl<$Res>
    implements _$PatchedGeneralSettingsCopyWith<$Res> {
  __$PatchedGeneralSettingsCopyWithImpl(this._self, this._then);

  final _PatchedGeneralSettings _self;
  final $Res Function(_PatchedGeneralSettings) _then;

/// Create a copy of PatchedGeneralSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? platformName = freezed,Object? supportPhone = freezed,Object? supportEmail = freezed,Object? maintenanceMode = freezed,Object? smsProvider = freezed,}) {
  return _then(_PatchedGeneralSettings(
platformName: freezed == platformName ? _self.platformName : platformName // ignore: cast_nullable_to_non_nullable
as String?,supportPhone: freezed == supportPhone ? _self.supportPhone : supportPhone // ignore: cast_nullable_to_non_nullable
as String?,supportEmail: freezed == supportEmail ? _self.supportEmail : supportEmail // ignore: cast_nullable_to_non_nullable
as String?,maintenanceMode: freezed == maintenanceMode ? _self.maintenanceMode : maintenanceMode // ignore: cast_nullable_to_non_nullable
as bool?,smsProvider: freezed == smsProvider ? _self.smsProvider : smsProvider // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
