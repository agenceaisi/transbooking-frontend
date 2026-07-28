// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionCreate {

 int get company; int get plan;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'auto_renew') bool? get autoRenew;
/// Create a copy of SubscriptionCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionCreateCopyWith<SubscriptionCreate> get copyWith => _$SubscriptionCreateCopyWithImpl<SubscriptionCreate>(this as SubscriptionCreate, _$identity);

  /// Serializes this SubscriptionCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionCreate&&(identical(other.company, company) || other.company == company)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,plan,startDate,endDate,autoRenew);

@override
String toString() {
  return 'SubscriptionCreate(company: $company, plan: $plan, startDate: $startDate, endDate: $endDate, autoRenew: $autoRenew)';
}


}

/// @nodoc
abstract mixin class $SubscriptionCreateCopyWith<$Res>  {
  factory $SubscriptionCreateCopyWith(SubscriptionCreate value, $Res Function(SubscriptionCreate) _then) = _$SubscriptionCreateCopyWithImpl;
@useResult
$Res call({
 int company, int plan,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'auto_renew') bool? autoRenew
});




}
/// @nodoc
class _$SubscriptionCreateCopyWithImpl<$Res>
    implements $SubscriptionCreateCopyWith<$Res> {
  _$SubscriptionCreateCopyWithImpl(this._self, this._then);

  final SubscriptionCreate _self;
  final $Res Function(SubscriptionCreate) _then;

/// Create a copy of SubscriptionCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = null,Object? plan = null,Object? startDate = freezed,Object? endDate = freezed,Object? autoRenew = freezed,}) {
  return _then(_self.copyWith(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as int,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionCreate].
extension SubscriptionCreatePatterns on SubscriptionCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionCreate value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionCreate value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int company,  int plan, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'auto_renew')  bool? autoRenew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionCreate() when $default != null:
return $default(_that.company,_that.plan,_that.startDate,_that.endDate,_that.autoRenew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int company,  int plan, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'auto_renew')  bool? autoRenew)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionCreate():
return $default(_that.company,_that.plan,_that.startDate,_that.endDate,_that.autoRenew);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int company,  int plan, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'auto_renew')  bool? autoRenew)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionCreate() when $default != null:
return $default(_that.company,_that.plan,_that.startDate,_that.endDate,_that.autoRenew);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionCreate implements SubscriptionCreate {
  const _SubscriptionCreate({required this.company, required this.plan, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'auto_renew') this.autoRenew});
  factory _SubscriptionCreate.fromJson(Map<String, dynamic> json) => _$SubscriptionCreateFromJson(json);

@override final  int company;
@override final  int plan;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'auto_renew') final  bool? autoRenew;

/// Create a copy of SubscriptionCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionCreateCopyWith<_SubscriptionCreate> get copyWith => __$SubscriptionCreateCopyWithImpl<_SubscriptionCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionCreate&&(identical(other.company, company) || other.company == company)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,plan,startDate,endDate,autoRenew);

@override
String toString() {
  return 'SubscriptionCreate(company: $company, plan: $plan, startDate: $startDate, endDate: $endDate, autoRenew: $autoRenew)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionCreateCopyWith<$Res> implements $SubscriptionCreateCopyWith<$Res> {
  factory _$SubscriptionCreateCopyWith(_SubscriptionCreate value, $Res Function(_SubscriptionCreate) _then) = __$SubscriptionCreateCopyWithImpl;
@override @useResult
$Res call({
 int company, int plan,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'auto_renew') bool? autoRenew
});




}
/// @nodoc
class __$SubscriptionCreateCopyWithImpl<$Res>
    implements _$SubscriptionCreateCopyWith<$Res> {
  __$SubscriptionCreateCopyWithImpl(this._self, this._then);

  final _SubscriptionCreate _self;
  final $Res Function(_SubscriptionCreate) _then;

/// Create a copy of SubscriptionCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = null,Object? plan = null,Object? startDate = freezed,Object? endDate = freezed,Object? autoRenew = freezed,}) {
  return _then(_SubscriptionCreate(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as int,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
