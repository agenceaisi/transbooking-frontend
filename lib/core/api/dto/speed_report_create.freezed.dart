// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speed_report_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpeedReportCreate {

 int? get company; int? get trip;@JsonKey(name: 'estimated_speed') int? get estimatedSpeed; SeverityEnum? get severity; String? get description; String? get latitude; String? get longitude;@JsonKey(name: 'reported_at') DateTime? get reportedAt;
/// Create a copy of SpeedReportCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeedReportCreateCopyWith<SpeedReportCreate> get copyWith => _$SpeedReportCreateCopyWithImpl<SpeedReportCreate>(this as SpeedReportCreate, _$identity);

  /// Serializes this SpeedReportCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeedReportCreate&&(identical(other.company, company) || other.company == company)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.estimatedSpeed, estimatedSpeed) || other.estimatedSpeed == estimatedSpeed)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,trip,estimatedSpeed,severity,description,latitude,longitude,reportedAt);

@override
String toString() {
  return 'SpeedReportCreate(company: $company, trip: $trip, estimatedSpeed: $estimatedSpeed, severity: $severity, description: $description, latitude: $latitude, longitude: $longitude, reportedAt: $reportedAt)';
}


}

/// @nodoc
abstract mixin class $SpeedReportCreateCopyWith<$Res>  {
  factory $SpeedReportCreateCopyWith(SpeedReportCreate value, $Res Function(SpeedReportCreate) _then) = _$SpeedReportCreateCopyWithImpl;
@useResult
$Res call({
 int? company, int? trip,@JsonKey(name: 'estimated_speed') int? estimatedSpeed, SeverityEnum? severity, String? description, String? latitude, String? longitude,@JsonKey(name: 'reported_at') DateTime? reportedAt
});




}
/// @nodoc
class _$SpeedReportCreateCopyWithImpl<$Res>
    implements $SpeedReportCreateCopyWith<$Res> {
  _$SpeedReportCreateCopyWithImpl(this._self, this._then);

  final SpeedReportCreate _self;
  final $Res Function(SpeedReportCreate) _then;

/// Create a copy of SpeedReportCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = freezed,Object? trip = freezed,Object? estimatedSpeed = freezed,Object? severity = freezed,Object? description = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? reportedAt = freezed,}) {
  return _then(_self.copyWith(
company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,estimatedSpeed: freezed == estimatedSpeed ? _self.estimatedSpeed : estimatedSpeed // ignore: cast_nullable_to_non_nullable
as int?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as SeverityEnum?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpeedReportCreate].
extension SpeedReportCreatePatterns on SpeedReportCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpeedReportCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeedReportCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpeedReportCreate value)  $default,){
final _that = this;
switch (_that) {
case _SpeedReportCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpeedReportCreate value)?  $default,){
final _that = this;
switch (_that) {
case _SpeedReportCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? company,  int? trip, @JsonKey(name: 'estimated_speed')  int? estimatedSpeed,  SeverityEnum? severity,  String? description,  String? latitude,  String? longitude, @JsonKey(name: 'reported_at')  DateTime? reportedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeedReportCreate() when $default != null:
return $default(_that.company,_that.trip,_that.estimatedSpeed,_that.severity,_that.description,_that.latitude,_that.longitude,_that.reportedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? company,  int? trip, @JsonKey(name: 'estimated_speed')  int? estimatedSpeed,  SeverityEnum? severity,  String? description,  String? latitude,  String? longitude, @JsonKey(name: 'reported_at')  DateTime? reportedAt)  $default,) {final _that = this;
switch (_that) {
case _SpeedReportCreate():
return $default(_that.company,_that.trip,_that.estimatedSpeed,_that.severity,_that.description,_that.latitude,_that.longitude,_that.reportedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? company,  int? trip, @JsonKey(name: 'estimated_speed')  int? estimatedSpeed,  SeverityEnum? severity,  String? description,  String? latitude,  String? longitude, @JsonKey(name: 'reported_at')  DateTime? reportedAt)?  $default,) {final _that = this;
switch (_that) {
case _SpeedReportCreate() when $default != null:
return $default(_that.company,_that.trip,_that.estimatedSpeed,_that.severity,_that.description,_that.latitude,_that.longitude,_that.reportedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpeedReportCreate implements SpeedReportCreate {
  const _SpeedReportCreate({this.company, this.trip, @JsonKey(name: 'estimated_speed') this.estimatedSpeed, this.severity, this.description, this.latitude, this.longitude, @JsonKey(name: 'reported_at') this.reportedAt});
  factory _SpeedReportCreate.fromJson(Map<String, dynamic> json) => _$SpeedReportCreateFromJson(json);

@override final  int? company;
@override final  int? trip;
@override@JsonKey(name: 'estimated_speed') final  int? estimatedSpeed;
@override final  SeverityEnum? severity;
@override final  String? description;
@override final  String? latitude;
@override final  String? longitude;
@override@JsonKey(name: 'reported_at') final  DateTime? reportedAt;

/// Create a copy of SpeedReportCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpeedReportCreateCopyWith<_SpeedReportCreate> get copyWith => __$SpeedReportCreateCopyWithImpl<_SpeedReportCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpeedReportCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpeedReportCreate&&(identical(other.company, company) || other.company == company)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.estimatedSpeed, estimatedSpeed) || other.estimatedSpeed == estimatedSpeed)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,trip,estimatedSpeed,severity,description,latitude,longitude,reportedAt);

@override
String toString() {
  return 'SpeedReportCreate(company: $company, trip: $trip, estimatedSpeed: $estimatedSpeed, severity: $severity, description: $description, latitude: $latitude, longitude: $longitude, reportedAt: $reportedAt)';
}


}

/// @nodoc
abstract mixin class _$SpeedReportCreateCopyWith<$Res> implements $SpeedReportCreateCopyWith<$Res> {
  factory _$SpeedReportCreateCopyWith(_SpeedReportCreate value, $Res Function(_SpeedReportCreate) _then) = __$SpeedReportCreateCopyWithImpl;
@override @useResult
$Res call({
 int? company, int? trip,@JsonKey(name: 'estimated_speed') int? estimatedSpeed, SeverityEnum? severity, String? description, String? latitude, String? longitude,@JsonKey(name: 'reported_at') DateTime? reportedAt
});




}
/// @nodoc
class __$SpeedReportCreateCopyWithImpl<$Res>
    implements _$SpeedReportCreateCopyWith<$Res> {
  __$SpeedReportCreateCopyWithImpl(this._self, this._then);

  final _SpeedReportCreate _self;
  final $Res Function(_SpeedReportCreate) _then;

/// Create a copy of SpeedReportCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = freezed,Object? trip = freezed,Object? estimatedSpeed = freezed,Object? severity = freezed,Object? description = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? reportedAt = freezed,}) {
  return _then(_SpeedReportCreate(
company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,estimatedSpeed: freezed == estimatedSpeed ? _self.estimatedSpeed : estimatedSpeed // ignore: cast_nullable_to_non_nullable
as int?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as SeverityEnum?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
