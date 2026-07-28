// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlatformPaymentMethod {

 Method80cEnum get method;@JsonKey(name: 'method_display') String get methodDisplay;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of PlatformPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlatformPaymentMethodCopyWith<PlatformPaymentMethod> get copyWith => _$PlatformPaymentMethodCopyWithImpl<PlatformPaymentMethod>(this as PlatformPaymentMethod, _$identity);

  /// Serializes this PlatformPaymentMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlatformPaymentMethod&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,methodDisplay,isActive);

@override
String toString() {
  return 'PlatformPaymentMethod(method: $method, methodDisplay: $methodDisplay, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $PlatformPaymentMethodCopyWith<$Res>  {
  factory $PlatformPaymentMethodCopyWith(PlatformPaymentMethod value, $Res Function(PlatformPaymentMethod) _then) = _$PlatformPaymentMethodCopyWithImpl;
@useResult
$Res call({
 Method80cEnum method,@JsonKey(name: 'method_display') String methodDisplay,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$PlatformPaymentMethodCopyWithImpl<$Res>
    implements $PlatformPaymentMethodCopyWith<$Res> {
  _$PlatformPaymentMethodCopyWithImpl(this._self, this._then);

  final PlatformPaymentMethod _self;
  final $Res Function(PlatformPaymentMethod) _then;

/// Create a copy of PlatformPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? methodDisplay = null,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlatformPaymentMethod].
extension PlatformPaymentMethodPatterns on PlatformPaymentMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlatformPaymentMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlatformPaymentMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlatformPaymentMethod value)  $default,){
final _that = this;
switch (_that) {
case _PlatformPaymentMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlatformPaymentMethod value)?  $default,){
final _that = this;
switch (_that) {
case _PlatformPaymentMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Method80cEnum method, @JsonKey(name: 'method_display')  String methodDisplay, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlatformPaymentMethod() when $default != null:
return $default(_that.method,_that.methodDisplay,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Method80cEnum method, @JsonKey(name: 'method_display')  String methodDisplay, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _PlatformPaymentMethod():
return $default(_that.method,_that.methodDisplay,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Method80cEnum method, @JsonKey(name: 'method_display')  String methodDisplay, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _PlatformPaymentMethod() when $default != null:
return $default(_that.method,_that.methodDisplay,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlatformPaymentMethod implements PlatformPaymentMethod {
  const _PlatformPaymentMethod({required this.method, @JsonKey(name: 'method_display') required this.methodDisplay, @JsonKey(name: 'is_active') this.isActive});
  factory _PlatformPaymentMethod.fromJson(Map<String, dynamic> json) => _$PlatformPaymentMethodFromJson(json);

@override final  Method80cEnum method;
@override@JsonKey(name: 'method_display') final  String methodDisplay;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of PlatformPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlatformPaymentMethodCopyWith<_PlatformPaymentMethod> get copyWith => __$PlatformPaymentMethodCopyWithImpl<_PlatformPaymentMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlatformPaymentMethodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlatformPaymentMethod&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,methodDisplay,isActive);

@override
String toString() {
  return 'PlatformPaymentMethod(method: $method, methodDisplay: $methodDisplay, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$PlatformPaymentMethodCopyWith<$Res> implements $PlatformPaymentMethodCopyWith<$Res> {
  factory _$PlatformPaymentMethodCopyWith(_PlatformPaymentMethod value, $Res Function(_PlatformPaymentMethod) _then) = __$PlatformPaymentMethodCopyWithImpl;
@override @useResult
$Res call({
 Method80cEnum method,@JsonKey(name: 'method_display') String methodDisplay,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$PlatformPaymentMethodCopyWithImpl<$Res>
    implements _$PlatformPaymentMethodCopyWith<$Res> {
  __$PlatformPaymentMethodCopyWithImpl(this._self, this._then);

  final _PlatformPaymentMethod _self;
  final $Res Function(_PlatformPaymentMethod) _then;

/// Create a copy of PlatformPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? methodDisplay = null,Object? isActive = freezed,}) {
  return _then(_PlatformPaymentMethod(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
