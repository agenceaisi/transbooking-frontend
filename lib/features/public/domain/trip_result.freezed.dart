// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TripResult {

 int get id; String get routeLabel; String get originCity; String get destinationCity; DateTime get departureTime; DateTime? get arrivalTime;/// Montant en FCFA, tel que renvoyé par l'API (chaîne décimale). En lecture
/// seule : jamais recalculé côté client (CLAUDE.md §13).
 String get price;/// Places restantes ; `null` si l'API ne l'indique pas.
 int? get availableSeats; String get statusDisplay; TripPublicStatus? get status;/// Immatriculation du véhicule, seule information « transporteur » exposée.
 String? get vehicleRegistration;/// Identité de la compagnie exploitante (`TripRead.company*`).
 int get company; String get companyName; String? get companySigle;/// Note moyenne de la compagnie sur 5 ; `null` si aucune n'est agrégée.
 double? get companyRating;/// Trajet sans escale (`is_direct`) et nombre d'escales (`stops_count`).
 bool get isDirect; int get stopsCount;/// Durée du trajet en minutes renvoyée par l'API (`duration_minutes`),
/// prioritaire sur le calcul dérivé de l'heure d'arrivée.
 int? get apiDurationMinutes;
/// Create a copy of TripResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripResultCopyWith<TripResult> get copyWith => _$TripResultCopyWithImpl<TripResult>(this as TripResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripResult&&(identical(other.id, id) || other.id == id)&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.companyRating, companyRating) || other.companyRating == companyRating)&&(identical(other.isDirect, isDirect) || other.isDirect == isDirect)&&(identical(other.stopsCount, stopsCount) || other.stopsCount == stopsCount)&&(identical(other.apiDurationMinutes, apiDurationMinutes) || other.apiDurationMinutes == apiDurationMinutes));
}


@override
int get hashCode => Object.hash(runtimeType,id,routeLabel,originCity,destinationCity,departureTime,arrivalTime,price,availableSeats,statusDisplay,status,vehicleRegistration,company,companyName,companySigle,companyRating,isDirect,stopsCount,apiDurationMinutes);

@override
String toString() {
  return 'TripResult(id: $id, routeLabel: $routeLabel, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, availableSeats: $availableSeats, statusDisplay: $statusDisplay, status: $status, vehicleRegistration: $vehicleRegistration, company: $company, companyName: $companyName, companySigle: $companySigle, companyRating: $companyRating, isDirect: $isDirect, stopsCount: $stopsCount, apiDurationMinutes: $apiDurationMinutes)';
}


}

/// @nodoc
abstract mixin class $TripResultCopyWith<$Res>  {
  factory $TripResultCopyWith(TripResult value, $Res Function(TripResult) _then) = _$TripResultCopyWithImpl;
@useResult
$Res call({
 int id, String routeLabel, String originCity, String destinationCity, DateTime departureTime, DateTime? arrivalTime, String price, int? availableSeats, String statusDisplay, TripPublicStatus? status, String? vehicleRegistration, int company, String companyName, String? companySigle, double? companyRating, bool isDirect, int stopsCount, int? apiDurationMinutes
});




}
/// @nodoc
class _$TripResultCopyWithImpl<$Res>
    implements $TripResultCopyWith<$Res> {
  _$TripResultCopyWithImpl(this._self, this._then);

  final TripResult _self;
  final $Res Function(TripResult) _then;

/// Create a copy of TripResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? routeLabel = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = null,Object? availableSeats = freezed,Object? statusDisplay = null,Object? status = freezed,Object? vehicleRegistration = freezed,Object? company = null,Object? companyName = null,Object? companySigle = freezed,Object? companyRating = freezed,Object? isDirect = null,Object? stopsCount = null,Object? apiDurationMinutes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripPublicStatus?,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,companyRating: freezed == companyRating ? _self.companyRating : companyRating // ignore: cast_nullable_to_non_nullable
as double?,isDirect: null == isDirect ? _self.isDirect : isDirect // ignore: cast_nullable_to_non_nullable
as bool,stopsCount: null == stopsCount ? _self.stopsCount : stopsCount // ignore: cast_nullable_to_non_nullable
as int,apiDurationMinutes: freezed == apiDurationMinutes ? _self.apiDurationMinutes : apiDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TripResult].
extension TripResultPatterns on TripResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripResult value)  $default,){
final _that = this;
switch (_that) {
case _TripResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripResult value)?  $default,){
final _that = this;
switch (_that) {
case _TripResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String routeLabel,  String originCity,  String destinationCity,  DateTime departureTime,  DateTime? arrivalTime,  String price,  int? availableSeats,  String statusDisplay,  TripPublicStatus? status,  String? vehicleRegistration,  int company,  String companyName,  String? companySigle,  double? companyRating,  bool isDirect,  int stopsCount,  int? apiDurationMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripResult() when $default != null:
return $default(_that.id,_that.routeLabel,_that.originCity,_that.destinationCity,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.statusDisplay,_that.status,_that.vehicleRegistration,_that.company,_that.companyName,_that.companySigle,_that.companyRating,_that.isDirect,_that.stopsCount,_that.apiDurationMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String routeLabel,  String originCity,  String destinationCity,  DateTime departureTime,  DateTime? arrivalTime,  String price,  int? availableSeats,  String statusDisplay,  TripPublicStatus? status,  String? vehicleRegistration,  int company,  String companyName,  String? companySigle,  double? companyRating,  bool isDirect,  int stopsCount,  int? apiDurationMinutes)  $default,) {final _that = this;
switch (_that) {
case _TripResult():
return $default(_that.id,_that.routeLabel,_that.originCity,_that.destinationCity,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.statusDisplay,_that.status,_that.vehicleRegistration,_that.company,_that.companyName,_that.companySigle,_that.companyRating,_that.isDirect,_that.stopsCount,_that.apiDurationMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String routeLabel,  String originCity,  String destinationCity,  DateTime departureTime,  DateTime? arrivalTime,  String price,  int? availableSeats,  String statusDisplay,  TripPublicStatus? status,  String? vehicleRegistration,  int company,  String companyName,  String? companySigle,  double? companyRating,  bool isDirect,  int stopsCount,  int? apiDurationMinutes)?  $default,) {final _that = this;
switch (_that) {
case _TripResult() when $default != null:
return $default(_that.id,_that.routeLabel,_that.originCity,_that.destinationCity,_that.departureTime,_that.arrivalTime,_that.price,_that.availableSeats,_that.statusDisplay,_that.status,_that.vehicleRegistration,_that.company,_that.companyName,_that.companySigle,_that.companyRating,_that.isDirect,_that.stopsCount,_that.apiDurationMinutes);case _:
  return null;

}
}

}

/// @nodoc


class _TripResult extends TripResult {
  const _TripResult({required this.id, required this.routeLabel, required this.originCity, required this.destinationCity, required this.departureTime, this.arrivalTime, required this.price, this.availableSeats, required this.statusDisplay, this.status, this.vehicleRegistration, this.company = 0, this.companyName = '', this.companySigle, this.companyRating, this.isDirect = true, this.stopsCount = 0, this.apiDurationMinutes}): super._();
  

@override final  int id;
@override final  String routeLabel;
@override final  String originCity;
@override final  String destinationCity;
@override final  DateTime departureTime;
@override final  DateTime? arrivalTime;
/// Montant en FCFA, tel que renvoyé par l'API (chaîne décimale). En lecture
/// seule : jamais recalculé côté client (CLAUDE.md §13).
@override final  String price;
/// Places restantes ; `null` si l'API ne l'indique pas.
@override final  int? availableSeats;
@override final  String statusDisplay;
@override final  TripPublicStatus? status;
/// Immatriculation du véhicule, seule information « transporteur » exposée.
@override final  String? vehicleRegistration;
/// Identité de la compagnie exploitante (`TripRead.company*`).
@override@JsonKey() final  int company;
@override@JsonKey() final  String companyName;
@override final  String? companySigle;
/// Note moyenne de la compagnie sur 5 ; `null` si aucune n'est agrégée.
@override final  double? companyRating;
/// Trajet sans escale (`is_direct`) et nombre d'escales (`stops_count`).
@override@JsonKey() final  bool isDirect;
@override@JsonKey() final  int stopsCount;
/// Durée du trajet en minutes renvoyée par l'API (`duration_minutes`),
/// prioritaire sur le calcul dérivé de l'heure d'arrivée.
@override final  int? apiDurationMinutes;

/// Create a copy of TripResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripResultCopyWith<_TripResult> get copyWith => __$TripResultCopyWithImpl<_TripResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripResult&&(identical(other.id, id) || other.id == id)&&(identical(other.routeLabel, routeLabel) || other.routeLabel == routeLabel)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.companyRating, companyRating) || other.companyRating == companyRating)&&(identical(other.isDirect, isDirect) || other.isDirect == isDirect)&&(identical(other.stopsCount, stopsCount) || other.stopsCount == stopsCount)&&(identical(other.apiDurationMinutes, apiDurationMinutes) || other.apiDurationMinutes == apiDurationMinutes));
}


@override
int get hashCode => Object.hash(runtimeType,id,routeLabel,originCity,destinationCity,departureTime,arrivalTime,price,availableSeats,statusDisplay,status,vehicleRegistration,company,companyName,companySigle,companyRating,isDirect,stopsCount,apiDurationMinutes);

@override
String toString() {
  return 'TripResult(id: $id, routeLabel: $routeLabel, originCity: $originCity, destinationCity: $destinationCity, departureTime: $departureTime, arrivalTime: $arrivalTime, price: $price, availableSeats: $availableSeats, statusDisplay: $statusDisplay, status: $status, vehicleRegistration: $vehicleRegistration, company: $company, companyName: $companyName, companySigle: $companySigle, companyRating: $companyRating, isDirect: $isDirect, stopsCount: $stopsCount, apiDurationMinutes: $apiDurationMinutes)';
}


}

/// @nodoc
abstract mixin class _$TripResultCopyWith<$Res> implements $TripResultCopyWith<$Res> {
  factory _$TripResultCopyWith(_TripResult value, $Res Function(_TripResult) _then) = __$TripResultCopyWithImpl;
@override @useResult
$Res call({
 int id, String routeLabel, String originCity, String destinationCity, DateTime departureTime, DateTime? arrivalTime, String price, int? availableSeats, String statusDisplay, TripPublicStatus? status, String? vehicleRegistration, int company, String companyName, String? companySigle, double? companyRating, bool isDirect, int stopsCount, int? apiDurationMinutes
});




}
/// @nodoc
class __$TripResultCopyWithImpl<$Res>
    implements _$TripResultCopyWith<$Res> {
  __$TripResultCopyWithImpl(this._self, this._then);

  final _TripResult _self;
  final $Res Function(_TripResult) _then;

/// Create a copy of TripResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? routeLabel = null,Object? originCity = null,Object? destinationCity = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? price = null,Object? availableSeats = freezed,Object? statusDisplay = null,Object? status = freezed,Object? vehicleRegistration = freezed,Object? company = null,Object? companyName = null,Object? companySigle = freezed,Object? companyRating = freezed,Object? isDirect = null,Object? stopsCount = null,Object? apiDurationMinutes = freezed,}) {
  return _then(_TripResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,routeLabel: null == routeLabel ? _self.routeLabel : routeLabel // ignore: cast_nullable_to_non_nullable
as String,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: freezed == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripPublicStatus?,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,companyRating: freezed == companyRating ? _self.companyRating : companyRating // ignore: cast_nullable_to_non_nullable
as double?,isDirect: null == isDirect ? _self.isDirect : isDirect // ignore: cast_nullable_to_non_nullable
as bool,stopsCount: null == stopsCount ? _self.stopsCount : stopsCount // ignore: cast_nullable_to_non_nullable
as int,apiDurationMinutes: freezed == apiDurationMinutes ? _self.apiDurationMinutes : apiDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
