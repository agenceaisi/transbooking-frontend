// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_commission_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedCommissionSettings {

@JsonKey(name: 'global_rate') String? get globalRate;@JsonKey(name: 'company_overrides') List<CompanyCommission>? get companyOverrides;
/// Create a copy of PatchedCommissionSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedCommissionSettingsCopyWith<PatchedCommissionSettings> get copyWith => _$PatchedCommissionSettingsCopyWithImpl<PatchedCommissionSettings>(this as PatchedCommissionSettings, _$identity);

  /// Serializes this PatchedCommissionSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedCommissionSettings&&(identical(other.globalRate, globalRate) || other.globalRate == globalRate)&&const DeepCollectionEquality().equals(other.companyOverrides, companyOverrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,globalRate,const DeepCollectionEquality().hash(companyOverrides));

@override
String toString() {
  return 'PatchedCommissionSettings(globalRate: $globalRate, companyOverrides: $companyOverrides)';
}


}

/// @nodoc
abstract mixin class $PatchedCommissionSettingsCopyWith<$Res>  {
  factory $PatchedCommissionSettingsCopyWith(PatchedCommissionSettings value, $Res Function(PatchedCommissionSettings) _then) = _$PatchedCommissionSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'global_rate') String? globalRate,@JsonKey(name: 'company_overrides') List<CompanyCommission>? companyOverrides
});




}
/// @nodoc
class _$PatchedCommissionSettingsCopyWithImpl<$Res>
    implements $PatchedCommissionSettingsCopyWith<$Res> {
  _$PatchedCommissionSettingsCopyWithImpl(this._self, this._then);

  final PatchedCommissionSettings _self;
  final $Res Function(PatchedCommissionSettings) _then;

/// Create a copy of PatchedCommissionSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? globalRate = freezed,Object? companyOverrides = freezed,}) {
  return _then(_self.copyWith(
globalRate: freezed == globalRate ? _self.globalRate : globalRate // ignore: cast_nullable_to_non_nullable
as String?,companyOverrides: freezed == companyOverrides ? _self.companyOverrides : companyOverrides // ignore: cast_nullable_to_non_nullable
as List<CompanyCommission>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedCommissionSettings].
extension PatchedCommissionSettingsPatterns on PatchedCommissionSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedCommissionSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedCommissionSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedCommissionSettings value)  $default,){
final _that = this;
switch (_that) {
case _PatchedCommissionSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedCommissionSettings value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedCommissionSettings() when $default != null:
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
case _PatchedCommissionSettings() when $default != null:
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
case _PatchedCommissionSettings():
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
case _PatchedCommissionSettings() when $default != null:
return $default(_that.globalRate,_that.companyOverrides);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedCommissionSettings implements PatchedCommissionSettings {
  const _PatchedCommissionSettings({@JsonKey(name: 'global_rate') this.globalRate, @JsonKey(name: 'company_overrides') final  List<CompanyCommission>? companyOverrides}): _companyOverrides = companyOverrides;
  factory _PatchedCommissionSettings.fromJson(Map<String, dynamic> json) => _$PatchedCommissionSettingsFromJson(json);

@override@JsonKey(name: 'global_rate') final  String? globalRate;
 final  List<CompanyCommission>? _companyOverrides;
@override@JsonKey(name: 'company_overrides') List<CompanyCommission>? get companyOverrides {
  final value = _companyOverrides;
  if (value == null) return null;
  if (_companyOverrides is EqualUnmodifiableListView) return _companyOverrides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PatchedCommissionSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedCommissionSettingsCopyWith<_PatchedCommissionSettings> get copyWith => __$PatchedCommissionSettingsCopyWithImpl<_PatchedCommissionSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedCommissionSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedCommissionSettings&&(identical(other.globalRate, globalRate) || other.globalRate == globalRate)&&const DeepCollectionEquality().equals(other._companyOverrides, _companyOverrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,globalRate,const DeepCollectionEquality().hash(_companyOverrides));

@override
String toString() {
  return 'PatchedCommissionSettings(globalRate: $globalRate, companyOverrides: $companyOverrides)';
}


}

/// @nodoc
abstract mixin class _$PatchedCommissionSettingsCopyWith<$Res> implements $PatchedCommissionSettingsCopyWith<$Res> {
  factory _$PatchedCommissionSettingsCopyWith(_PatchedCommissionSettings value, $Res Function(_PatchedCommissionSettings) _then) = __$PatchedCommissionSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'global_rate') String? globalRate,@JsonKey(name: 'company_overrides') List<CompanyCommission>? companyOverrides
});




}
/// @nodoc
class __$PatchedCommissionSettingsCopyWithImpl<$Res>
    implements _$PatchedCommissionSettingsCopyWith<$Res> {
  __$PatchedCommissionSettingsCopyWithImpl(this._self, this._then);

  final _PatchedCommissionSettings _self;
  final $Res Function(_PatchedCommissionSettings) _then;

/// Create a copy of PatchedCommissionSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? globalRate = freezed,Object? companyOverrides = freezed,}) {
  return _then(_PatchedCommissionSettings(
globalRate: freezed == globalRate ? _self.globalRate : globalRate // ignore: cast_nullable_to_non_nullable
as String?,companyOverrides: freezed == companyOverrides ? _self._companyOverrides : companyOverrides // ignore: cast_nullable_to_non_nullable
as List<CompanyCommission>?,
  ));
}


}

// dart format on
