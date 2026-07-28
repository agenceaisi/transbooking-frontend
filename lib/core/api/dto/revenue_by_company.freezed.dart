// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenue_by_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RevenueByCompany {

 String get company; double get revenue; double get commission;
/// Create a copy of RevenueByCompany
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RevenueByCompanyCopyWith<RevenueByCompany> get copyWith => _$RevenueByCompanyCopyWithImpl<RevenueByCompany>(this as RevenueByCompany, _$identity);

  /// Serializes this RevenueByCompany to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RevenueByCompany&&(identical(other.company, company) || other.company == company)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.commission, commission) || other.commission == commission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,revenue,commission);

@override
String toString() {
  return 'RevenueByCompany(company: $company, revenue: $revenue, commission: $commission)';
}


}

/// @nodoc
abstract mixin class $RevenueByCompanyCopyWith<$Res>  {
  factory $RevenueByCompanyCopyWith(RevenueByCompany value, $Res Function(RevenueByCompany) _then) = _$RevenueByCompanyCopyWithImpl;
@useResult
$Res call({
 String company, double revenue, double commission
});




}
/// @nodoc
class _$RevenueByCompanyCopyWithImpl<$Res>
    implements $RevenueByCompanyCopyWith<$Res> {
  _$RevenueByCompanyCopyWithImpl(this._self, this._then);

  final RevenueByCompany _self;
  final $Res Function(RevenueByCompany) _then;

/// Create a copy of RevenueByCompany
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = null,Object? revenue = null,Object? commission = null,}) {
  return _then(_self.copyWith(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double,commission: null == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RevenueByCompany].
extension RevenueByCompanyPatterns on RevenueByCompany {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RevenueByCompany value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RevenueByCompany() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RevenueByCompany value)  $default,){
final _that = this;
switch (_that) {
case _RevenueByCompany():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RevenueByCompany value)?  $default,){
final _that = this;
switch (_that) {
case _RevenueByCompany() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String company,  double revenue,  double commission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RevenueByCompany() when $default != null:
return $default(_that.company,_that.revenue,_that.commission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String company,  double revenue,  double commission)  $default,) {final _that = this;
switch (_that) {
case _RevenueByCompany():
return $default(_that.company,_that.revenue,_that.commission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String company,  double revenue,  double commission)?  $default,) {final _that = this;
switch (_that) {
case _RevenueByCompany() when $default != null:
return $default(_that.company,_that.revenue,_that.commission);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RevenueByCompany implements RevenueByCompany {
  const _RevenueByCompany({required this.company, required this.revenue, required this.commission});
  factory _RevenueByCompany.fromJson(Map<String, dynamic> json) => _$RevenueByCompanyFromJson(json);

@override final  String company;
@override final  double revenue;
@override final  double commission;

/// Create a copy of RevenueByCompany
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RevenueByCompanyCopyWith<_RevenueByCompany> get copyWith => __$RevenueByCompanyCopyWithImpl<_RevenueByCompany>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RevenueByCompanyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RevenueByCompany&&(identical(other.company, company) || other.company == company)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.commission, commission) || other.commission == commission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,revenue,commission);

@override
String toString() {
  return 'RevenueByCompany(company: $company, revenue: $revenue, commission: $commission)';
}


}

/// @nodoc
abstract mixin class _$RevenueByCompanyCopyWith<$Res> implements $RevenueByCompanyCopyWith<$Res> {
  factory _$RevenueByCompanyCopyWith(_RevenueByCompany value, $Res Function(_RevenueByCompany) _then) = __$RevenueByCompanyCopyWithImpl;
@override @useResult
$Res call({
 String company, double revenue, double commission
});




}
/// @nodoc
class __$RevenueByCompanyCopyWithImpl<$Res>
    implements _$RevenueByCompanyCopyWith<$Res> {
  __$RevenueByCompanyCopyWithImpl(this._self, this._then);

  final _RevenueByCompany _self;
  final $Res Function(_RevenueByCompany) _then;

/// Create a copy of RevenueByCompany
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = null,Object? revenue = null,Object? commission = null,}) {
  return _then(_RevenueByCompany(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double,commission: null == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
