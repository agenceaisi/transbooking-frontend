// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripSummary {

 int get id;@JsonKey(name: 'origin_city') String get originCity;@JsonKey(name: 'destination_city') String get destinationCity;@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'company_sigle') String get companySigle;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'arrival_time') DateTime? get arrivalTime; StatusF60Enum? get status;
/// Create a copy of TripSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripSummaryCopyWith<TripSummary> get copyWith => _$TripSummaryCopyWithImpl<TripSummary>(this as TripSummary, _$identity);

  /// Serializes this TripSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,destinationCity,companyName,companySigle,departureTime,arrivalTime,status);

@override
String toString() {
  return 'TripSummary(id: $id, originCity: $originCity, destinationCity: $destinationCity, companyName: $companyName, companySigle: $companySigle, departureTime: $departureTime, arrivalTime: $arrivalTime, status: $status)';
}


}

/// @nodoc
abstract mixin class $TripSummaryCopyWith<$Res>  {
  factory $TripSummaryCopyWith(TripSummary value, $Res Function(TripSummary) _then) = _$TripSummaryCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_sigle') String companySigle,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, StatusF60Enum? status
});




}
/// @nodoc
class _$TripSummaryCopyWithImpl<$Res>
    implements $TripSummaryCopyWith<$Res> {
  _$TripSummaryCopyWithImpl(this._self, this._then);

  final TripSummary _self;
  final $Res Function(TripSummary) _then;

/// Create a copy of TripSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originCity = null,Object? destinationCity = null,Object? companyName = null,Object? companySigle = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: null == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,
  ));
}

}


/// Adds pattern-matching-related methods to [TripSummary].
extension TripSummaryPatterns on TripSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripSummary value)  $default,){
final _that = this;
switch (_that) {
case _TripSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripSummary value)?  $default,){
final _that = this;
switch (_that) {
case _TripSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String companySigle, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  StatusF60Enum? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripSummary() when $default != null:
return $default(_that.id,_that.originCity,_that.destinationCity,_that.companyName,_that.companySigle,_that.departureTime,_that.arrivalTime,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String companySigle, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  StatusF60Enum? status)  $default,) {final _that = this;
switch (_that) {
case _TripSummary():
return $default(_that.id,_that.originCity,_that.destinationCity,_that.companyName,_that.companySigle,_that.departureTime,_that.arrivalTime,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'origin_city')  String originCity, @JsonKey(name: 'destination_city')  String destinationCity, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'company_sigle')  String companySigle, @JsonKey(name: 'departure_time')  DateTime departureTime, @JsonKey(name: 'arrival_time')  DateTime? arrivalTime,  StatusF60Enum? status)?  $default,) {final _that = this;
switch (_that) {
case _TripSummary() when $default != null:
return $default(_that.id,_that.originCity,_that.destinationCity,_that.companyName,_that.companySigle,_that.departureTime,_that.arrivalTime,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripSummary implements TripSummary {
  const _TripSummary({required this.id, @JsonKey(name: 'origin_city') required this.originCity, @JsonKey(name: 'destination_city') required this.destinationCity, @JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'company_sigle') required this.companySigle, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'arrival_time') this.arrivalTime, this.status});
  factory _TripSummary.fromJson(Map<String, dynamic> json) => _$TripSummaryFromJson(json);

@override final  int id;
@override@JsonKey(name: 'origin_city') final  String originCity;
@override@JsonKey(name: 'destination_city') final  String destinationCity;
@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'company_sigle') final  String companySigle;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'arrival_time') final  DateTime? arrivalTime;
@override final  StatusF60Enum? status;

/// Create a copy of TripSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripSummaryCopyWith<_TripSummary> get copyWith => __$TripSummaryCopyWithImpl<_TripSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.originCity, originCity) || other.originCity == originCity)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCity,destinationCity,companyName,companySigle,departureTime,arrivalTime,status);

@override
String toString() {
  return 'TripSummary(id: $id, originCity: $originCity, destinationCity: $destinationCity, companyName: $companyName, companySigle: $companySigle, departureTime: $departureTime, arrivalTime: $arrivalTime, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TripSummaryCopyWith<$Res> implements $TripSummaryCopyWith<$Res> {
  factory _$TripSummaryCopyWith(_TripSummary value, $Res Function(_TripSummary) _then) = __$TripSummaryCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'origin_city') String originCity,@JsonKey(name: 'destination_city') String destinationCity,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'company_sigle') String companySigle,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime? arrivalTime, StatusF60Enum? status
});




}
/// @nodoc
class __$TripSummaryCopyWithImpl<$Res>
    implements _$TripSummaryCopyWith<$Res> {
  __$TripSummaryCopyWithImpl(this._self, this._then);

  final _TripSummary _self;
  final $Res Function(_TripSummary) _then;

/// Create a copy of TripSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originCity = null,Object? destinationCity = null,Object? companyName = null,Object? companySigle = null,Object? departureTime = null,Object? arrivalTime = freezed,Object? status = freezed,}) {
  return _then(_TripSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCity: null == originCity ? _self.originCity : originCity // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: null == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: freezed == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusF60Enum?,
  ));
}


}

// dart format on
