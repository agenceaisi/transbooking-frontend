// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_offline_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentOfflineData {

 List<OfflineTrip> get trips; List<OfflineBookingRead> get bookings;@JsonKey(name: 'parcel_arrivals') List<OfflineParcelRead> get parcelArrivals;
/// Create a copy of AgentOfflineData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentOfflineDataCopyWith<AgentOfflineData> get copyWith => _$AgentOfflineDataCopyWithImpl<AgentOfflineData>(this as AgentOfflineData, _$identity);

  /// Serializes this AgentOfflineData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentOfflineData&&const DeepCollectionEquality().equals(other.trips, trips)&&const DeepCollectionEquality().equals(other.bookings, bookings)&&const DeepCollectionEquality().equals(other.parcelArrivals, parcelArrivals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(trips),const DeepCollectionEquality().hash(bookings),const DeepCollectionEquality().hash(parcelArrivals));

@override
String toString() {
  return 'AgentOfflineData(trips: $trips, bookings: $bookings, parcelArrivals: $parcelArrivals)';
}


}

/// @nodoc
abstract mixin class $AgentOfflineDataCopyWith<$Res>  {
  factory $AgentOfflineDataCopyWith(AgentOfflineData value, $Res Function(AgentOfflineData) _then) = _$AgentOfflineDataCopyWithImpl;
@useResult
$Res call({
 List<OfflineTrip> trips, List<OfflineBookingRead> bookings,@JsonKey(name: 'parcel_arrivals') List<OfflineParcelRead> parcelArrivals
});




}
/// @nodoc
class _$AgentOfflineDataCopyWithImpl<$Res>
    implements $AgentOfflineDataCopyWith<$Res> {
  _$AgentOfflineDataCopyWithImpl(this._self, this._then);

  final AgentOfflineData _self;
  final $Res Function(AgentOfflineData) _then;

/// Create a copy of AgentOfflineData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trips = null,Object? bookings = null,Object? parcelArrivals = null,}) {
  return _then(_self.copyWith(
trips: null == trips ? _self.trips : trips // ignore: cast_nullable_to_non_nullable
as List<OfflineTrip>,bookings: null == bookings ? _self.bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<OfflineBookingRead>,parcelArrivals: null == parcelArrivals ? _self.parcelArrivals : parcelArrivals // ignore: cast_nullable_to_non_nullable
as List<OfflineParcelRead>,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentOfflineData].
extension AgentOfflineDataPatterns on AgentOfflineData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentOfflineData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentOfflineData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentOfflineData value)  $default,){
final _that = this;
switch (_that) {
case _AgentOfflineData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentOfflineData value)?  $default,){
final _that = this;
switch (_that) {
case _AgentOfflineData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OfflineTrip> trips,  List<OfflineBookingRead> bookings, @JsonKey(name: 'parcel_arrivals')  List<OfflineParcelRead> parcelArrivals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentOfflineData() when $default != null:
return $default(_that.trips,_that.bookings,_that.parcelArrivals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OfflineTrip> trips,  List<OfflineBookingRead> bookings, @JsonKey(name: 'parcel_arrivals')  List<OfflineParcelRead> parcelArrivals)  $default,) {final _that = this;
switch (_that) {
case _AgentOfflineData():
return $default(_that.trips,_that.bookings,_that.parcelArrivals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OfflineTrip> trips,  List<OfflineBookingRead> bookings, @JsonKey(name: 'parcel_arrivals')  List<OfflineParcelRead> parcelArrivals)?  $default,) {final _that = this;
switch (_that) {
case _AgentOfflineData() when $default != null:
return $default(_that.trips,_that.bookings,_that.parcelArrivals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentOfflineData implements AgentOfflineData {
  const _AgentOfflineData({required final  List<OfflineTrip> trips, required final  List<OfflineBookingRead> bookings, @JsonKey(name: 'parcel_arrivals') required final  List<OfflineParcelRead> parcelArrivals}): _trips = trips,_bookings = bookings,_parcelArrivals = parcelArrivals;
  factory _AgentOfflineData.fromJson(Map<String, dynamic> json) => _$AgentOfflineDataFromJson(json);

 final  List<OfflineTrip> _trips;
@override List<OfflineTrip> get trips {
  if (_trips is EqualUnmodifiableListView) return _trips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trips);
}

 final  List<OfflineBookingRead> _bookings;
@override List<OfflineBookingRead> get bookings {
  if (_bookings is EqualUnmodifiableListView) return _bookings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookings);
}

 final  List<OfflineParcelRead> _parcelArrivals;
@override@JsonKey(name: 'parcel_arrivals') List<OfflineParcelRead> get parcelArrivals {
  if (_parcelArrivals is EqualUnmodifiableListView) return _parcelArrivals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parcelArrivals);
}


/// Create a copy of AgentOfflineData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentOfflineDataCopyWith<_AgentOfflineData> get copyWith => __$AgentOfflineDataCopyWithImpl<_AgentOfflineData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentOfflineDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentOfflineData&&const DeepCollectionEquality().equals(other._trips, _trips)&&const DeepCollectionEquality().equals(other._bookings, _bookings)&&const DeepCollectionEquality().equals(other._parcelArrivals, _parcelArrivals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trips),const DeepCollectionEquality().hash(_bookings),const DeepCollectionEquality().hash(_parcelArrivals));

@override
String toString() {
  return 'AgentOfflineData(trips: $trips, bookings: $bookings, parcelArrivals: $parcelArrivals)';
}


}

/// @nodoc
abstract mixin class _$AgentOfflineDataCopyWith<$Res> implements $AgentOfflineDataCopyWith<$Res> {
  factory _$AgentOfflineDataCopyWith(_AgentOfflineData value, $Res Function(_AgentOfflineData) _then) = __$AgentOfflineDataCopyWithImpl;
@override @useResult
$Res call({
 List<OfflineTrip> trips, List<OfflineBookingRead> bookings,@JsonKey(name: 'parcel_arrivals') List<OfflineParcelRead> parcelArrivals
});




}
/// @nodoc
class __$AgentOfflineDataCopyWithImpl<$Res>
    implements _$AgentOfflineDataCopyWith<$Res> {
  __$AgentOfflineDataCopyWithImpl(this._self, this._then);

  final _AgentOfflineData _self;
  final $Res Function(_AgentOfflineData) _then;

/// Create a copy of AgentOfflineData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trips = null,Object? bookings = null,Object? parcelArrivals = null,}) {
  return _then(_AgentOfflineData(
trips: null == trips ? _self._trips : trips // ignore: cast_nullable_to_non_nullable
as List<OfflineTrip>,bookings: null == bookings ? _self._bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<OfflineBookingRead>,parcelArrivals: null == parcelArrivals ? _self._parcelArrivals : parcelArrivals // ignore: cast_nullable_to_non_nullable
as List<OfflineParcelRead>,
  ));
}


}

// dart format on
