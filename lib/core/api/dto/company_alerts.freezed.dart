// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_alerts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyAlerts {

@JsonKey(name: 'unresolved_claims') int get unresolvedClaims;@JsonKey(name: 'unreturned_parcels') int get unreturnedParcels;@JsonKey(name: 'speed_reports_pending') int get speedReportsPending;
/// Create a copy of CompanyAlerts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyAlertsCopyWith<CompanyAlerts> get copyWith => _$CompanyAlertsCopyWithImpl<CompanyAlerts>(this as CompanyAlerts, _$identity);

  /// Serializes this CompanyAlerts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyAlerts&&(identical(other.unresolvedClaims, unresolvedClaims) || other.unresolvedClaims == unresolvedClaims)&&(identical(other.unreturnedParcels, unreturnedParcels) || other.unreturnedParcels == unreturnedParcels)&&(identical(other.speedReportsPending, speedReportsPending) || other.speedReportsPending == speedReportsPending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unresolvedClaims,unreturnedParcels,speedReportsPending);

@override
String toString() {
  return 'CompanyAlerts(unresolvedClaims: $unresolvedClaims, unreturnedParcels: $unreturnedParcels, speedReportsPending: $speedReportsPending)';
}


}

/// @nodoc
abstract mixin class $CompanyAlertsCopyWith<$Res>  {
  factory $CompanyAlertsCopyWith(CompanyAlerts value, $Res Function(CompanyAlerts) _then) = _$CompanyAlertsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'unresolved_claims') int unresolvedClaims,@JsonKey(name: 'unreturned_parcels') int unreturnedParcels,@JsonKey(name: 'speed_reports_pending') int speedReportsPending
});




}
/// @nodoc
class _$CompanyAlertsCopyWithImpl<$Res>
    implements $CompanyAlertsCopyWith<$Res> {
  _$CompanyAlertsCopyWithImpl(this._self, this._then);

  final CompanyAlerts _self;
  final $Res Function(CompanyAlerts) _then;

/// Create a copy of CompanyAlerts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unresolvedClaims = null,Object? unreturnedParcels = null,Object? speedReportsPending = null,}) {
  return _then(_self.copyWith(
unresolvedClaims: null == unresolvedClaims ? _self.unresolvedClaims : unresolvedClaims // ignore: cast_nullable_to_non_nullable
as int,unreturnedParcels: null == unreturnedParcels ? _self.unreturnedParcels : unreturnedParcels // ignore: cast_nullable_to_non_nullable
as int,speedReportsPending: null == speedReportsPending ? _self.speedReportsPending : speedReportsPending // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyAlerts].
extension CompanyAlertsPatterns on CompanyAlerts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyAlerts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyAlerts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyAlerts value)  $default,){
final _that = this;
switch (_that) {
case _CompanyAlerts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyAlerts value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyAlerts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'unresolved_claims')  int unresolvedClaims, @JsonKey(name: 'unreturned_parcels')  int unreturnedParcels, @JsonKey(name: 'speed_reports_pending')  int speedReportsPending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyAlerts() when $default != null:
return $default(_that.unresolvedClaims,_that.unreturnedParcels,_that.speedReportsPending);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'unresolved_claims')  int unresolvedClaims, @JsonKey(name: 'unreturned_parcels')  int unreturnedParcels, @JsonKey(name: 'speed_reports_pending')  int speedReportsPending)  $default,) {final _that = this;
switch (_that) {
case _CompanyAlerts():
return $default(_that.unresolvedClaims,_that.unreturnedParcels,_that.speedReportsPending);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'unresolved_claims')  int unresolvedClaims, @JsonKey(name: 'unreturned_parcels')  int unreturnedParcels, @JsonKey(name: 'speed_reports_pending')  int speedReportsPending)?  $default,) {final _that = this;
switch (_that) {
case _CompanyAlerts() when $default != null:
return $default(_that.unresolvedClaims,_that.unreturnedParcels,_that.speedReportsPending);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyAlerts implements CompanyAlerts {
  const _CompanyAlerts({@JsonKey(name: 'unresolved_claims') required this.unresolvedClaims, @JsonKey(name: 'unreturned_parcels') required this.unreturnedParcels, @JsonKey(name: 'speed_reports_pending') required this.speedReportsPending});
  factory _CompanyAlerts.fromJson(Map<String, dynamic> json) => _$CompanyAlertsFromJson(json);

@override@JsonKey(name: 'unresolved_claims') final  int unresolvedClaims;
@override@JsonKey(name: 'unreturned_parcels') final  int unreturnedParcels;
@override@JsonKey(name: 'speed_reports_pending') final  int speedReportsPending;

/// Create a copy of CompanyAlerts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyAlertsCopyWith<_CompanyAlerts> get copyWith => __$CompanyAlertsCopyWithImpl<_CompanyAlerts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyAlertsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyAlerts&&(identical(other.unresolvedClaims, unresolvedClaims) || other.unresolvedClaims == unresolvedClaims)&&(identical(other.unreturnedParcels, unreturnedParcels) || other.unreturnedParcels == unreturnedParcels)&&(identical(other.speedReportsPending, speedReportsPending) || other.speedReportsPending == speedReportsPending));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unresolvedClaims,unreturnedParcels,speedReportsPending);

@override
String toString() {
  return 'CompanyAlerts(unresolvedClaims: $unresolvedClaims, unreturnedParcels: $unreturnedParcels, speedReportsPending: $speedReportsPending)';
}


}

/// @nodoc
abstract mixin class _$CompanyAlertsCopyWith<$Res> implements $CompanyAlertsCopyWith<$Res> {
  factory _$CompanyAlertsCopyWith(_CompanyAlerts value, $Res Function(_CompanyAlerts) _then) = __$CompanyAlertsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'unresolved_claims') int unresolvedClaims,@JsonKey(name: 'unreturned_parcels') int unreturnedParcels,@JsonKey(name: 'speed_reports_pending') int speedReportsPending
});




}
/// @nodoc
class __$CompanyAlertsCopyWithImpl<$Res>
    implements _$CompanyAlertsCopyWith<$Res> {
  __$CompanyAlertsCopyWithImpl(this._self, this._then);

  final _CompanyAlerts _self;
  final $Res Function(_CompanyAlerts) _then;

/// Create a copy of CompanyAlerts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unresolvedClaims = null,Object? unreturnedParcels = null,Object? speedReportsPending = null,}) {
  return _then(_CompanyAlerts(
unresolvedClaims: null == unresolvedClaims ? _self.unresolvedClaims : unresolvedClaims // ignore: cast_nullable_to_non_nullable
as int,unreturnedParcels: null == unreturnedParcels ? _self.unreturnedParcels : unreturnedParcels // ignore: cast_nullable_to_non_nullable
as int,speedReportsPending: null == speedReportsPending ? _self.speedReportsPending : speedReportsPending // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
