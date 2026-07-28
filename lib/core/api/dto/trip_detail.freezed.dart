// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripDetail {

 int get id; int get route;@JsonKey(name: 'route_label') String get routeLabel;@JsonKey(name: 'origin_city') String get originCity;@JsonKey(name: 'destination_city') String get destinationCity; int get vehicle;@JsonKey(name: 'vehicle_registration') String get vehicleRegistration;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'arrival_time') DateTime? get arrivalTime; String get price;@JsonKey(name: 'available_seats') int? get availableSeats; StatusF60Enum? get status;@JsonKey(name: 'status_display') String get statusDisplay; int get company;@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'company_sigle') String get companySigle;@JsonKey(name: 'company_rating') double? get companyRating;@JsonKey(name: 'is_direct') bool get isDirect;@JsonKey(name: 'stops_count') int get stopsCount;@JsonKey(name: 'duration_minutes') int get durationMinutes;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'available_seat_numbers') List<String> get availableSeatNumbers;
/// Create a copy of TripDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripDetailCopyWith<TripDetail> get copyWith => _$TripDetailCopyWithImpl<TripDetail>(this as TripDetail, _$identity);

  /// Serializes this TripDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.companyRating, companyRating) || other.companyRating == companyRating)&&(identical(other.isDirect, isDirect) || other.isDirect == isDirect)&&(identical(other.stopsCount, stopsCount) || other.stopsCount == stopsCount)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.availableSeatNumbers, availableSeatNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,route,routeLabel,originCity,destinationCity,vehicle,vehicleRegistration,departureTime,arrivalTime,price,availableSeats,status,statusDisplay,company,companyName,companySigle,companyRating,isDirect,stopsCount,durationMinutes,createdAt,updatedAt,const DeepCollectionEquality().hash(availableSeatNumbers)]);

@override
String toString() {
  return 'TripDetail(id: $id, route: $route, routeLabel: $routeLabel, originCity: $originCity, destinationCity: $destinationCity, vehicle: $vehicle, vehicleRegistration: $vehicleRegistration, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, availableSeats: $availableSeats, status: $status, statusDisplay: $statusDisplay, company: $company, companyName: $companyName, companySigle: $companySigle, companyRating: $companyRating, isDirect: $isDirect, stopsCount: $stopsCount, durationMinutes: $durationMinutes, createdAt: $createdAt, updatedAt: $updatedAt, availableSeatNumbers: $availableSeatNumbers)';
}


}

/// @nodoc
abstract mixin class $TripDetailCopyWith<$Res>  {
  factory $TripDetailCopyWith(TripDetail value, $Res Function(TripDetail) _then) = _$TripDetailCopyWithImpl;
@useResult
$Res call({
 int id, int route,@JsonKey(name: 'route_label') String routeLabel,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity, int vehicle,@JsonKey(name: 'vehicle_registration') String vehicleRegistration,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, String price,@JsonKey(name: 'available_seats') int? availableSeats, StatusF60Enum? status,@JsonKey(name: 'status_display') String statusDisplay, int company,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_sigle') String companySigle,@JsonKey(name: 'company_rating') double? companyRating,@JsonKey(name: 'is_direct') bool isDirect,@JsonKey(name: 'stops_count') int stopsCount,@JsonKey(name: 'duration_minutes') int durationMinutes,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'available_seat_numbers') List<String> availableSeatNumbers
});




}
/// @nodoc
class _$TripDetailCopyWithImpl<$Res>
    implements $TripDetailCopyWith<$Res> {
  _$TripDetailCopyWithImpl(this._self, this._then);

  final TripDetail _self;
  final $Res Function(TripDetail) _then;

/// Create a copy of TripDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? route = null,Object? routeLabel = null,Object? originCity = null,Object? destinationCity = null,Object? vehicle = null,Object? vehicleRegistration = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = null,Object? availableSeats = freezed,Object? status = freezed,Object? statusDisplay = null,Object? company = null,Object? companyName = null,Object? companySigle = null,Object? companyRating = freezed,Object? isDirect = null,Object? stopsCount = null,Object? durationMinutes = null,Object? createdAt = null,Object? updatedAt = null,Object? availableSeatNumbers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as int,routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,vehicle: null == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as int,vehicleRegistration: null == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: null == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String,companyRating: freezed == companyRating ? _self.companyRating : companyRating // ignore: cast_nullable_to_non_nullable
as double?,isDirect: null == isDirect ? _self.isDirect : isDirect // ignore: cast_nullable_to_non_nullable
as bool,stopsCount: null == stopsCount ? _self.stopsCount : stopsCount // ignore: cast_nullable_to_non_nullable
as int,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeatNumbers: null == availableSeatNumbers ? _self.availableSeatNumbers : availableSeatNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TripDetail].
extension TripDetailPatterns on TripDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripDetail value)  $default,){
final _that = this;
switch (_that) {
case _TripDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripDetail value)?  $default,){
final _that = this;
switch (_that) {
case _TripDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int route, @JsonKey(name: 'route_label')  String routeLabel, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity,  int vehicle, @JsonKey(name: 'vehicle_registration')  String vehicleRegistration, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String price, @JsonKey(name: 'available_seats')  int? availableSeats,  StatusF60Enum? status, @JsonKey(name: 'status_display')  String statusDisplay,  int company, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String companySigle, @JsonKey(name: 'company_rating')  double? companyRating, @JsonKey(name: 'is_direct')  bool isDirect, @JsonKey(name: 'stops_count')  int stopsCount, @JsonKey(name: 'duration_minutes')  int durationMinutes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'available_seat_numbers')  List<String> availableSeatNumbers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripDetail() when $default != null:
return $default(_that.id,_that.route,_that.routeLabel,_that.originCity,_that.destinationCity,_that.vehicle,_that.vehicleRegistration,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.status,_that.statusDisplay,_that.company,_that.companyName,_that.companySigle,_that.companyRating,_that.isDirect,_that.stopsCount,_that.durationMinutes,_that.createdAt,_that.updatedAt,_that.availableSeatNumbers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int route, @JsonKey(name: 'route_label')  String routeLabel, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity,  int vehicle, @JsonKey(name: 'vehicle_registration')  String vehicleRegistration, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String price, @JsonKey(name: 'available_seats')  int? availableSeats,  StatusF60Enum? status, @JsonKey(name: 'status_display')  String statusDisplay,  int company, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String companySigle, @JsonKey(name: 'company_rating')  double? companyRating, @JsonKey(name: 'is_direct')  bool isDirect, @JsonKey(name: 'stops_count')  int stopsCount, @JsonKey(name: 'duration_minutes')  int durationMinutes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'available_seat_numbers')  List<String> availableSeatNumbers)  $default,) {final _that = this;
switch (_that) {
case _TripDetail():
return $default(_that.id,_that.route,_that.routeLabel,_that.originCity,_that.destinationCity,_that.vehicle,_that.vehicleRegistration,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.status,_that.statusDisplay,_that.company,_that.companyName,_that.companySigle,_that.companyRating,_that.isDirect,_that.stopsCount,_that.durationMinutes,_that.createdAt,_that.updatedAt,_that.availableSeatNumbers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int route, @JsonKey(name: 'route_label')  String routeLabel, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity,  int vehicle, @JsonKey(name: 'vehicle_registration')  String vehicleRegistration, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  String price, @JsonKey(name: 'available_seats')  int? availableSeats,  StatusF60Enum? status, @JsonKey(name: 'status_display')  String statusDisplay,  int company, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String companySigle, @JsonKey(name: 'company_rating')  double? companyRating, @JsonKey(name: 'is_direct')  bool isDirect, @JsonKey(name: 'stops_count')  int stopsCount, @JsonKey(name: 'duration_minutes')  int durationMinutes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'available_seat_numbers')  List<String> availableSeatNumbers)?  $default,) {final _that = this;
switch (_that) {
case _TripDetail() when $default != null:
return $default(_that.id,_that.route,_that.routeLabel,_that.originCity,_that.destinationCity,_that.vehicle,_that.vehicleRegistration,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.status,_that.statusDisplay,_that.company,_that.companyName,_that.companySigle,_that.companyRating,_that.isDirect,_that.stopsCount,_that.durationMinutes,_that.createdAt,_that.updatedAt,_that.availableSeatNumbers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripDetail implements TripDetail {
  const _TripDetail({required this.id, required this.route, @JsonKey(name: 'route_label') required this.routeLabel, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'destination_city') required this.destinationCity, required this.vehicle, @JsonKey(name: 'vehicle_registration') required this.vehicleRegistration, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'arrival_time') this.arrivalTime, required this.price, @JsonKey(name: 'available_seats') this.availableSeats, this.status, @JsonKey(name: 'status_display') required this.statusDisplay, required this.company, @JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'company_sigle') required this.companySigle, @JsonKey(name: 'company_rating') required this.companyRating, @JsonKey(name: 'is_direct') required this.isDirect, @JsonKey(name: 'stops_count') required this.stopsCount, @JsonKey(name: 'duration_minutes') required this.durationMinutes, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'available_seat_numbers') required final  List<String> availableSeatNumbers}): _availableSeatNumbers = availableSeatNumbers;
  factory _TripDetail.fromJson(Map<String, dynamic> json) => _$TripDetailFromJson(json);

@override final  int id;
@override final  int route;
@override@JsonKey(name: 'route_label') final  String routeLabel;
@override@JsonKey(name: 'origin_city') final  String originCity;
@override@JsonKey(name: 'destination_city') final  String destinationCity;
@override final  int vehicle;
@override@JsonKey(name: 'vehicle_registration') final  String vehicleRegistration;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'arrival_time') final  DateTime? arrivalTime;
@override final  String price;
@override@JsonKey(name: 'available_seats') final  int? availableSeats;
@override final  StatusF60Enum? status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override final  int company;
@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'company_sigle') final  String companySigle;
@override@JsonKey(name: 'company_rating') final  double? companyRating;
@override@JsonKey(name: 'is_direct') final  bool isDirect;
@override@JsonKey(name: 'stops_count') final  int stopsCount;
@override@JsonKey(name: 'duration_minutes') final  int durationMinutes;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
 final  List<String> _availableSeatNumbers;
@override@JsonKey(name: 'available_seat_numbers') List<String> get availableSeatNumbers {
  if (_availableSeatNumbers is EqualUnmodifiableListView) return _availableSeatNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableSeatNumbers);
}


/// Create a copy of TripDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripDetailCopyWith<_TripDetail> get copyWith => __$TripDetailCopyWithImpl<_TripDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.companyRating, companyRating) || other.companyRating == companyRating)&&(identical(other.isDirect, isDirect) || other.isDirect == isDirect)&&(identical(other.stopsCount, stopsCount) || other.stopsCount == stopsCount)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._availableSeatNumbers, _availableSeatNumbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,route,routeLabel,originCity,destinationCity,vehicle,vehicleRegistration,departureTime,arrivalTime,price,availableSeats,status,statusDisplay,company,companyName,companySigle,companyRating,isDirect,stopsCount,durationMinutes,createdAt,updatedAt,const DeepCollectionEquality().hash(_availableSeatNumbers)]);

@override
String toString() {
  return 'TripDetail(id: $id, route: $route, routeLabel: $routeLabel, originCity: $originCity, destinationCity: $destinationCity, vehicle: $vehicle, vehicleRegistration: $vehicleRegistration, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, availableSeats: $availableSeats, status: $status, statusDisplay: $statusDisplay, company: $company, companyName: $companyName, companySigle: $companySigle, companyRating: $companyRating, isDirect: $isDirect, stopsCount: $stopsCount, durationMinutes: $durationMinutes, createdAt: $createdAt, updatedAt: $updatedAt, availableSeatNumbers: $availableSeatNumbers)';
}


}

/// @nodoc
abstract mixin class _$TripDetailCopyWith<$Res> implements $TripDetailCopyWith<$Res> {
  factory _$TripDetailCopyWith(_TripDetail value, $Res Function(_TripDetail) _then) = __$TripDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, int route,@JsonKey(name: 'route_label') String routeLabel,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity, int vehicle,@JsonKey(name: 'vehicle_registration') String vehicleRegistration,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, String price,@JsonKey(name: 'available_seats') int? availableSeats, StatusF60Enum? status,@JsonKey(name: 'status_display') String statusDisplay, int company,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_sigle') String companySigle,@JsonKey(name: 'company_rating') double? companyRating,@JsonKey(name: 'is_direct') bool isDirect,@JsonKey(name: 'stops_count') int stopsCount,@JsonKey(name: 'duration_minutes') int durationMinutes,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'available_seat_numbers') List<String> availableSeatNumbers
});




}
/// @nodoc
class __$TripDetailCopyWithImpl<$Res>
    implements _$TripDetailCopyWith<$Res> {
  __$TripDetailCopyWithImpl(this._self, this._then);

  final _TripDetail _self;
  final $Res Function(_TripDetail) _then;

/// Create a copy of TripDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? route = null,Object? routeLabel = null,Object? originCity = null,Object? destinationCity = null,Object? vehicle = null,Object? vehicleRegistration = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = null,Object? availableSeats = freezed,Object? status = freezed,Object? statusDisplay = null,Object? company = null,Object? companyName = null,Object? companySigle = null,Object? companyRating = freezed,Object? isDirect = null,Object? stopsCount = null,Object? durationMinutes = null,Object? createdAt = null,Object? updatedAt = null,Object? availableSeatNumbers = null,}) {
  return _then(_TripDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as int,routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,vehicle: null == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as int,vehicleRegistration: null == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: null == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String,companyRating: freezed == companyRating ? _self.companyRating : companyRating // ignore: cast_nullable_to_non_nullable
as double?,isDirect: null == isDirect ? _self.isDirect : isDirect // ignore: cast_nullable_to_non_nullable
as bool,stopsCount: null == stopsCount ? _self.stopsCount : stopsCount // ignore: cast_nullable_to_non_nullable
as int,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeatNumbers: null == availableSeatNumbers ? _self._availableSeatNumbers : availableSeatNumbers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
