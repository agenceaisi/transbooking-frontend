// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentActivity {

@JsonKey(name: 'agent_name') String get agentName;@JsonKey(name: 'bookings_today') int get bookingsToday;@JsonKey(name: 'parcels_today') int get parcelsToday;
/// Create a copy of AgentActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentActivityCopyWith<AgentActivity> get copyWith => _$AgentActivityCopyWithImpl<AgentActivity>(this as AgentActivity, _$identity);

  /// Serializes this AgentActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentActivity&&(identical(other.agentName, agentName) || other.agentName == agentName)&&(identical(other.bookingsToday, bookingsToday) || other.bookingsToday == bookingsToday)&&(identical(other.parcelsToday, parcelsToday) || other.parcelsToday == parcelsToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,agentName,bookingsToday,parcelsToday);

@override
String toString() {
  return 'AgentActivity(agentName: $agentName, bookingsToday: $bookingsToday, parcelsToday: $parcelsToday)';
}


}

/// @nodoc
abstract mixin class $AgentActivityCopyWith<$Res>  {
  factory $AgentActivityCopyWith(AgentActivity value, $Res Function(AgentActivity) _then) = _$AgentActivityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'agent_name') String agentName,@JsonKey(name: 'bookings_today') int bookingsToday,@JsonKey(name: 'parcels_today') int parcelsToday
});




}
/// @nodoc
class _$AgentActivityCopyWithImpl<$Res>
    implements $AgentActivityCopyWith<$Res> {
  _$AgentActivityCopyWithImpl(this._self, this._then);

  final AgentActivity _self;
  final $Res Function(AgentActivity) _then;

/// Create a copy of AgentActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? agentName = null,Object? bookingsToday = null,Object? parcelsToday = null,}) {
  return _then(_self.copyWith(
agentName: null == agentName ? _self.agentName : agentName // ignore: cast_nullable_to_non_nullable
as String,bookingsToday: null == bookingsToday ? _self.bookingsToday : bookingsToday // ignore: cast_nullable_to_non_nullable
as int,parcelsToday: null == parcelsToday ? _self.parcelsToday : parcelsToday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentActivity].
extension AgentActivityPatterns on AgentActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentActivity value)  $default,){
final _that = this;
switch (_that) {
case _AgentActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentActivity value)?  $default,){
final _that = this;
switch (_that) {
case _AgentActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'agent_name')  String agentName, @JsonKey(name: 'bookings_today')  int bookingsToday, @JsonKey(name: 'parcels_today')  int parcelsToday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentActivity() when $default != null:
return $default(_that.agentName,_that.bookingsToday,_that.parcelsToday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'agent_name')  String agentName, @JsonKey(name: 'bookings_today')  int bookingsToday, @JsonKey(name: 'parcels_today')  int parcelsToday)  $default,) {final _that = this;
switch (_that) {
case _AgentActivity():
return $default(_that.agentName,_that.bookingsToday,_that.parcelsToday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'agent_name')  String agentName, @JsonKey(name: 'bookings_today')  int bookingsToday, @JsonKey(name: 'parcels_today')  int parcelsToday)?  $default,) {final _that = this;
switch (_that) {
case _AgentActivity() when $default != null:
return $default(_that.agentName,_that.bookingsToday,_that.parcelsToday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentActivity implements AgentActivity {
  const _AgentActivity({@JsonKey(name: 'agent_name') required this.agentName, @JsonKey(name: 'bookings_today') required this.bookingsToday, @JsonKey(name: 'parcels_today') required this.parcelsToday});
  factory _AgentActivity.fromJson(Map<String, dynamic> json) => _$AgentActivityFromJson(json);

@override@JsonKey(name: 'agent_name') final  String agentName;
@override@JsonKey(name: 'bookings_today') final  int bookingsToday;
@override@JsonKey(name: 'parcels_today') final  int parcelsToday;

/// Create a copy of AgentActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentActivityCopyWith<_AgentActivity> get copyWith => __$AgentActivityCopyWithImpl<_AgentActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentActivity&&(identical(other.agentName, agentName) || other.agentName == agentName)&&(identical(other.bookingsToday, bookingsToday) || other.bookingsToday == bookingsToday)&&(identical(other.parcelsToday, parcelsToday) || other.parcelsToday == parcelsToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,agentName,bookingsToday,parcelsToday);

@override
String toString() {
  return 'AgentActivity(agentName: $agentName, bookingsToday: $bookingsToday, parcelsToday: $parcelsToday)';
}


}

/// @nodoc
abstract mixin class _$AgentActivityCopyWith<$Res> implements $AgentActivityCopyWith<$Res> {
  factory _$AgentActivityCopyWith(_AgentActivity value, $Res Function(_AgentActivity) _then) = __$AgentActivityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'agent_name') String agentName,@JsonKey(name: 'bookings_today') int bookingsToday,@JsonKey(name: 'parcels_today') int parcelsToday
});




}
/// @nodoc
class __$AgentActivityCopyWithImpl<$Res>
    implements _$AgentActivityCopyWith<$Res> {
  __$AgentActivityCopyWithImpl(this._self, this._then);

  final _AgentActivity _self;
  final $Res Function(_AgentActivity) _then;

/// Create a copy of AgentActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? agentName = null,Object? bookingsToday = null,Object? parcelsToday = null,}) {
  return _then(_AgentActivity(
agentName: null == agentName ? _self.agentName : agentName // ignore: cast_nullable_to_non_nullable
as String,bookingsToday: null == bookingsToday ? _self.bookingsToday : bookingsToday // ignore: cast_nullable_to_non_nullable
as int,parcelsToday: null == parcelsToday ? _self.parcelsToday : parcelsToday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
