// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_baggage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TravelerBaggageItem {

 int get id; String get label; String get tag;/// Poids en kg, chaîne décimale renvoyée par l'API (lecture seule).
 String get weightKg; BaggageLocation get location; String get locationDisplay;
/// Create a copy of TravelerBaggageItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerBaggageItemCopyWith<TravelerBaggageItem> get copyWith => _$TravelerBaggageItemCopyWithImpl<TravelerBaggageItem>(this as TravelerBaggageItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerBaggageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationDisplay, locationDisplay) || other.locationDisplay == locationDisplay));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,tag,weightKg,location,locationDisplay);

@override
String toString() {
  return 'TravelerBaggageItem(id: $id, label: $label, tag: $tag, weightKg: $weightKg, location: $location, locationDisplay: $locationDisplay)';
}


}

/// @nodoc
abstract mixin class $TravelerBaggageItemCopyWith<$Res>  {
  factory $TravelerBaggageItemCopyWith(TravelerBaggageItem value, $Res Function(TravelerBaggageItem) _then) = _$TravelerBaggageItemCopyWithImpl;
@useResult
$Res call({
 int id, String label, String tag, String weightKg, BaggageLocation location, String locationDisplay
});




}
/// @nodoc
class _$TravelerBaggageItemCopyWithImpl<$Res>
    implements $TravelerBaggageItemCopyWith<$Res> {
  _$TravelerBaggageItemCopyWithImpl(this._self, this._then);

  final TravelerBaggageItem _self;
  final $Res Function(TravelerBaggageItem) _then;

/// Create a copy of TravelerBaggageItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? tag = null,Object? weightKg = null,Object? location = null,Object? locationDisplay = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as BaggageLocation,locationDisplay: null == locationDisplay ? _self.locationDisplay : locationDisplay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerBaggageItem].
extension TravelerBaggageItemPatterns on TravelerBaggageItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerBaggageItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerBaggageItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerBaggageItem value)  $default,){
final _that = this;
switch (_that) {
case _TravelerBaggageItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerBaggageItem value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerBaggageItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String label,  String tag,  String weightKg,  BaggageLocation location,  String locationDisplay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerBaggageItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String label,  String tag,  String weightKg,  BaggageLocation location,  String locationDisplay)  $default,) {final _that = this;
switch (_that) {
case _TravelerBaggageItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String label,  String tag,  String weightKg,  BaggageLocation location,  String locationDisplay)?  $default,) {final _that = this;
switch (_that) {
case _TravelerBaggageItem() when $default != null:
return $default(_that.id,_that.label,_that.tag,_that.weightKg,_that.location,_that.locationDisplay);case _:
  return null;

}
}

}

/// @nodoc


class _TravelerBaggageItem implements TravelerBaggageItem {
  const _TravelerBaggageItem({required this.id, required this.label, required this.tag, required this.weightKg, required this.location, required this.locationDisplay});
  

@override final  int id;
@override final  String label;
@override final  String tag;
/// Poids en kg, chaîne décimale renvoyée par l'API (lecture seule).
@override final  String weightKg;
@override final  BaggageLocation location;
@override final  String locationDisplay;

/// Create a copy of TravelerBaggageItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerBaggageItemCopyWith<_TravelerBaggageItem> get copyWith => __$TravelerBaggageItemCopyWithImpl<_TravelerBaggageItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerBaggageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationDisplay, locationDisplay) || other.locationDisplay == locationDisplay));
}


@override
int get hashCode => Object.hash(runtimeType,id,label,tag,weightKg,location,locationDisplay);

@override
String toString() {
  return 'TravelerBaggageItem(id: $id, label: $label, tag: $tag, weightKg: $weightKg, location: $location, locationDisplay: $locationDisplay)';
}


}

/// @nodoc
abstract mixin class _$TravelerBaggageItemCopyWith<$Res> implements $TravelerBaggageItemCopyWith<$Res> {
  factory _$TravelerBaggageItemCopyWith(_TravelerBaggageItem value, $Res Function(_TravelerBaggageItem) _then) = __$TravelerBaggageItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String label, String tag, String weightKg, BaggageLocation location, String locationDisplay
});




}
/// @nodoc
class __$TravelerBaggageItemCopyWithImpl<$Res>
    implements _$TravelerBaggageItemCopyWith<$Res> {
  __$TravelerBaggageItemCopyWithImpl(this._self, this._then);

  final _TravelerBaggageItem _self;
  final $Res Function(_TravelerBaggageItem) _then;

/// Create a copy of TravelerBaggageItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? tag = null,Object? weightKg = null,Object? location = null,Object? locationDisplay = null,}) {
  return _then(_TravelerBaggageItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as BaggageLocation,locationDisplay: null == locationDisplay ? _self.locationDisplay : locationDisplay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
