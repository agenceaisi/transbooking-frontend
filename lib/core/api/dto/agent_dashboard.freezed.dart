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
mixin _$AgentDashboard {

@JsonKey(name: 'next_departures') List<AgentDeparture> get nextDepartures;@JsonKey(name: 'pending_alerts') int get pendingAlerts;@JsonKey(name: 'connection_status') String get connectionStatus;
/// Create a copy of AgentDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentDashboardCopyWith<AgentDashboard> get copyWith => _$AgentDashboardCopyWithImpl<AgentDashboard>(this as AgentDashboard, _$identity);

  /// Serializes this AgentDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentDashboard&&const DeepCollectionEquality().equals(other.nextDepartures, nextDepartures)&&(identical(other.pendingAlerts, pendingAlerts) || other.pendingAlerts == pendingAlerts)&&(identical(other.connectionStatus, connectionStatus) || other.connectionStatus == connectionStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nextDepartures),pendingAlerts,connectionStatus);

@override
String toString() {
  return 'AgentDashboard(nextDepartures: $nextDepartures, pendingAlerts: $pendingAlerts, connectionStatus: $connectionStatus)';
}


}

/// @nodoc
abstract mixin class $AgentDashboardCopyWith<$Res>  {
  factory $AgentDashboardCopyWith(AgentDashboard value, $Res Function(AgentDashboard) _then) = _$AgentDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'next_departures') List<AgentDeparture> nextDepartures,@JsonKey(name: 'pending_alerts') int pendingAlerts,@JsonKey(name: 'connection_status') String connectionStatus
});




}
/// @nodoc
class _$AgentDashboardCopyWithImpl<$Res>
    implements $AgentDashboardCopyWith<$Res> {
  _$AgentDashboardCopyWithImpl(this._self, this._then);

  final AgentDashboard _self;
  final $Res Function(AgentDashboard) _then;

/// Create a copy of AgentDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextDepartures = null,Object? pendingAlerts = null,Object? connectionStatus = null,}) {
  return _then(_self.copyWith(
nextDepartures: null == nextDepartures ? _self.nextDepartures : nextDepartures // ignore: cast_nullable_to_non_nullable
as List<AgentDeparture>,pendingAlerts: null == pendingAlerts ? _self.pendingAlerts : pendingAlerts // ignore: cast_nullable_to_non_nullable
as int,connectionStatus: null == connectionStatus ? _self.connectionStatus : connectionStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentDashboard].
extension AgentDashboardPatterns on AgentDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentDashboard value)  $default,){
final _that = this;
switch (_that) {
case _AgentDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _AgentDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_departures')  List<AgentDeparture> nextDepartures, @JsonKey(name: 'pending_alerts')  int pendingAlerts, @JsonKey(name: 'connection_status')  String connectionStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentDashboard() when $default != null:
return $default(_that.nextDepartures,_that.pendingAlerts,_that.connectionStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_departures')  List<AgentDeparture> nextDepartures, @JsonKey(name: 'pending_alerts')  int pendingAlerts, @JsonKey(name: 'connection_status')  String connectionStatus)  $default,) {final _that = this;
switch (_that) {
case _AgentDashboard():
return $default(_that.nextDepartures,_that.pendingAlerts,_that.connectionStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'next_departures')  List<AgentDeparture> nextDepartures, @JsonKey(name: 'pending_alerts')  int pendingAlerts, @JsonKey(name: 'connection_status')  String connectionStatus)?  $default,) {final _that = this;
switch (_that) {
case _AgentDashboard() when $default != null:
return $default(_that.nextDepartures,_that.pendingAlerts,_that.connectionStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentDashboard implements AgentDashboard {
  const _AgentDashboard({@JsonKey(name: 'next_departures') required final  List<AgentDeparture> nextDepartures, @JsonKey(name: 'pending_alerts') required this.pendingAlerts, @JsonKey(name: 'connection_status') required this.connectionStatus}): _nextDepartures = nextDepartures;
  factory _AgentDashboard.fromJson(Map<String, dynamic> json) => _$AgentDashboardFromJson(json);

 final  List<AgentDeparture> _nextDepartures;
@override@JsonKey(name: 'next_departures') List<AgentDeparture> get nextDepartures {
  if (_nextDepartures is EqualUnmodifiableListView) return _nextDepartures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nextDepartures);
}

@override@JsonKey(name: 'pending_alerts') final  int pendingAlerts;
@override@JsonKey(name: 'connection_status') final  String connectionStatus;

/// Create a copy of AgentDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentDashboardCopyWith<_AgentDashboard> get copyWith => __$AgentDashboardCopyWithImpl<_AgentDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentDashboard&&const DeepCollectionEquality().equals(other._nextDepartures, _nextDepartures)&&(identical(other.pendingAlerts, pendingAlerts) || other.pendingAlerts == pendingAlerts)&&(identical(other.connectionStatus, connectionStatus) || other.connectionStatus == connectionStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nextDepartures),pendingAlerts,connectionStatus);

@override
String toString() {
  return 'AgentDashboard(nextDepartures: $nextDepartures, pendingAlerts: $pendingAlerts, connectionStatus: $connectionStatus)';
}


}

/// @nodoc
abstract mixin class _$AgentDashboardCopyWith<$Res> implements $AgentDashboardCopyWith<$Res> {
  factory _$AgentDashboardCopyWith(_AgentDashboard value, $Res Function(_AgentDashboard) _then) = __$AgentDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'next_departures') List<AgentDeparture> nextDepartures,@JsonKey(name: 'pending_alerts') int pendingAlerts,@JsonKey(name: 'connection_status') String connectionStatus
});




}
/// @nodoc
class __$AgentDashboardCopyWithImpl<$Res>
    implements _$AgentDashboardCopyWith<$Res> {
  __$AgentDashboardCopyWithImpl(this._self, this._then);

  final _AgentDashboard _self;
  final $Res Function(_AgentDashboard) _then;

/// Create a copy of AgentDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextDepartures = null,Object? pendingAlerts = null,Object? connectionStatus = null,}) {
  return _then(_AgentDashboard(
nextDepartures: null == nextDepartures ? _self._nextDepartures : nextDepartures // ignore: cast_nullable_to_non_nullable
as List<AgentDeparture>,pendingAlerts: null == pendingAlerts ? _self.pendingAlerts : pendingAlerts // ignore: cast_nullable_to_non_nullable
as int,connectionStatus: null == connectionStatus ? _self.connectionStatus : connectionStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
