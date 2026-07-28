// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'baggage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Baggage {

 int get id; String get label; String get tag;@JsonKey(name: 'weight_kg') String get weightKg; LocationEnum? get location;@JsonKey(name: 'location_display') String get locationDisplay;
/// Create a copy of Baggage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaggageCopyWith<Baggage> get copyWith => _$BaggageCopyWithImpl<Baggage>(this as Baggage, _$identity);

  /// Serializes this Baggage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Baggage&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationDisplay, locationDisplay) || other.locationDisplay == locationDisplay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,tag,weightKg,location,locationDisplay);

@override
String toString() {
  return 'Baggage(id: $id, label: $label, tag: $tag, weightKg: $weightKg, location: $location, locationDisplay: $locationDisplay)';
}


}

/// @nodoc
abstract mixin class $BaggageCopyWith<$Res>  {
  factory $BaggageCopyWith(Baggage value, $Res Function(Baggage) _then) = _$BaggageCopyWithImpl;
@useResult
$Res call({
 int id, String label, String tag,@JsonKey(name: 'weight_kg') String weightKg, LocationEnum? location,@JsonKey(name: 'location_display') String locationDisplay
});




}
/// @nodoc
class _$BaggageCopyWithImpl<$Res>
    implements $BaggageCopyWith<$Res> {
  _$BaggageCopyWithImpl(this._self, this._then);

  final Baggage _self;
  final $Res Function(Baggage) _then;

/// Create a copy of Baggage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? tag = null,Object? weightKg = null,Object? location = freezed,Object? locationDisplay = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationEnum?,locationDisplay: null == locationDisplay ? _self.locationDisplay : locationDisplay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Baggage].
extension BaggagePatterns on Baggage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Baggage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Baggage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Baggage value)  $default,){
final _that = this;
switch (_that) {
case _Baggage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Baggage value)?  $default,){
final _that = this;
switch (_that) {
case _Baggage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String label,  String tag, @JsonKey(name: 'weight_kg')  String weightKg,  LocationEnum? location, @JsonKey(name: 'location_display')  String locationDisplay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Baggage() when $default != null:
return $default(_that.id,_that.label,_that.tag,_that.weightKg,_that.location,_that.locationDisplay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String label,  String tag, @JsonKey(name: 'weight_kg')  String weightKg,  LocationEnum? location, @JsonKey(name: 'location_display')  String locationDisplay)  $default,) {final _that = this;
switch (_that) {
case _Baggage():
return $default(_that.id,_that.label,_that.tag,_that.weightKg,_that.location,_that.locationDisplay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String label,  String tag, @JsonKey(name: 'weight_kg')  String weightKg,  LocationEnum? location, @JsonKey(name: 'location_display')  String locationDisplay)?  $default,) {final _that = this;
switch (_that) {
case _Baggage() when $default != null:
return $default(_that.id,_that.label,_that.tag,_that.weightKg,_that.location,_that.locationDisplay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Baggage implements Baggage {
  const _Baggage({required this.id, required this.label, required this.tag, @JsonKey(name: 'weight_kg') required this.weightKg, this.location, @JsonKey(name: 'location_display') required this.locationDisplay});
  factory _Baggage.fromJson(Map<String, dynamic> json) => _$BaggageFromJson(json);

@override final  int id;
@override final  String label;
@override final  String tag;
@override@JsonKey(name: 'weight_kg') final  String weightKg;
@override final  LocationEnum? location;
@override@JsonKey(name: 'location_display') final  String locationDisplay;

/// Create a copy of Baggage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaggageCopyWith<_Baggage> get copyWith => __$BaggageCopyWithImpl<_Baggage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaggageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Baggage&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationDisplay, locationDisplay) || other.locationDisplay == locationDisplay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,tag,weightKg,location,locationDisplay);

@override
String toString() {
  return 'Baggage(id: $id, label: $label, tag: $tag, weightKg: $weightKg, location: $location, locationDisplay: $locationDisplay)';
}


}

/// @nodoc
abstract mixin class _$BaggageCopyWith<$Res> implements $BaggageCopyWith<$Res> {
  factory _$BaggageCopyWith(_Baggage value, $Res Function(_Baggage) _then) = __$BaggageCopyWithImpl;
@override @useResult
$Res call({
 int id, String label, String tag,@JsonKey(name: 'weight_kg') String weightKg, LocationEnum? location,@JsonKey(name: 'location_display') String locationDisplay
});




}
/// @nodoc
class __$BaggageCopyWithImpl<$Res>
    implements _$BaggageCopyWith<$Res> {
  __$BaggageCopyWithImpl(this._self, this._then);

  final _Baggage _self;
  final $Res Function(_Baggage) _then;

/// Create a copy of Baggage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? tag = null,Object? weightKg = null,Object? location = freezed,Object? locationDisplay = null,}) {
  return _then(_Baggage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationEnum?,locationDisplay: null == locationDisplay ? _self.locationDisplay : locationDisplay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
