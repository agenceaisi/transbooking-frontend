// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testimonial_toggle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestimonialToggle {

@JsonKey(name: 'is_testimonial') bool? get isTestimonial;
/// Create a copy of TestimonialToggle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestimonialToggleCopyWith<TestimonialToggle> get copyWith => _$TestimonialToggleCopyWithImpl<TestimonialToggle>(this as TestimonialToggle, _$identity);

  /// Serializes this TestimonialToggle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestimonialToggle&&(identical(other.isTestimonial, isTestimonial) || other.isTestimonial == isTestimonial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isTestimonial);

@override
String toString() {
  return 'TestimonialToggle(isTestimonial: $isTestimonial)';
}


}

/// @nodoc
abstract mixin class $TestimonialToggleCopyWith<$Res>  {
  factory $TestimonialToggleCopyWith(TestimonialToggle value, $Res Function(TestimonialToggle) _then) = _$TestimonialToggleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_testimonial') bool? isTestimonial
});




}
/// @nodoc
class _$TestimonialToggleCopyWithImpl<$Res>
    implements $TestimonialToggleCopyWith<$Res> {
  _$TestimonialToggleCopyWithImpl(this._self, this._then);

  final TestimonialToggle _self;
  final $Res Function(TestimonialToggle) _then;

/// Create a copy of TestimonialToggle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isTestimonial = freezed,}) {
  return _then(_self.copyWith(
isTestimonial: freezed == isTestimonial ? _self.isTestimonial : isTestimonial // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [TestimonialToggle].
extension TestimonialTogglePatterns on TestimonialToggle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestimonialToggle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestimonialToggle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestimonialToggle value)  $default,){
final _that = this;
switch (_that) {
case _TestimonialToggle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestimonialToggle value)?  $default,){
final _that = this;
switch (_that) {
case _TestimonialToggle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_testimonial')  bool? isTestimonial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestimonialToggle() when $default != null:
return $default(_that.isTestimonial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_testimonial')  bool? isTestimonial)  $default,) {final _that = this;
switch (_that) {
case _TestimonialToggle():
return $default(_that.isTestimonial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_testimonial')  bool? isTestimonial)?  $default,) {final _that = this;
switch (_that) {
case _TestimonialToggle() when $default != null:
return $default(_that.isTestimonial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestimonialToggle implements TestimonialToggle {
  const _TestimonialToggle({@JsonKey(name: 'is_testimonial') this.isTestimonial});
  factory _TestimonialToggle.fromJson(Map<String, dynamic> json) => _$TestimonialToggleFromJson(json);

@override@JsonKey(name: 'is_testimonial') final  bool? isTestimonial;

/// Create a copy of TestimonialToggle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestimonialToggleCopyWith<_TestimonialToggle> get copyWith => __$TestimonialToggleCopyWithImpl<_TestimonialToggle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestimonialToggleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestimonialToggle&&(identical(other.isTestimonial, isTestimonial) || other.isTestimonial == isTestimonial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isTestimonial);

@override
String toString() {
  return 'TestimonialToggle(isTestimonial: $isTestimonial)';
}


}

/// @nodoc
abstract mixin class _$TestimonialToggleCopyWith<$Res> implements $TestimonialToggleCopyWith<$Res> {
  factory _$TestimonialToggleCopyWith(_TestimonialToggle value, $Res Function(_TestimonialToggle) _then) = __$TestimonialToggleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_testimonial') bool? isTestimonial
});




}
/// @nodoc
class __$TestimonialToggleCopyWithImpl<$Res>
    implements _$TestimonialToggleCopyWith<$Res> {
  __$TestimonialToggleCopyWithImpl(this._self, this._then);

  final _TestimonialToggle _self;
  final $Res Function(_TestimonialToggle) _then;

/// Create a copy of TestimonialToggle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isTestimonial = freezed,}) {
  return _then(_TestimonialToggle(
isTestimonial: freezed == isTestimonial ? _self.isTestimonial : isTestimonial // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
