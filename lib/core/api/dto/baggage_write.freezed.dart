// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'baggage_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaggageWrite {

 String get label;@JsonKey(name: 'weight_kg') String get weightKg; LocationEnum? get location;
/// Create a copy of BaggageWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaggageWriteCopyWith<BaggageWrite> get copyWith => _$BaggageWriteCopyWithImpl<BaggageWrite>(this as BaggageWrite, _$identity);

  /// Serializes this BaggageWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaggageWrite&&(identical(other.label, label) || other.label == label)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,weightKg,location);

@override
String toString() {
  return 'BaggageWrite(label: $label, weightKg: $weightKg, location: $location)';
}


}

/// @nodoc
abstract mixin class $BaggageWriteCopyWith<$Res>  {
  factory $BaggageWriteCopyWith(BaggageWrite value, $Res Function(BaggageWrite) _then) = _$BaggageWriteCopyWithImpl;
@useResult
$Res call({
 String label,@JsonKey(name: 'weight_kg') String weightKg, LocationEnum? location
});




}
/// @nodoc
class _$BaggageWriteCopyWithImpl<$Res>
    implements $BaggageWriteCopyWith<$Res> {
  _$BaggageWriteCopyWithImpl(this._self, this._then);

  final BaggageWrite _self;
  final $Res Function(BaggageWrite) _then;

/// Create a copy of BaggageWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? weightKg = null,Object? location = freezed,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationEnum?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaggageWrite].
extension BaggageWritePatterns on BaggageWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaggageWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaggageWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaggageWrite value)  $default,){
final _that = this;
switch (_that) {
case _BaggageWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaggageWrite value)?  $default,){
final _that = this;
switch (_that) {
case _BaggageWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label, @JsonKey(name: 'weight_kg')  String weightKg,  LocationEnum? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaggageWrite() when $default != null:
return $default(_that.label,_that.weightKg,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label, @JsonKey(name: 'weight_kg')  String weightKg,  LocationEnum? location)  $default,) {final _that = this;
switch (_that) {
case _BaggageWrite():
return $default(_that.label,_that.weightKg,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label, @JsonKey(name: 'weight_kg')  String weightKg,  LocationEnum? location)?  $default,) {final _that = this;
switch (_that) {
case _BaggageWrite() when $default != null:
return $default(_that.label,_that.weightKg,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BaggageWrite implements BaggageWrite {
  const _BaggageWrite({required this.label, @JsonKey(name: 'weight_kg') required this.weightKg, this.location});
  factory _BaggageWrite.fromJson(Map<String, dynamic> json) => _$BaggageWriteFromJson(json);

@override final  String label;
@override@JsonKey(name: 'weight_kg') final  String weightKg;
@override final  LocationEnum? location;

/// Create a copy of BaggageWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaggageWriteCopyWith<_BaggageWrite> get copyWith => __$BaggageWriteCopyWithImpl<_BaggageWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaggageWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaggageWrite&&(identical(other.label, label) || other.label == label)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,weightKg,location);

@override
String toString() {
  return 'BaggageWrite(label: $label, weightKg: $weightKg, location: $location)';
}


}

/// @nodoc
abstract mixin class _$BaggageWriteCopyWith<$Res> implements $BaggageWriteCopyWith<$Res> {
  factory _$BaggageWriteCopyWith(_BaggageWrite value, $Res Function(_BaggageWrite) _then) = __$BaggageWriteCopyWithImpl;
@override @useResult
$Res call({
 String label,@JsonKey(name: 'weight_kg') String weightKg, LocationEnum? location
});




}
/// @nodoc
class __$BaggageWriteCopyWithImpl<$Res>
    implements _$BaggageWriteCopyWith<$Res> {
  __$BaggageWriteCopyWithImpl(this._self, this._then);

  final _BaggageWrite _self;
  final $Res Function(_BaggageWrite) _then;

/// Create a copy of BaggageWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? weightKg = null,Object? location = freezed,}) {
  return _then(_BaggageWrite(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationEnum?,
  ));
}


}

// dart format on
