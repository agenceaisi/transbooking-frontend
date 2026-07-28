// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_speed_report_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedSpeedReportRead {

 int? get id; int? get company;@JsonKey(name: 'company_name') String? get companyName; int? get trip;@JsonKey(name: 'estimated_speed') int? get estimatedSpeed; SeverityEnum? get severity;@JsonKey(name: 'severity_display') String? get severityDisplay; String? get description; String? get latitude; String? get longitude;@JsonKey(name: 'reported_at') DateTime? get reportedAt; SpeedReportReadStatusEnum? get status;@JsonKey(name: 'status_display') String? get statusDisplay;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of PatchedSpeedReportRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedSpeedReportReadCopyWith<PatchedSpeedReportRead> get copyWith => _$PatchedSpeedReportReadCopyWithImpl<PatchedSpeedReportRead>(this as PatchedSpeedReportRead, _$identity);

  /// Serializes this PatchedSpeedReportRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedSpeedReportRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.estimatedSpeed, estimatedSpeed) || other.estimatedSpeed == estimatedSpeed)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.severityDisplay, severityDisplay) || other.severityDisplay == severityDisplay)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,trip,estimatedSpeed,severity,severityDisplay,description,latitude,longitude,reportedAt,status,statusDisplay,createdAt);

@override
String toString() {
  return 'PatchedSpeedReportRead(id: $id, company: $company, companyName: $companyName, trip: $trip, estimatedSpeed: $estimatedSpeed, severity: $severity, severityDisplay: $severityDisplay, description: $description, latitude: $latitude, longitude: $longitude, reportedAt: $reportedAt, status: $status, statusDisplay: $statusDisplay, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PatchedSpeedReportReadCopyWith<$Res>  {
  factory $PatchedSpeedReportReadCopyWith(PatchedSpeedReportRead value, $Res Function(PatchedSpeedReportRead) _then) = _$PatchedSpeedReportReadCopyWithImpl;
@useResult
$Res call({
 int? id, int? company,@JsonKey(name: 'company_name') String? companyName, int? trip,@JsonKey(name: 'estimated_speed') int? estimatedSpeed, SeverityEnum? severity,@JsonKey(name: 'severity_display') String? severityDisplay, String? description, String? latitude, String? longitude,@JsonKey(name: 'reported_at') DateTime? reportedAt, SpeedReportReadStatusEnum? status,@JsonKey(name: 'status_display') String? statusDisplay,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$PatchedSpeedReportReadCopyWithImpl<$Res>
    implements $PatchedSpeedReportReadCopyWith<$Res> {
  _$PatchedSpeedReportReadCopyWithImpl(this._self, this._then);

  final PatchedSpeedReportRead _self;
  final $Res Function(PatchedSpeedReportRead) _then;

/// Create a copy of PatchedSpeedReportRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? company = freezed,Object? companyName = freezed,Object? trip = freezed,Object? estimatedSpeed = freezed,Object? severity = freezed,Object? severityDisplay = freezed,Object? description = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? reportedAt = freezed,Object? status = freezed,Object? statusDisplay = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,estimatedSpeed: freezed == estimatedSpeed ? _self.estimatedSpeed : estimatedSpeed // ignore: cast_nullable_to_non_nullable
as int?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as SeverityEnum?,severityDisplay: freezed == severityDisplay ? _self.severityDisplay : severityDisplay // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SpeedReportReadStatusEnum?,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedSpeedReportRead].
extension PatchedSpeedReportReadPatterns on PatchedSpeedReportRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedSpeedReportRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedSpeedReportRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedSpeedReportRead value)  $default,){
final _that = this;
switch (_that) {
case _PatchedSpeedReportRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedSpeedReportRead value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedSpeedReportRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? company, @JsonKey(name: 'company_name')  String? companyName,  int? trip, @JsonKey(name: 'estimated_speed')  int? estimatedSpeed,  SeverityEnum? severity, @JsonKey(name: 'severity_display')  String? severityDisplay,  String? description,  String? latitude,  String? longitude, @JsonKey(name: 'reported_at')  DateTime? reportedAt,  SpeedReportReadStatusEnum? status, @JsonKey(name: 'status_display')  String? statusDisplay, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedSpeedReportRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.trip,_that.estimatedSpeed,_that.severity,_that.severityDisplay,_that.description,_that.latitude,_that.longitude,_that.reportedAt,_that.status,_that.statusDisplay,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? company, @JsonKey(name: 'company_name')  String? companyName,  int? trip, @JsonKey(name: 'estimated_speed')  int? estimatedSpeed,  SeverityEnum? severity, @JsonKey(name: 'severity_display')  String? severityDisplay,  String? description,  String? latitude,  String? longitude, @JsonKey(name: 'reported_at')  DateTime? reportedAt,  SpeedReportReadStatusEnum? status, @JsonKey(name: 'status_display')  String? statusDisplay, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PatchedSpeedReportRead():
return $default(_that.id,_that.company,_that.companyName,_that.trip,_that.estimatedSpeed,_that.severity,_that.severityDisplay,_that.description,_that.latitude,_that.longitude,_that.reportedAt,_that.status,_that.statusDisplay,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? company, @JsonKey(name: 'company_name')  String? companyName,  int? trip, @JsonKey(name: 'estimated_speed')  int? estimatedSpeed,  SeverityEnum? severity, @JsonKey(name: 'severity_display')  String? severityDisplay,  String? description,  String? latitude,  String? longitude, @JsonKey(name: 'reported_at')  DateTime? reportedAt,  SpeedReportReadStatusEnum? status, @JsonKey(name: 'status_display')  String? statusDisplay, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PatchedSpeedReportRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.trip,_that.estimatedSpeed,_that.severity,_that.severityDisplay,_that.description,_that.latitude,_that.longitude,_that.reportedAt,_that.status,_that.statusDisplay,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedSpeedReportRead implements PatchedSpeedReportRead {
  const _PatchedSpeedReportRead({this.id, this.company, @JsonKey(name: 'company_name') this.companyName, this.trip, @JsonKey(name: 'estimated_speed') this.estimatedSpeed, this.severity, @JsonKey(name: 'severity_display') this.severityDisplay, this.description, this.latitude, this.longitude, @JsonKey(name: 'reported_at') this.reportedAt, this.status, @JsonKey(name: 'status_display') this.statusDisplay, @JsonKey(name: 'created_at') this.createdAt});
  factory _PatchedSpeedReportRead.fromJson(Map<String, dynamic> json) => _$PatchedSpeedReportReadFromJson(json);

@override final  int? id;
@override final  int? company;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override final  int? trip;
@override@JsonKey(name: 'estimated_speed') final  int? estimatedSpeed;
@override final  SeverityEnum? severity;
@override@JsonKey(name: 'severity_display') final  String? severityDisplay;
@override final  String? description;
@override final  String? latitude;
@override final  String? longitude;
@override@JsonKey(name: 'reported_at') final  DateTime? reportedAt;
@override final  SpeedReportReadStatusEnum? status;
@override@JsonKey(name: 'status_display') final  String? statusDisplay;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of PatchedSpeedReportRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedSpeedReportReadCopyWith<_PatchedSpeedReportRead> get copyWith => __$PatchedSpeedReportReadCopyWithImpl<_PatchedSpeedReportRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedSpeedReportReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedSpeedReportRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.estimatedSpeed, estimatedSpeed) || other.estimatedSpeed == estimatedSpeed)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.severityDisplay, severityDisplay) || other.severityDisplay == severityDisplay)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,trip,estimatedSpeed,severity,severityDisplay,description,latitude,longitude,reportedAt,status,statusDisplay,createdAt);

@override
String toString() {
  return 'PatchedSpeedReportRead(id: $id, company: $company, companyName: $companyName, trip: $trip, estimatedSpeed: $estimatedSpeed, severity: $severity, severityDisplay: $severityDisplay, description: $description, latitude: $latitude, longitude: $longitude, reportedAt: $reportedAt, status: $status, statusDisplay: $statusDisplay, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PatchedSpeedReportReadCopyWith<$Res> implements $PatchedSpeedReportReadCopyWith<$Res> {
  factory _$PatchedSpeedReportReadCopyWith(_PatchedSpeedReportRead value, $Res Function(_PatchedSpeedReportRead) _then) = __$PatchedSpeedReportReadCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? company,@JsonKey(name: 'company_name') String? companyName, int? trip,@JsonKey(name: 'estimated_speed') int? estimatedSpeed, SeverityEnum? severity,@JsonKey(name: 'severity_display') String? severityDisplay, String? description, String? latitude, String? longitude,@JsonKey(name: 'reported_at') DateTime? reportedAt, SpeedReportReadStatusEnum? status,@JsonKey(name: 'status_display') String? statusDisplay,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$PatchedSpeedReportReadCopyWithImpl<$Res>
    implements _$PatchedSpeedReportReadCopyWith<$Res> {
  __$PatchedSpeedReportReadCopyWithImpl(this._self, this._then);

  final _PatchedSpeedReportRead _self;
  final $Res Function(_PatchedSpeedReportRead) _then;

/// Create a copy of PatchedSpeedReportRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? company = freezed,Object? companyName = freezed,Object? trip = freezed,Object? estimatedSpeed = freezed,Object? severity = freezed,Object? severityDisplay = freezed,Object? description = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? reportedAt = freezed,Object? status = freezed,Object? statusDisplay = freezed,Object? createdAt = freezed,}) {
  return _then(_PatchedSpeedReportRead(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,estimatedSpeed: freezed == estimatedSpeed ? _self.estimatedSpeed : estimatedSpeed // ignore: cast_nullable_to_non_nullable
as int?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as SeverityEnum?,severityDisplay: freezed == severityDisplay ? _self.severityDisplay : severityDisplay // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SpeedReportReadStatusEnum?,statusDisplay: freezed == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
