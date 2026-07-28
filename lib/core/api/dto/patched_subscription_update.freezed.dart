// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_subscription_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedSubscriptionUpdate {

 int? get plan;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate; StatusEaaEnum? get status;@JsonKey(name: 'auto_renew') bool? get autoRenew;
/// Create a copy of PatchedSubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedSubscriptionUpdateCopyWith<PatchedSubscriptionUpdate> get copyWith => _$PatchedSubscriptionUpdateCopyWithImpl<PatchedSubscriptionUpdate>(this as PatchedSubscriptionUpdate, _$identity);

  /// Serializes this PatchedSubscriptionUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedSubscriptionUpdate&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plan,startDate,endDate,status,autoRenew);

@override
String toString() {
  return 'PatchedSubscriptionUpdate(plan: $plan, startDate: $startDate, endDate: $endDate, status: $status, autoRenew: $autoRenew)';
}


}

/// @nodoc
abstract mixin class $PatchedSubscriptionUpdateCopyWith<$Res>  {
  factory $PatchedSubscriptionUpdateCopyWith(PatchedSubscriptionUpdate value, $Res Function(PatchedSubscriptionUpdate) _then) = _$PatchedSubscriptionUpdateCopyWithImpl;
@useResult
$Res call({
 int? plan,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate, StatusEaaEnum? status,@JsonKey(name: 'auto_renew') bool? autoRenew
});




}
/// @nodoc
class _$PatchedSubscriptionUpdateCopyWithImpl<$Res>
    implements $PatchedSubscriptionUpdateCopyWith<$Res> {
  _$PatchedSubscriptionUpdateCopyWithImpl(this._self, this._then);

  final PatchedSubscriptionUpdate _self;
  final $Res Function(PatchedSubscriptionUpdate) _then;

/// Create a copy of PatchedSubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plan = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? status = freezed,Object? autoRenew = freezed,}) {
  return _then(_self.copyWith(
plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEaaEnum?,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedSubscriptionUpdate].
extension PatchedSubscriptionUpdatePatterns on PatchedSubscriptionUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedSubscriptionUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedSubscriptionUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedSubscriptionUpdate value)  $default,){
final _that = this;
switch (_that) {
case _PatchedSubscriptionUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedSubscriptionUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedSubscriptionUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? plan, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate,  StatusEaaEnum? status, @JsonKey(name: 'auto_renew')  bool? autoRenew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedSubscriptionUpdate() when $default != null:
return $default(_that.plan,_that.startDate,_that.endDate,_that.status,_that.autoRenew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? plan, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate,  StatusEaaEnum? status, @JsonKey(name: 'auto_renew')  bool? autoRenew)  $default,) {final _that = this;
switch (_that) {
case _PatchedSubscriptionUpdate():
return $default(_that.plan,_that.startDate,_that.endDate,_that.status,_that.autoRenew);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? plan, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate,  StatusEaaEnum? status, @JsonKey(name: 'auto_renew')  bool? autoRenew)?  $default,) {final _that = this;
switch (_that) {
case _PatchedSubscriptionUpdate() when $default != null:
return $default(_that.plan,_that.startDate,_that.endDate,_that.status,_that.autoRenew);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedSubscriptionUpdate implements PatchedSubscriptionUpdate {
  const _PatchedSubscriptionUpdate({this.plan, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, this.status, @JsonKey(name: 'auto_renew') this.autoRenew});
  factory _PatchedSubscriptionUpdate.fromJson(Map<String, dynamic> json) => _$PatchedSubscriptionUpdateFromJson(json);

@override final  int? plan;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override final  StatusEaaEnum? status;
@override@JsonKey(name: 'auto_renew') final  bool? autoRenew;

/// Create a copy of PatchedSubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedSubscriptionUpdateCopyWith<_PatchedSubscriptionUpdate> get copyWith => __$PatchedSubscriptionUpdateCopyWithImpl<_PatchedSubscriptionUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedSubscriptionUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedSubscriptionUpdate&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plan,startDate,endDate,status,autoRenew);

@override
String toString() {
  return 'PatchedSubscriptionUpdate(plan: $plan, startDate: $startDate, endDate: $endDate, status: $status, autoRenew: $autoRenew)';
}


}

/// @nodoc
abstract mixin class _$PatchedSubscriptionUpdateCopyWith<$Res> implements $PatchedSubscriptionUpdateCopyWith<$Res> {
  factory _$PatchedSubscriptionUpdateCopyWith(_PatchedSubscriptionUpdate value, $Res Function(_PatchedSubscriptionUpdate) _then) = __$PatchedSubscriptionUpdateCopyWithImpl;
@override @useResult
$Res call({
 int? plan,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate, StatusEaaEnum? status,@JsonKey(name: 'auto_renew') bool? autoRenew
});




}
/// @nodoc
class __$PatchedSubscriptionUpdateCopyWithImpl<$Res>
    implements _$PatchedSubscriptionUpdateCopyWith<$Res> {
  __$PatchedSubscriptionUpdateCopyWithImpl(this._self, this._then);

  final _PatchedSubscriptionUpdate _self;
  final $Res Function(_PatchedSubscriptionUpdate) _then;

/// Create a copy of PatchedSubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plan = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? status = freezed,Object? autoRenew = freezed,}) {
  return _then(_PatchedSubscriptionUpdate(
plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEaaEnum?,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
