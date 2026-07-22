// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AgentDashboardSnapshot {

 List<AgentDeparture> get departures; List<AgentAlert> get alerts;/// Nombre d'alertes en attente annoncé par le serveur.
///
/// `null` quand l'instantané vient du cache : ce compteur n'est pas
/// conservé localement, et l'inventer donnerait un chiffre faux.
 int? get pendingAlerts;/// Horodatage du cache, renseigné **uniquement** si les données affichées
/// ne viennent pas du réseau. Alimente « Dernière mise à jour à HHhMM ».
 DateTime? get cachedAt;
/// Create a copy of AgentDashboardSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentDashboardSnapshotCopyWith<AgentDashboardSnapshot> get copyWith => _$AgentDashboardSnapshotCopyWithImpl<AgentDashboardSnapshot>(this as AgentDashboardSnapshot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentDashboardSnapshot&&const DeepCollectionEquality().equals(other.departures, departures)&&const DeepCollectionEquality().equals(other.alerts, alerts)&&(identical(other.pendingAlerts, pendingAlerts) || other.pendingAlerts == pendingAlerts)&&(identical(other.cachedAt, cachedAt) || other.cachedAt == cachedAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(departures),const DeepCollectionEquality().hash(alerts),pendingAlerts,cachedAt);

@override
String toString() {
  return 'AgentDashboardSnapshot(departures: $departures, alerts: $alerts, pendingAlerts: $pendingAlerts, cachedAt: $cachedAt)';
}


}

/// @nodoc
abstract mixin class $AgentDashboardSnapshotCopyWith<$Res>  {
  factory $AgentDashboardSnapshotCopyWith(AgentDashboardSnapshot value, $Res Function(AgentDashboardSnapshot) _then) = _$AgentDashboardSnapshotCopyWithImpl;
@useResult
$Res call({
 List<AgentDeparture> departures, List<AgentAlert> alerts, int? pendingAlerts, DateTime? cachedAt
});




}
/// @nodoc
class _$AgentDashboardSnapshotCopyWithImpl<$Res>
    implements $AgentDashboardSnapshotCopyWith<$Res> {
  _$AgentDashboardSnapshotCopyWithImpl(this._self, this._then);

  final AgentDashboardSnapshot _self;
  final $Res Function(AgentDashboardSnapshot) _then;

/// Create a copy of AgentDashboardSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? departures = null,Object? alerts = null,Object? pendingAlerts = freezed,Object? cachedAt = freezed,}) {
  return _then(_self.copyWith(
departures: null == departures ? _self.departures : departures // ignore: cast_nullable_to_non_nullable
as List<AgentDeparture>,alerts: null == alerts ? _self.alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<AgentAlert>,pendingAlerts: freezed == pendingAlerts ? _self.pendingAlerts : pendingAlerts // ignore: cast_nullable_to_non_nullable
as int?,cachedAt: freezed == cachedAt ? _self.cachedAt : cachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentDashboardSnapshot].
extension AgentDashboardSnapshotPatterns on AgentDashboardSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentDashboardSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentDashboardSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentDashboardSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _AgentDashboardSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentDashboardSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _AgentDashboardSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AgentDeparture> departures,  List<AgentAlert> alerts,  int? pendingAlerts,  DateTime? cachedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentDashboardSnapshot() when $default != null:
return $default(_that.departures,_that.alerts,_that.pendingAlerts,_that.cachedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AgentDeparture> departures,  List<AgentAlert> alerts,  int? pendingAlerts,  DateTime? cachedAt)  $default,) {final _that = this;
switch (_that) {
case _AgentDashboardSnapshot():
return $default(_that.departures,_that.alerts,_that.pendingAlerts,_that.cachedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AgentDeparture> departures,  List<AgentAlert> alerts,  int? pendingAlerts,  DateTime? cachedAt)?  $default,) {final _that = this;
switch (_that) {
case _AgentDashboardSnapshot() when $default != null:
return $default(_that.departures,_that.alerts,_that.pendingAlerts,_that.cachedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AgentDashboardSnapshot extends AgentDashboardSnapshot {
  const _AgentDashboardSnapshot({required final  List<AgentDeparture> departures, required final  List<AgentAlert> alerts, this.pendingAlerts, this.cachedAt}): _departures = departures,_alerts = alerts,super._();
  

 final  List<AgentDeparture> _departures;
@override List<AgentDeparture> get departures {
  if (_departures is EqualUnmodifiableListView) return _departures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_departures);
}

 final  List<AgentAlert> _alerts;
@override List<AgentAlert> get alerts {
  if (_alerts is EqualUnmodifiableListView) return _alerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alerts);
}

/// Nombre d'alertes en attente annoncé par le serveur.
///
/// `null` quand l'instantané vient du cache : ce compteur n'est pas
/// conservé localement, et l'inventer donnerait un chiffre faux.
@override final  int? pendingAlerts;
/// Horodatage du cache, renseigné **uniquement** si les données affichées
/// ne viennent pas du réseau. Alimente « Dernière mise à jour à HHhMM ».
@override final  DateTime? cachedAt;

/// Create a copy of AgentDashboardSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentDashboardSnapshotCopyWith<_AgentDashboardSnapshot> get copyWith => __$AgentDashboardSnapshotCopyWithImpl<_AgentDashboardSnapshot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentDashboardSnapshot&&const DeepCollectionEquality().equals(other._departures, _departures)&&const DeepCollectionEquality().equals(other._alerts, _alerts)&&(identical(other.pendingAlerts, pendingAlerts) || other.pendingAlerts == pendingAlerts)&&(identical(other.cachedAt, cachedAt) || other.cachedAt == cachedAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_departures),const DeepCollectionEquality().hash(_alerts),pendingAlerts,cachedAt);

@override
String toString() {
  return 'AgentDashboardSnapshot(departures: $departures, alerts: $alerts, pendingAlerts: $pendingAlerts, cachedAt: $cachedAt)';
}


}

/// @nodoc
abstract mixin class _$AgentDashboardSnapshotCopyWith<$Res> implements $AgentDashboardSnapshotCopyWith<$Res> {
  factory _$AgentDashboardSnapshotCopyWith(_AgentDashboardSnapshot value, $Res Function(_AgentDashboardSnapshot) _then) = __$AgentDashboardSnapshotCopyWithImpl;
@override @useResult
$Res call({
 List<AgentDeparture> departures, List<AgentAlert> alerts, int? pendingAlerts, DateTime? cachedAt
});




}
/// @nodoc
class __$AgentDashboardSnapshotCopyWithImpl<$Res>
    implements _$AgentDashboardSnapshotCopyWith<$Res> {
  __$AgentDashboardSnapshotCopyWithImpl(this._self, this._then);

  final _AgentDashboardSnapshot _self;
  final $Res Function(_AgentDashboardSnapshot) _then;

/// Create a copy of AgentDashboardSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? departures = null,Object? alerts = null,Object? pendingAlerts = freezed,Object? cachedAt = freezed,}) {
  return _then(_AgentDashboardSnapshot(
departures: null == departures ? _self._departures : departures // ignore: cast_nullable_to_non_nullable
as List<AgentDeparture>,alerts: null == alerts ? _self._alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<AgentAlert>,pendingAlerts: freezed == pendingAlerts ? _self.pendingAlerts : pendingAlerts // ignore: cast_nullable_to_non_nullable
as int?,cachedAt: freezed == cachedAt ? _self.cachedAt : cachedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$AgentDeparture {

 int get tripId; String get origin; String get destination; DateTime get departureTime; int get availableSeats;/// Passagers déjà enregistrés sur ce départ.
 int get passengerCount;/// Immatriculation du véhicule.
///
/// `null` si `agent/trips/today/` n'a pas répondu : le tableau de bord
/// s'affiche quand même, sans inventer de plaque.
 String? get vehicleRegistration; TripStatus? get status;
/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentDepartureCopyWith<AgentDeparture> get copyWith => _$AgentDepartureCopyWithImpl<AgentDeparture>(this as AgentDeparture, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentDeparture&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.passengerCount, passengerCount) || other.passengerCount == passengerCount)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,tripId,origin,destination,departureTime,availableSeats,passengerCount,vehicleRegistration,status);

@override
String toString() {
  return 'AgentDeparture(tripId: $tripId, origin: $origin, destination: $destination, departureTime: $departureTime, availableSeats: $availableSeats, passengerCount: $passengerCount, vehicleRegistration: $vehicleRegistration, status: $status)';
}


}

/// @nodoc
abstract mixin class $AgentDepartureCopyWith<$Res>  {
  factory $AgentDepartureCopyWith(AgentDeparture value, $Res Function(AgentDeparture) _then) = _$AgentDepartureCopyWithImpl;
@useResult
$Res call({
 int tripId, String origin, String destination, DateTime departureTime, int availableSeats, int passengerCount, String? vehicleRegistration, TripStatus? status
});




}
/// @nodoc
class _$AgentDepartureCopyWithImpl<$Res>
    implements $AgentDepartureCopyWith<$Res> {
  _$AgentDepartureCopyWithImpl(this._self, this._then);

  final AgentDeparture _self;
  final $Res Function(AgentDeparture) _then;

/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripId = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? availableSeats = null,Object? passengerCount = null,Object? vehicleRegistration = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeats: null == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int,passengerCount: null == passengerCount ? _self.passengerCount : passengerCount // ignore: cast_nullable_to_non_nullable
as int,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentDeparture].
extension AgentDeparturePatterns on AgentDeparture {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentDeparture value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentDeparture value)  $default,){
final _that = this;
switch (_that) {
case _AgentDeparture():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentDeparture value)?  $default,){
final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int tripId,  String origin,  String destination,  DateTime departureTime,  int availableSeats,  int passengerCount,  String? vehicleRegistration,  TripStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
return $default(_that.tripId,_that.origin,_that.destination,_that.departureTime,_that.availableSeats,_that.passengerCount,_that.vehicleRegistration,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int tripId,  String origin,  String destination,  DateTime departureTime,  int availableSeats,  int passengerCount,  String? vehicleRegistration,  TripStatus? status)  $default,) {final _that = this;
switch (_that) {
case _AgentDeparture():
return $default(_that.tripId,_that.origin,_that.destination,_that.departureTime,_that.availableSeats,_that.passengerCount,_that.vehicleRegistration,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int tripId,  String origin,  String destination,  DateTime departureTime,  int availableSeats,  int passengerCount,  String? vehicleRegistration,  TripStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _AgentDeparture() when $default != null:
return $default(_that.tripId,_that.origin,_that.destination,_that.departureTime,_that.availableSeats,_that.passengerCount,_that.vehicleRegistration,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _AgentDeparture extends AgentDeparture {
  const _AgentDeparture({required this.tripId, required this.origin, required this.destination, required this.departureTime, required this.availableSeats, required this.passengerCount, this.vehicleRegistration, this.status}): super._();
  

@override final  int tripId;
@override final  String origin;
@override final  String destination;
@override final  DateTime departureTime;
@override final  int availableSeats;
/// Passagers déjà enregistrés sur ce départ.
@override final  int passengerCount;
/// Immatriculation du véhicule.
///
/// `null` si `agent/trips/today/` n'a pas répondu : le tableau de bord
/// s'affiche quand même, sans inventer de plaque.
@override final  String? vehicleRegistration;
@override final  TripStatus? status;

/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentDepartureCopyWith<_AgentDeparture> get copyWith => __$AgentDepartureCopyWithImpl<_AgentDeparture>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentDeparture&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&(identical(other.passengerCount, passengerCount) || other.passengerCount == passengerCount)&&(identical(other.vehicleRegistration, vehicleRegistration) || other.vehicleRegistration == vehicleRegistration)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,tripId,origin,destination,departureTime,availableSeats,passengerCount,vehicleRegistration,status);

@override
String toString() {
  return 'AgentDeparture(tripId: $tripId, origin: $origin, destination: $destination, departureTime: $departureTime, availableSeats: $availableSeats, passengerCount: $passengerCount, vehicleRegistration: $vehicleRegistration, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AgentDepartureCopyWith<$Res> implements $AgentDepartureCopyWith<$Res> {
  factory _$AgentDepartureCopyWith(_AgentDeparture value, $Res Function(_AgentDeparture) _then) = __$AgentDepartureCopyWithImpl;
@override @useResult
$Res call({
 int tripId, String origin, String destination, DateTime departureTime, int availableSeats, int passengerCount, String? vehicleRegistration, TripStatus? status
});




}
/// @nodoc
class __$AgentDepartureCopyWithImpl<$Res>
    implements _$AgentDepartureCopyWith<$Res> {
  __$AgentDepartureCopyWithImpl(this._self, this._then);

  final _AgentDeparture _self;
  final $Res Function(_AgentDeparture) _then;

/// Create a copy of AgentDeparture
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripId = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? availableSeats = null,Object? passengerCount = null,Object? vehicleRegistration = freezed,Object? status = freezed,}) {
  return _then(_AgentDeparture(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,availableSeats: null == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int,passengerCount: null == passengerCount ? _self.passengerCount : passengerCount // ignore: cast_nullable_to_non_nullable
as int,vehicleRegistration: freezed == vehicleRegistration ? _self.vehicleRegistration : vehicleRegistration // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripStatus?,
  ));
}


}

/// @nodoc
mixin _$AgentAlert {

 int get id; String get title; String get body; AgentAlertKind get kind; DateTime get createdAt;
/// Create a copy of AgentAlert
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentAlertCopyWith<AgentAlert> get copyWith => _$AgentAlertCopyWithImpl<AgentAlert>(this as AgentAlert, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentAlert&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,kind,createdAt);

@override
String toString() {
  return 'AgentAlert(id: $id, title: $title, body: $body, kind: $kind, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AgentAlertCopyWith<$Res>  {
  factory $AgentAlertCopyWith(AgentAlert value, $Res Function(AgentAlert) _then) = _$AgentAlertCopyWithImpl;
@useResult
$Res call({
 int id, String title, String body, AgentAlertKind kind, DateTime createdAt
});




}
/// @nodoc
class _$AgentAlertCopyWithImpl<$Res>
    implements $AgentAlertCopyWith<$Res> {
  _$AgentAlertCopyWithImpl(this._self, this._then);

  final AgentAlert _self;
  final $Res Function(AgentAlert) _then;

/// Create a copy of AgentAlert
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? kind = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as AgentAlertKind,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentAlert].
extension AgentAlertPatterns on AgentAlert {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentAlert value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentAlert() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentAlert value)  $default,){
final _that = this;
switch (_that) {
case _AgentAlert():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentAlert value)?  $default,){
final _that = this;
switch (_that) {
case _AgentAlert() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String body,  AgentAlertKind kind,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentAlert() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.kind,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String body,  AgentAlertKind kind,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _AgentAlert():
return $default(_that.id,_that.title,_that.body,_that.kind,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String body,  AgentAlertKind kind,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AgentAlert() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.kind,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _AgentAlert implements AgentAlert {
  const _AgentAlert({required this.id, required this.title, required this.body, required this.kind, required this.createdAt});
  

@override final  int id;
@override final  String title;
@override final  String body;
@override final  AgentAlertKind kind;
@override final  DateTime createdAt;

/// Create a copy of AgentAlert
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentAlertCopyWith<_AgentAlert> get copyWith => __$AgentAlertCopyWithImpl<_AgentAlert>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentAlert&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,kind,createdAt);

@override
String toString() {
  return 'AgentAlert(id: $id, title: $title, body: $body, kind: $kind, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AgentAlertCopyWith<$Res> implements $AgentAlertCopyWith<$Res> {
  factory _$AgentAlertCopyWith(_AgentAlert value, $Res Function(_AgentAlert) _then) = __$AgentAlertCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String body, AgentAlertKind kind, DateTime createdAt
});




}
/// @nodoc
class __$AgentAlertCopyWithImpl<$Res>
    implements _$AgentAlertCopyWith<$Res> {
  __$AgentAlertCopyWithImpl(this._self, this._then);

  final _AgentAlert _self;
  final $Res Function(_AgentAlert) _then;

/// Create a copy of AgentAlert
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? kind = null,Object? createdAt = null,}) {
  return _then(_AgentAlert(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as AgentAlertKind,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
