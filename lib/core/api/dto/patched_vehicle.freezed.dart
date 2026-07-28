// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedVehicle {

 int? get id; String? get registration; String? get brand; String? get model;@JsonKey(name: 'vehicle_type') String? get vehicleType;@JsonKey(name: 'total_seats') int? get totalSeats; VehicleStatusEnum? get status;@JsonKey(name: 'status_display') String? get statusDisplay;@JsonKey(name: 'seat_plan') dynamic get seatPlan;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of PatchedVehicle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedVehicleCopyWith<PatchedVehicle> get copyWith => _$PatchedVehicleCopyWithImpl<PatchedVehicle>(this as PatchedVehicle, _$identity);

  /// Serializes this PatchedVehicle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedVehicle&&(identical(other.id, id) || other.id == id)&&(identical(other.registration, registration) || other.registration == registration)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&const DeepCollectionEquality().equals(other.seatPlan, seatPlan)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,registration,brand,model,vehicleType,totalSeats,status,statusDisplay,const DeepCollectionEquality().hash(seatPlan),createdAt,updatedAt);

@override
String toString() {
  return 'PatchedVehicle(id: $id, registration: $registration, brand: $brand, model: $model, vehicleType: $vehicleType, totalSeats: $totalSeats, status: $status, statusDisplay: $statusDisplay, seatPlan: $seatPlan, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PatchedVehicleCopyWith<$Res>  {
  factory $PatchedVehicleCopyWith(PatchedVehicle value, $Res Function(PatchedVehicle) _then) = _$PatchedVehicleCopyWithImpl;
@useResult
$Res call({
 int? id, String? registration, String? brand, String? model,@JsonKey(name: 'vehicle_type') String? vehicleType,@JsonKey(name: 'total_seats') int? totalSeats, VehicleStatusEnum? status,@JsonKey(name: 'status_display') String? statusDisplay,@JsonKey(name: 'seat_plan') dynamic seatPlan,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$PatchedVehicleCopyWithImpl<$Res>
    implements $PatchedVehicleCopyWith<$Res> {
  _$PatchedVehicleCopyWithImpl(this._self, this._then);

  final PatchedVehicle _self;
  final $Res Function(PatchedVehicle) _then;

/// Create a copy of PatchedVehicle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? registration = freezed,Object? brand = freezed,Object? model = freezed,Object? vehicleType = freezed,Object? totalSeats = freezed,Object? status = freezed,Object? statusDisplay = freezed,Object? seatPlan = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,registration: freezed == registration ? _self.registration : registration // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,totalSeats: freezed == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VehicleStatusEnum?,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,seatPlan: freezed == seatPlan ? _self.seatPlan : seatPlan // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedVehicle].
extension PatchedVehiclePatterns on PatchedVehicle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedVehicle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedVehicle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedVehicle value)  $default,){
final _that = this;
switch (_that) {
case _PatchedVehicle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedVehicle value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedVehicle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? registration,  String? brand,  String? model, @JsonKey(name: 'vehicle_type')  String? vehicleType, @JsonKey(name: 'total_seats')  int? totalSeats,  VehicleStatusEnum? status, @JsonKey(name: 'status_display')  String? statusDisplay, @JsonKey(name: 'seat_plan')  dynamic seatPlan, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedVehicle() when $default != null:
return $default(_that.id,_that.registration,_that.brand,_that.model,_that.vehicleType,_that.totalSeats,_that.status,_that.statusDisplay,_that.seatPlan,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? registration,  String? brand,  String? model, @JsonKey(name: 'vehicle_type')  String? vehicleType, @JsonKey(name: 'total_seats')  int? totalSeats,  VehicleStatusEnum? status, @JsonKey(name: 'status_display')  String? statusDisplay, @JsonKey(name: 'seat_plan')  dynamic seatPlan, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PatchedVehicle():
return $default(_that.id,_that.registration,_that.brand,_that.model,_that.vehicleType,_that.totalSeats,_that.status,_that.statusDisplay,_that.seatPlan,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? registration,  String? brand,  String? model, @JsonKey(name: 'vehicle_type')  String? vehicleType, @JsonKey(name: 'total_seats')  int? totalSeats,  VehicleStatusEnum? status, @JsonKey(name: 'status_display')  String? statusDisplay, @JsonKey(name: 'seat_plan')  dynamic seatPlan, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatchedVehicle() when $default != null:
return $default(_that.id,_that.registration,_that.brand,_that.model,_that.vehicleType,_that.totalSeats,_that.status,_that.statusDisplay,_that.seatPlan,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedVehicle implements PatchedVehicle {
  const _PatchedVehicle({this.id, this.registration, this.brand, this.model, @JsonKey(name: 'vehicle_type') this.vehicleType, @JsonKey(name: 'total_seats') this.totalSeats, this.status, @JsonKey(name: 'status_display') this.statusDisplay, @JsonKey(name: 'seat_plan') this.seatPlan, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _PatchedVehicle.fromJson(Map<String, dynamic> json) => _$PatchedVehicleFromJson(json);

@override final  int? id;
@override final  String? registration;
@override final  String? brand;
@override final  String? model;
@override@JsonKey(name: 'vehicle_type') final  String? vehicleType;
@override@JsonKey(name: 'total_seats') final  int? totalSeats;
@override final  VehicleStatusEnum? status;
@override@JsonKey(name: 'status_display') final  String? statusDisplay;
@override@JsonKey(name: 'seat_plan') final  dynamic seatPlan;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of PatchedVehicle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedVehicleCopyWith<_PatchedVehicle> get copyWith => __$PatchedVehicleCopyWithImpl<_PatchedVehicle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedVehicleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedVehicle&&(identical(other.id, id) || other.id == id)&&(identical(other.registration, registration) || other.registration == registration)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&const DeepCollectionEquality().equals(other.seatPlan, seatPlan)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,registration,brand,model,vehicleType,totalSeats,status,statusDisplay,const DeepCollectionEquality().hash(seatPlan),createdAt,updatedAt);

@override
String toString() {
  return 'PatchedVehicle(id: $id, registration: $registration, brand: $brand, model: $model, vehicleType: $vehicleType, totalSeats: $totalSeats, status: $status, statusDisplay: $statusDisplay, seatPlan: $seatPlan, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatchedVehicleCopyWith<$Res> implements $PatchedVehicleCopyWith<$Res> {
  factory _$PatchedVehicleCopyWith(_PatchedVehicle value, $Res Function(_PatchedVehicle) _then) = __$PatchedVehicleCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? registration, String? brand, String? model,@JsonKey(name: 'vehicle_type') String? vehicleType,@JsonKey(name: 'total_seats') int? totalSeats, VehicleStatusEnum? status,@JsonKey(name: 'status_display') String? statusDisplay,@JsonKey(name: 'seat_plan') dynamic seatPlan,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$PatchedVehicleCopyWithImpl<$Res>
    implements _$PatchedVehicleCopyWith<$Res> {
  __$PatchedVehicleCopyWithImpl(this._self, this._then);

  final _PatchedVehicle _self;
  final $Res Function(_PatchedVehicle) _then;

/// Create a copy of PatchedVehicle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? registration = freezed,Object? brand = freezed,Object? model = freezed,Object? vehicleType = freezed,Object? totalSeats = freezed,Object? status = freezed,Object? statusDisplay = freezed,Object? seatPlan = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PatchedVehicle(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,registration: freezed == registration ? _self.registration : registration // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,totalSeats: freezed == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VehicleStatusEnum?,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,seatPlan: freezed == seatPlan ? _self.seatPlan : seatPlan // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
