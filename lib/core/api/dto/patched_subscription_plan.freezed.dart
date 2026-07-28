// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_subscription_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedSubscriptionPlan {

 int? get id; String? get name; String? get description; String? get price;@JsonKey(name: 'duration_months') int? get durationMonths; dynamic get features;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of PatchedSubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedSubscriptionPlanCopyWith<PatchedSubscriptionPlan> get copyWith => _$PatchedSubscriptionPlanCopyWithImpl<PatchedSubscriptionPlan>(this as PatchedSubscriptionPlan, _$identity);

  /// Serializes this PatchedSubscriptionPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedSubscriptionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.durationMonths, durationMonths) || other.durationMonths == durationMonths)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,durationMonths,const DeepCollectionEquality().hash(features),isActive,createdAt);

@override
String toString() {
  return 'PatchedSubscriptionPlan(id: $id, name: $name, description: $description, price: $price, durationMonths: $durationMonths, features: $features, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PatchedSubscriptionPlanCopyWith<$Res>  {
  factory $PatchedSubscriptionPlanCopyWith(PatchedSubscriptionPlan value, $Res Function(PatchedSubscriptionPlan) _then) = _$PatchedSubscriptionPlanCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? description, String? price,@JsonKey(name: 'duration_months') int? durationMonths, dynamic features,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$PatchedSubscriptionPlanCopyWithImpl<$Res>
    implements $PatchedSubscriptionPlanCopyWith<$Res> {
  _$PatchedSubscriptionPlanCopyWithImpl(this._self, this._then);

  final PatchedSubscriptionPlan _self;
  final $Res Function(PatchedSubscriptionPlan) _then;

/// Create a copy of PatchedSubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? durationMonths = freezed,Object? features = freezed,Object? isActive = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,durationMonths: freezed == durationMonths ? _self.durationMonths : durationMonths // ignore: cast_nullable_to_non_nullable
as int?,features: freezed == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as dynamic,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedSubscriptionPlan].
extension PatchedSubscriptionPlanPatterns on PatchedSubscriptionPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedSubscriptionPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedSubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedSubscriptionPlan value)  $default,){
final _that = this;
switch (_that) {
case _PatchedSubscriptionPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedSubscriptionPlan value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedSubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description,  String? price, @JsonKey(name: 'duration_months')  int? durationMonths,  dynamic features, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedSubscriptionPlan() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.durationMonths,_that.features,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description,  String? price, @JsonKey(name: 'duration_months')  int? durationMonths,  dynamic features, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PatchedSubscriptionPlan():
return $default(_that.id,_that.name,_that.description,_that.price,_that.durationMonths,_that.features,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? description,  String? price, @JsonKey(name: 'duration_months')  int? durationMonths,  dynamic features, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PatchedSubscriptionPlan() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.durationMonths,_that.features,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedSubscriptionPlan implements PatchedSubscriptionPlan {
  const _PatchedSubscriptionPlan({this.id, this.name, this.description, this.price, @JsonKey(name: 'duration_months') this.durationMonths, this.features, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'created_at') this.createdAt});
  factory _PatchedSubscriptionPlan.fromJson(Map<String, dynamic> json) => _$PatchedSubscriptionPlanFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? description;
@override final  String? price;
@override@JsonKey(name: 'duration_months') final  int? durationMonths;
@override final  dynamic features;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of PatchedSubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedSubscriptionPlanCopyWith<_PatchedSubscriptionPlan> get copyWith => __$PatchedSubscriptionPlanCopyWithImpl<_PatchedSubscriptionPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedSubscriptionPlanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedSubscriptionPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.durationMonths, durationMonths) || other.durationMonths == durationMonths)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,durationMonths,const DeepCollectionEquality().hash(features),isActive,createdAt);

@override
String toString() {
  return 'PatchedSubscriptionPlan(id: $id, name: $name, description: $description, price: $price, durationMonths: $durationMonths, features: $features, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PatchedSubscriptionPlanCopyWith<$Res> implements $PatchedSubscriptionPlanCopyWith<$Res> {
  factory _$PatchedSubscriptionPlanCopyWith(_PatchedSubscriptionPlan value, $Res Function(_PatchedSubscriptionPlan) _then) = __$PatchedSubscriptionPlanCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? description, String? price,@JsonKey(name: 'duration_months') int? durationMonths, dynamic features,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$PatchedSubscriptionPlanCopyWithImpl<$Res>
    implements _$PatchedSubscriptionPlanCopyWith<$Res> {
  __$PatchedSubscriptionPlanCopyWithImpl(this._self, this._then);

  final _PatchedSubscriptionPlan _self;
  final $Res Function(_PatchedSubscriptionPlan) _then;

/// Create a copy of PatchedSubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? durationMonths = freezed,Object? features = freezed,Object? isActive = freezed,Object? createdAt = freezed,}) {
  return _then(_PatchedSubscriptionPlan(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,durationMonths: freezed == durationMonths ? _self.durationMonths : durationMonths // ignore: cast_nullable_to_non_nullable
as int?,features: freezed == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as dynamic,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
