// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commission_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommissionSettings {

@JsonKey(name: 'global_rate') String? get globalRate;@JsonKey(name: 'company_overrides') List<CompanyCommission>? get companyOverrides;
/// Create a copy of CommissionSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommissionSettingsCopyWith<CommissionSettings> get copyWith => _$CommissionSettingsCopyWithImpl<CommissionSettings>(this as CommissionSettings, _$identity);

  /// Serializes this CommissionSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommissionSettings&&(identical(other.globalRate, globalRate) || other.globalRate == globalRate)&&const DeepCollectionEquality().equals(other.companyOverrides, companyOverrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,globalRate,const DeepCollectionEquality().hash(companyOverrides));

@override
String toString() {
  return 'CommissionSettings(globalRate: $globalRate, companyOverrides: $companyOverrides)';
}


}

/// @nodoc
abstract mixin class $CommissionSettingsCopyWith<$Res>  {
  factory $CommissionSettingsCopyWith(CommissionSettings value, $Res Function(CommissionSettings) _then) = _$CommissionSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'global_rate') String? globalRate,@JsonKey(name: 'company_overrides') List<CompanyCommission>? companyOverrides
});




}
/// @nodoc
class _$CommissionSettingsCopyWithImpl<$Res>
    implements $CommissionSettingsCopyWith<$Res> {
  _$CommissionSettingsCopyWithImpl(this._self, this._then);

  final CommissionSettings _self;
  final $Res Function(CommissionSettings) _then;

/// Create a copy of CommissionSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? globalRate = freezed,Object? companyOverrides = freezed,}) {
  return _then(_self.copyWith(
globalRate: freezed == globalRate ? _self.globalRate : globalRate // ignore: cast_nullable_to_non_nullable
as String?,companyOverrides: freezed == companyOverrides ? _self.companyOverrides : companyOverrides // ignore: cast_nullable_to_non_nullable
as List<CompanyCommission>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommissionSettings].
extension CommissionSettingsPatterns on CommissionSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommissionSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommissionSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommissionSettings value)  $default,){
final _that = this;
switch (_that) {
case _CommissionSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommissionSettings value)?  $default,){
final _that = this;
switch (_that) {
case _CommissionSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'global_rate')  String? globalRate, @JsonKey(name: 'company_overrides')  List<CompanyCommission>? companyOverrides)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommissionSettings() when $default != null:
return $default(_that.globalRate,_that.companyOverrides);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'global_rate')  String? globalRate, @JsonKey(name: 'company_overrides')  List<CompanyCommission>? companyOverrides)  $default,) {final _that = this;
switch (_that) {
case _CommissionSettings():
return $default(_that.globalRate,_that.companyOverrides);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'global_rate')  String? globalRate, @JsonKey(name: 'company_overrides')  List<CompanyCommission>? companyOverrides)?  $default,) {final _that = this;
switch (_that) {
case _CommissionSettings() when $default != null:
return $default(_that.globalRate,_that.companyOverrides);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommissionSettings implements CommissionSettings {
  const _CommissionSettings({@JsonKey(name: 'global_rate') this.globalRate, @JsonKey(name: 'company_overrides') final  List<CompanyCommission>? companyOverrides}): _companyOverrides = companyOverrides;
  factory _CommissionSettings.fromJson(Map<String, dynamic> json) => _$CommissionSettingsFromJson(json);

@override@JsonKey(name: 'global_rate') final  String? globalRate;
 final  List<CompanyCommission>? _companyOverrides;
@override@JsonKey(name: 'company_overrides') List<CompanyCommission>? get companyOverrides {
  final value = _companyOverrides;
  if (value == null) return null;
  if (_companyOverrides is EqualUnmodifiableListView) return _companyOverrides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CommissionSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommissionSettingsCopyWith<_CommissionSettings> get copyWith => __$CommissionSettingsCopyWithImpl<_CommissionSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommissionSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommissionSettings&&(identical(other.globalRate, globalRate) || other.globalRate == globalRate)&&const DeepCollectionEquality().equals(other._companyOverrides, _companyOverrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,globalRate,const DeepCollectionEquality().hash(_companyOverrides));

@override
String toString() {
  return 'CommissionSettings(globalRate: $globalRate, companyOverrides: $companyOverrides)';
}


}

/// @nodoc
abstract mixin class _$CommissionSettingsCopyWith<$Res> implements $CommissionSettingsCopyWith<$Res> {
  factory _$CommissionSettingsCopyWith(_CommissionSettings value, $Res Function(_CommissionSettings) _then) = __$CommissionSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'global_rate') String? globalRate,@JsonKey(name: 'company_overrides') List<CompanyCommission>? companyOverrides
});




}
/// @nodoc
class __$CommissionSettingsCopyWithImpl<$Res>
    implements _$CommissionSettingsCopyWith<$Res> {
  __$CommissionSettingsCopyWithImpl(this._self, this._then);

  final _CommissionSettings _self;
  final $Res Function(_CommissionSettings) _then;

/// Create a copy of CommissionSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? globalRate = freezed,Object? companyOverrides = freezed,}) {
  return _then(_CommissionSettings(
globalRate: freezed == globalRate ? _self.globalRate : globalRate // ignore: cast_nullable_to_non_nullable
as String?,companyOverrides: freezed == companyOverrides ? _self._companyOverrides : companyOverrides // ignore: cast_nullable_to_non_nullable
as List<CompanyCommission>?,
  ));
}


}

// dart format on
