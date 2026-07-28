// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionRead {

 int get id; int get company;@JsonKey(name: 'company_name') String get companyName; SubscriptionPlan get plan;@JsonKey(name: 'start_date') DateTime get startDate;@JsonKey(name: 'end_date') DateTime get endDate; StatusEaaEnum? get status;@JsonKey(name: 'status_display') String get statusDisplay;@JsonKey(name: 'auto_renew') bool? get autoRenew;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of SubscriptionRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionReadCopyWith<SubscriptionRead> get copyWith => _$SubscriptionReadCopyWithImpl<SubscriptionRead>(this as SubscriptionRead, _$identity);

  /// Serializes this SubscriptionRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,plan,startDate,endDate,status,statusDisplay,autoRenew,createdAt);

@override
String toString() {
  return 'SubscriptionRead(id: $id, company: $company, companyName: $companyName, plan: $plan, startDate: $startDate, endDate: $endDate, status: $status, statusDisplay: $statusDisplay, autoRenew: $autoRenew, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SubscriptionReadCopyWith<$Res>  {
  factory $SubscriptionReadCopyWith(SubscriptionRead value, $Res Function(SubscriptionRead) _then) = _$SubscriptionReadCopyWithImpl;
@useResult
$Res call({
 int id, int company,@JsonKey(name: 'company_name') String companyName, SubscriptionPlan plan,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate, StatusEaaEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'auto_renew') bool? autoRenew,@JsonKey(name: 'created_at') DateTime createdAt
});


$SubscriptionPlanCopyWith<$Res> get plan;

}
/// @nodoc
class _$SubscriptionReadCopyWithImpl<$Res>
    implements $SubscriptionReadCopyWith<$Res> {
  _$SubscriptionReadCopyWithImpl(this._self, this._then);

  final SubscriptionRead _self;
  final $Res Function(SubscriptionRead) _then;

/// Create a copy of SubscriptionRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? companyName = null,Object? plan = null,Object? startDate = null,Object? endDate = null,Object? status = freezed,Object? statusDisplay = null,Object? autoRenew = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEaaEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of SubscriptionRead
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res> get plan {
  
  return $SubscriptionPlanCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubscriptionRead].
extension SubscriptionReadPatterns on SubscriptionRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionRead value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionRead value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  SubscriptionPlan plan, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate,  StatusEaaEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'auto_renew')  bool? autoRenew, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.plan,_that.startDate,_that.endDate,_that.status,_that.statusDisplay,_that.autoRenew,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  SubscriptionPlan plan, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate,  StatusEaaEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'auto_renew')  bool? autoRenew, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionRead():
return $default(_that.id,_that.company,_that.companyName,_that.plan,_that.startDate,_that.endDate,_that.status,_that.statusDisplay,_that.autoRenew,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  SubscriptionPlan plan, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate,  StatusEaaEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'auto_renew')  bool? autoRenew, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.plan,_that.startDate,_that.endDate,_that.status,_that.statusDisplay,_that.autoRenew,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionRead implements SubscriptionRead {
  const _SubscriptionRead({required this.id, required this.company, @JsonKey(name: 'company_name') required this.companyName, required this.plan, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate, this.status, @JsonKey(name: 'status_display') required this.statusDisplay, @JsonKey(name: 'auto_renew') this.autoRenew, @JsonKey(name: 'created_at') required this.createdAt});
  factory _SubscriptionRead.fromJson(Map<String, dynamic> json) => _$SubscriptionReadFromJson(json);

@override final  int id;
@override final  int company;
@override@JsonKey(name: 'company_name') final  String companyName;
@override final  SubscriptionPlan plan;
@override@JsonKey(name: 'start_date') final  DateTime startDate;
@override@JsonKey(name: 'end_date') final  DateTime endDate;
@override final  StatusEaaEnum? status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override@JsonKey(name: 'auto_renew') final  bool? autoRenew;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of SubscriptionRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionReadCopyWith<_SubscriptionRead> get copyWith => __$SubscriptionReadCopyWithImpl<_SubscriptionRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,plan,startDate,endDate,status,statusDisplay,autoRenew,createdAt);

@override
String toString() {
  return 'SubscriptionRead(id: $id, company: $company, companyName: $companyName, plan: $plan, startDate: $startDate, endDate: $endDate, status: $status, statusDisplay: $statusDisplay, autoRenew: $autoRenew, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionReadCopyWith<$Res> implements $SubscriptionReadCopyWith<$Res> {
  factory _$SubscriptionReadCopyWith(_SubscriptionRead value, $Res Function(_SubscriptionRead) _then) = __$SubscriptionReadCopyWithImpl;
@override @useResult
$Res call({
 int id, int company,@JsonKey(name: 'company_name') String companyName, SubscriptionPlan plan,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate, StatusEaaEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'auto_renew') bool? autoRenew,@JsonKey(name: 'created_at') DateTime createdAt
});


@override $SubscriptionPlanCopyWith<$Res> get plan;

}
/// @nodoc
class __$SubscriptionReadCopyWithImpl<$Res>
    implements _$SubscriptionReadCopyWith<$Res> {
  __$SubscriptionReadCopyWithImpl(this._self, this._then);

  final _SubscriptionRead _self;
  final $Res Function(_SubscriptionRead) _then;

/// Create a copy of SubscriptionRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? companyName = null,Object? plan = null,Object? startDate = null,Object? endDate = null,Object? status = freezed,Object? statusDisplay = null,Object? autoRenew = freezed,Object? createdAt = null,}) {
  return _then(_SubscriptionRead(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEaaEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of SubscriptionRead
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res> get plan {
  
  return $SubscriptionPlanCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}

// dart format on
