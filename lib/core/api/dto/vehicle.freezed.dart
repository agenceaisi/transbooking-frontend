// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Vehicle {

 int get id; String get registration; String? get brand; String? get model;@JsonKey(name: 'vehicle_type') String? get vehicleType;@JsonKey(name: 'total_seats') int get totalSeats; VehicleStatusEnum get status;@JsonKey(name: 'status_display') String get statusDisplay;@JsonKey(name: 'seat_plan') dynamic get seatPlan;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleCopyWith<Vehicle> get copyWith => _$VehicleCopyWithImpl<Vehicle>(this as Vehicle, _$identity);

  /// Serializes this Vehicle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Vehicle&&(identical(other.id, id) || other.id == id)&&(identical(other.registration, registration) || other.registration == registration)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&const DeepCollectionEquality().equals(other.seatPlan, seatPlan)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,registration,brand,model,vehicleType,totalSeats,status,statusDisplay,const DeepCollectionEquality().hash(seatPlan),createdAt,updatedAt);

@override
String toString() {
  return 'Vehicle(id: $id, registration: $registration, brand: $brand, model: $model, vehicleType: $vehicleType, totalSeats: $totalSeats, status: $status, statusDisplay: $statusDisplay, seatPlan: $seatPlan, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $VehicleCopyWith<$Res>  {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) _then) = _$VehicleCopyWithImpl;
@useResult
$Res call({
 int id, String registration, String? brand, String? model,@JsonKey(name: 'vehicle_type') String? vehicleType,@JsonKey(name: 'total_seats') int totalSeats, VehicleStatusEnum status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'seat_plan') dynamic seatPlan,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$VehicleCopyWithImpl<$Res>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._self, this._then);

  final Vehicle _self;
  final $Res Function(Vehicle) _then;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? registration = null,Object? brand = freezed,Object? model = freezed,Object? vehicleType = freezed,Object? totalSeats = null,Object? status = null,Object? statusDisplay = null,Object? seatPlan = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,registration: null == registration ? _self.registration : registration // ignore: cast_nullable_to_non_nullable
as String,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VehicleStatusEnum,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,seatPlan: freezed == seatPlan ? _self.seatPlan : seatPlan // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Vehicle].
extension VehiclePatterns on Vehicle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Vehicle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Vehicle value)  $default,){
final _that = this;
switch (_that) {
case _Vehicle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Vehicle value)?  $default,){
final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String registration,  String? brand,  String? model, @JsonKey(name: 'vehicle_type')  String? vehicleType, @JsonKey(name: 'total_seats')  int totalSeats,  VehicleStatusEnum status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'seat_plan')  dynamic seatPlan, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String registration,  String? brand,  String? model, @JsonKey(name: 'vehicle_type')  String? vehicleType, @JsonKey(name: 'total_seats')  int totalSeats,  VehicleStatusEnum status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'seat_plan')  dynamic seatPlan, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Vehicle():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String registration,  String? brand,  String? model, @JsonKey(name: 'vehicle_type')  String? vehicleType, @JsonKey(name: 'total_seats')  int totalSeats,  VehicleStatusEnum status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'seat_plan')  dynamic seatPlan, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
return $default(_that.id,_that.registration,_that.brand,_that.model,_that.vehicleType,_that.totalSeats,_that.status,_that.statusDisplay,_that.seatPlan,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Vehicle implements Vehicle {
  const _Vehicle({required this.id, required this.registration, this.brand, this.model, @JsonKey(name: 'vehicle_type') this.vehicleType, @JsonKey(name: 'total_seats') required this.totalSeats, required this.status, @JsonKey(name: 'status_display') required this.statusDisplay, @JsonKey(name: 'seat_plan') required this.seatPlan, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Vehicle.fromJson(Map<String, dynamic> json) => _$VehicleFromJson(json);

@override final  int id;
@override final  String registration;
@override final  String? brand;
@override final  String? model;
@override@JsonKey(name: 'vehicle_type') final  String? vehicleType;
@override@JsonKey(name: 'total_seats') final  int totalSeats;
@override final  VehicleStatusEnum status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override@JsonKey(name: 'seat_plan') final  dynamic seatPlan;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VehicleCopyWith<_Vehicle> get copyWith => __$VehicleCopyWithImpl<_Vehicle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VehicleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vehicle&&(identical(other.id, id) || other.id == id)&&(identical(other.registration, registration) || other.registration == registration)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&const DeepCollectionEquality().equals(other.seatPlan, seatPlan)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,registration,brand,model,vehicleType,totalSeats,status,statusDisplay,const DeepCollectionEquality().hash(seatPlan),createdAt,updatedAt);

@override
String toString() {
  return 'Vehicle(id: $id, registration: $registration, brand: $brand, model: $model, vehicleType: $vehicleType, totalSeats: $totalSeats, status: $status, statusDisplay: $statusDisplay, seatPlan: $seatPlan, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) _then) = __$VehicleCopyWithImpl;
@override @useResult
$Res call({
 int id, String registration, String? brand, String? model,@JsonKey(name: 'vehicle_type') String? vehicleType,@JsonKey(name: 'total_seats') int totalSeats, VehicleStatusEnum status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'seat_plan') dynamic seatPlan,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$VehicleCopyWithImpl<$Res>
    implements _$VehicleCopyWith<$Res> {
  __$VehicleCopyWithImpl(this._self, this._then);

  final _Vehicle _self;
  final $Res Function(_Vehicle) _then;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? registration = null,Object? brand = freezed,Object? model = freezed,Object? vehicleType = freezed,Object? totalSeats = null,Object? status = null,Object? statusDisplay = null,Object? seatPlan = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Vehicle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,registration: null == registration ? _self.registration : registration // ignore: cast_nullable_to_non_nullable
as String,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VehicleStatusEnum,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,seatPlan: freezed == seatPlan ? _self.seatPlan : seatPlan // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
