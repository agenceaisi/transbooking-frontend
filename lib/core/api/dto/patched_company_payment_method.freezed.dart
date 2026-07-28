// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_company_payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedCompanyPaymentMethod {

 Method80cEnum? get method;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of PatchedCompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedCompanyPaymentMethodCopyWith<PatchedCompanyPaymentMethod> get copyWith => _$PatchedCompanyPaymentMethodCopyWithImpl<PatchedCompanyPaymentMethod>(this as PatchedCompanyPaymentMethod, _$identity);

  /// Serializes this PatchedCompanyPaymentMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedCompanyPaymentMethod&&(identical(other.method, method) || other.method == method)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,isActive);

@override
String toString() {
  return 'PatchedCompanyPaymentMethod(method: $method, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $PatchedCompanyPaymentMethodCopyWith<$Res>  {
  factory $PatchedCompanyPaymentMethodCopyWith(PatchedCompanyPaymentMethod value, $Res Function(PatchedCompanyPaymentMethod) _then) = _$PatchedCompanyPaymentMethodCopyWithImpl;
@useResult
$Res call({
 Method80cEnum? method,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$PatchedCompanyPaymentMethodCopyWithImpl<$Res>
    implements $PatchedCompanyPaymentMethodCopyWith<$Res> {
  _$PatchedCompanyPaymentMethodCopyWithImpl(this._self, this._then);

  final PatchedCompanyPaymentMethod _self;
  final $Res Function(PatchedCompanyPaymentMethod) _then;

/// Create a copy of PatchedCompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedCompanyPaymentMethod].
extension PatchedCompanyPaymentMethodPatterns on PatchedCompanyPaymentMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedCompanyPaymentMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedCompanyPaymentMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedCompanyPaymentMethod value)  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyPaymentMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedCompanyPaymentMethod value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyPaymentMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Method80cEnum? method, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedCompanyPaymentMethod() when $default != null:
return $default(_that.method,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Method80cEnum? method, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyPaymentMethod():
return $default(_that.method,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Method80cEnum? method, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyPaymentMethod() when $default != null:
return $default(_that.method,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedCompanyPaymentMethod implements PatchedCompanyPaymentMethod {
  const _PatchedCompanyPaymentMethod({this.method, @JsonKey(name: 'is_active') this.isActive});
  factory _PatchedCompanyPaymentMethod.fromJson(Map<String, dynamic> json) => _$PatchedCompanyPaymentMethodFromJson(json);

@override final  Method80cEnum? method;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of PatchedCompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedCompanyPaymentMethodCopyWith<_PatchedCompanyPaymentMethod> get copyWith => __$PatchedCompanyPaymentMethodCopyWithImpl<_PatchedCompanyPaymentMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedCompanyPaymentMethodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedCompanyPaymentMethod&&(identical(other.method, method) || other.method == method)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,isActive);

@override
String toString() {
  return 'PatchedCompanyPaymentMethod(method: $method, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$PatchedCompanyPaymentMethodCopyWith<$Res> implements $PatchedCompanyPaymentMethodCopyWith<$Res> {
  factory _$PatchedCompanyPaymentMethodCopyWith(_PatchedCompanyPaymentMethod value, $Res Function(_PatchedCompanyPaymentMethod) _then) = __$PatchedCompanyPaymentMethodCopyWithImpl;
@override @useResult
$Res call({
 Method80cEnum? method,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$PatchedCompanyPaymentMethodCopyWithImpl<$Res>
    implements _$PatchedCompanyPaymentMethodCopyWith<$Res> {
  __$PatchedCompanyPaymentMethodCopyWithImpl(this._self, this._then);

  final _PatchedCompanyPaymentMethod _self;
  final $Res Function(_PatchedCompanyPaymentMethod) _then;

/// Create a copy of PatchedCompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = freezed,Object? isActive = freezed,}) {
  return _then(_PatchedCompanyPaymentMethod(
method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
