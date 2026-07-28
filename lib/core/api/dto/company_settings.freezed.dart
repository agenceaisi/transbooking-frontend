// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanySettings {

 String get name; String? get sigle; String? get description; String? get logo; String? get banner;@JsonKey(name: 'primary_color') String? get primaryColor;@JsonKey(name: 'welcome_message') String? get welcomeMessage; String? get address; String? get phone; String? get email;@JsonKey(name: 'responsible_name') String? get responsibleName;@JsonKey(name: 'responsible_phone') String? get responsiblePhone;
/// Create a copy of CompanySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanySettingsCopyWith<CompanySettings> get copyWith => _$CompanySettingsCopyWithImpl<CompanySettings>(this as CompanySettings, _$identity);

  /// Serializes this CompanySettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanySettings&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.responsibleName, responsibleName) || other.responsibleName == responsibleName)&&(identical(other.responsiblePhone, responsiblePhone) || other.responsiblePhone == responsiblePhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sigle,description,logo,banner,primaryColor,welcomeMessage,address,phone,email,responsibleName,responsiblePhone);

@override
String toString() {
  return 'CompanySettings(name: $name, sigle: $sigle, description: $description, logo: $logo, banner: $banner, primaryColor: $primaryColor, welcomeMessage: $welcomeMessage, address: $address, phone: $phone, email: $email, responsibleName: $responsibleName, responsiblePhone: $responsiblePhone)';
}


}

/// @nodoc
abstract mixin class $CompanySettingsCopyWith<$Res>  {
  factory $CompanySettingsCopyWith(CompanySettings value, $Res Function(CompanySettings) _then) = _$CompanySettingsCopyWithImpl;
@useResult
$Res call({
 String name, String? sigle, String? description, String? logo, String? banner,@JsonKey(name: 'primary_color') String? primaryColor,@JsonKey(name: 'welcome_message') String? welcomeMessage, String? address, String? phone, String? email,@JsonKey(name: 'responsible_name') String? responsibleName,@JsonKey(name: 'responsible_phone') String? responsiblePhone
});




}
/// @nodoc
class _$CompanySettingsCopyWithImpl<$Res>
    implements $CompanySettingsCopyWith<$Res> {
  _$CompanySettingsCopyWithImpl(this._self, this._then);

  final CompanySettings _self;
  final $Res Function(CompanySettings) _then;

/// Create a copy of CompanySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sigle = freezed,Object? description = freezed,Object? logo = freezed,Object? banner = freezed,Object? primaryColor = freezed,Object? welcomeMessage = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? responsibleName = freezed,Object? responsiblePhone = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,primaryColor: freezed == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String?,welcomeMessage: freezed == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,responsibleName: freezed == responsibleName ? _self.responsibleName : responsibleName // ignore: cast_nullable_to_non_nullable
as String?,responsiblePhone: freezed == responsiblePhone ? _self.responsiblePhone : responsiblePhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanySettings].
extension CompanySettingsPatterns on CompanySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanySettings value)  $default,){
final _that = this;
switch (_that) {
case _CompanySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanySettings value)?  $default,){
final _that = this;
switch (_that) {
case _CompanySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? sigle,  String? description,  String? logo,  String? banner, @JsonKey(name: 'primary_color')  String? primaryColor, @JsonKey(name: 'welcome_message')  String? welcomeMessage,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanySettings() when $default != null:
return $default(_that.name,_that.sigle,_that.description,_that.logo,_that.banner,_that.primaryColor,_that.welcomeMessage,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? sigle,  String? description,  String? logo,  String? banner, @JsonKey(name: 'primary_color')  String? primaryColor, @JsonKey(name: 'welcome_message')  String? welcomeMessage,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone)  $default,) {final _that = this;
switch (_that) {
case _CompanySettings():
return $default(_that.name,_that.sigle,_that.description,_that.logo,_that.banner,_that.primaryColor,_that.welcomeMessage,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? sigle,  String? description,  String? logo,  String? banner, @JsonKey(name: 'primary_color')  String? primaryColor, @JsonKey(name: 'welcome_message')  String? welcomeMessage,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone)?  $default,) {final _that = this;
switch (_that) {
case _CompanySettings() when $default != null:
return $default(_that.name,_that.sigle,_that.description,_that.logo,_that.banner,_that.primaryColor,_that.welcomeMessage,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanySettings implements CompanySettings {
  const _CompanySettings({required this.name, this.sigle, this.description, this.logo, this.banner, @JsonKey(name: 'primary_color') this.primaryColor, @JsonKey(name: 'welcome_message') this.welcomeMessage, this.address, this.phone, this.email, @JsonKey(name: 'responsible_name') this.responsibleName, @JsonKey(name: 'responsible_phone') this.responsiblePhone});
  factory _CompanySettings.fromJson(Map<String, dynamic> json) => _$CompanySettingsFromJson(json);

@override final  String name;
@override final  String? sigle;
@override final  String? description;
@override final  String? logo;
@override final  String? banner;
@override@JsonKey(name: 'primary_color') final  String? primaryColor;
@override@JsonKey(name: 'welcome_message') final  String? welcomeMessage;
@override final  String? address;
@override final  String? phone;
@override final  String? email;
@override@JsonKey(name: 'responsible_name') final  String? responsibleName;
@override@JsonKey(name: 'responsible_phone') final  String? responsiblePhone;

/// Create a copy of CompanySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanySettingsCopyWith<_CompanySettings> get copyWith => __$CompanySettingsCopyWithImpl<_CompanySettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanySettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanySettings&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.responsibleName, responsibleName) || other.responsibleName == responsibleName)&&(identical(other.responsiblePhone, responsiblePhone) || other.responsiblePhone == responsiblePhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sigle,description,logo,banner,primaryColor,welcomeMessage,address,phone,email,responsibleName,responsiblePhone);

@override
String toString() {
  return 'CompanySettings(name: $name, sigle: $sigle, description: $description, logo: $logo, banner: $banner, primaryColor: $primaryColor, welcomeMessage: $welcomeMessage, address: $address, phone: $phone, email: $email, responsibleName: $responsibleName, responsiblePhone: $responsiblePhone)';
}


}

/// @nodoc
abstract mixin class _$CompanySettingsCopyWith<$Res> implements $CompanySettingsCopyWith<$Res> {
  factory _$CompanySettingsCopyWith(_CompanySettings value, $Res Function(_CompanySettings) _then) = __$CompanySettingsCopyWithImpl;
@override @useResult
$Res call({
 String name, String? sigle, String? description, String? logo, String? banner,@JsonKey(name: 'primary_color') String? primaryColor,@JsonKey(name: 'welcome_message') String? welcomeMessage, String? address, String? phone, String? email,@JsonKey(name: 'responsible_name') String? responsibleName,@JsonKey(name: 'responsible_phone') String? responsiblePhone
});




}
/// @nodoc
class __$CompanySettingsCopyWithImpl<$Res>
    implements _$CompanySettingsCopyWith<$Res> {
  __$CompanySettingsCopyWithImpl(this._self, this._then);

  final _CompanySettings _self;
  final $Res Function(_CompanySettings) _then;

/// Create a copy of CompanySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sigle = freezed,Object? description = freezed,Object? logo = freezed,Object? banner = freezed,Object? primaryColor = freezed,Object? welcomeMessage = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? responsibleName = freezed,Object? responsiblePhone = freezed,}) {
  return _then(_CompanySettings(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,primaryColor: freezed == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String?,welcomeMessage: freezed == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,responsibleName: freezed == responsibleName ? _self.responsibleName : responsibleName // ignore: cast_nullable_to_non_nullable
as String?,responsiblePhone: freezed == responsiblePhone ? _self.responsiblePhone : responsiblePhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
