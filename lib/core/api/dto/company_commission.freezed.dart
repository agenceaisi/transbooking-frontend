// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_commission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyCommission {

@JsonKey(name: 'company_id') int get companyId;@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'commission_rate') String? get commissionRate;
/// Create a copy of CompanyCommission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyCommissionCopyWith<CompanyCommission> get copyWith => _$CompanyCommissionCopyWithImpl<CompanyCommission>(this as CompanyCommission, _$identity);

  /// Serializes this CompanyCommission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyCommission&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.commissionRate, commissionRate) || other.commissionRate == commissionRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,companyName,commissionRate);

@override
String toString() {
  return 'CompanyCommission(companyId: $companyId, companyName: $companyName, commissionRate: $commissionRate)';
}


}

/// @nodoc
abstract mixin class $CompanyCommissionCopyWith<$Res>  {
  factory $CompanyCommissionCopyWith(CompanyCommission value, $Res Function(CompanyCommission) _then) = _$CompanyCommissionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'company_id') int companyId,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'commission_rate') String? commissionRate
});




}
/// @nodoc
class _$CompanyCommissionCopyWithImpl<$Res>
    implements $CompanyCommissionCopyWith<$Res> {
  _$CompanyCommissionCopyWithImpl(this._self, this._then);

  final CompanyCommission _self;
  final $Res Function(CompanyCommission) _then;

/// Create a copy of CompanyCommission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyId = null,Object? companyName = null,Object? commissionRate = freezed,}) {
  return _then(_self.copyWith(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,commissionRate: freezed == commissionRate ? _self.commissionRate : commissionRate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyCommission].
extension CompanyCommissionPatterns on CompanyCommission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyCommission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyCommission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyCommission value)  $default,){
final _that = this;
switch (_that) {
case _CompanyCommission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyCommission value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyCommission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_id')  int companyId, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'commission_rate')  String? commissionRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyCommission() when $default != null:
return $default(_that.companyId,_that.companyName,_that.commissionRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_id')  int companyId, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'commission_rate')  String? commissionRate)  $default,) {final _that = this;
switch (_that) {
case _CompanyCommission():
return $default(_that.companyId,_that.companyName,_that.commissionRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'company_id')  int companyId, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'commission_rate')  String? commissionRate)?  $default,) {final _that = this;
switch (_that) {
case _CompanyCommission() when $default != null:
return $default(_that.companyId,_that.companyName,_that.commissionRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyCommission implements CompanyCommission {
  const _CompanyCommission({@JsonKey(name: 'company_id') required this.companyId, @JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'commission_rate') required this.commissionRate});
  factory _CompanyCommission.fromJson(Map<String, dynamic> json) => _$CompanyCommissionFromJson(json);

@override@JsonKey(name: 'company_id') final  int companyId;
@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'commission_rate') final  String? commissionRate;

/// Create a copy of CompanyCommission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCommissionCopyWith<_CompanyCommission> get copyWith => __$CompanyCommissionCopyWithImpl<_CompanyCommission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyCommissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyCommission&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.commissionRate, commissionRate) || other.commissionRate == commissionRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,companyName,commissionRate);

@override
String toString() {
  return 'CompanyCommission(companyId: $companyId, companyName: $companyName, commissionRate: $commissionRate)';
}


}

/// @nodoc
abstract mixin class _$CompanyCommissionCopyWith<$Res> implements $CompanyCommissionCopyWith<$Res> {
  factory _$CompanyCommissionCopyWith(_CompanyCommission value, $Res Function(_CompanyCommission) _then) = __$CompanyCommissionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'company_id') int companyId,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'commission_rate') String? commissionRate
});




}
/// @nodoc
class __$CompanyCommissionCopyWithImpl<$Res>
    implements _$CompanyCommissionCopyWith<$Res> {
  __$CompanyCommissionCopyWithImpl(this._self, this._then);

  final _CompanyCommission _self;
  final $Res Function(_CompanyCommission) _then;

/// Create a copy of CompanyCommission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyId = null,Object? companyName = null,Object? commissionRate = freezed,}) {
  return _then(_CompanyCommission(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,commissionRate: freezed == commissionRate ? _self.commissionRate : commissionRate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
