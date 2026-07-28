// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyPaymentMethod {

 Method80cEnum get method;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of CompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyPaymentMethodCopyWith<CompanyPaymentMethod> get copyWith => _$CompanyPaymentMethodCopyWithImpl<CompanyPaymentMethod>(this as CompanyPaymentMethod, _$identity);

  /// Serializes this CompanyPaymentMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyPaymentMethod&&(identical(other.method, method) || other.method == method)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,isActive);

@override
String toString() {
  return 'CompanyPaymentMethod(method: $method, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CompanyPaymentMethodCopyWith<$Res>  {
  factory $CompanyPaymentMethodCopyWith(CompanyPaymentMethod value, $Res Function(CompanyPaymentMethod) _then) = _$CompanyPaymentMethodCopyWithImpl;
@useResult
$Res call({
 Method80cEnum method,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$CompanyPaymentMethodCopyWithImpl<$Res>
    implements $CompanyPaymentMethodCopyWith<$Res> {
  _$CompanyPaymentMethodCopyWithImpl(this._self, this._then);

  final CompanyPaymentMethod _self;
  final $Res Function(CompanyPaymentMethod) _then;

/// Create a copy of CompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyPaymentMethod].
extension CompanyPaymentMethodPatterns on CompanyPaymentMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyPaymentMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyPaymentMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyPaymentMethod value)  $default,){
final _that = this;
switch (_that) {
case _CompanyPaymentMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyPaymentMethod value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyPaymentMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Method80cEnum method, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyPaymentMethod() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Method80cEnum method, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _CompanyPaymentMethod():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Method80cEnum method, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _CompanyPaymentMethod() when $default != null:
return $default(_that.method,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyPaymentMethod implements CompanyPaymentMethod {
  const _CompanyPaymentMethod({required this.method, @JsonKey(name: 'is_active') this.isActive});
  factory _CompanyPaymentMethod.fromJson(Map<String, dynamic> json) => _$CompanyPaymentMethodFromJson(json);

@override final  Method80cEnum method;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of CompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyPaymentMethodCopyWith<_CompanyPaymentMethod> get copyWith => __$CompanyPaymentMethodCopyWithImpl<_CompanyPaymentMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyPaymentMethodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyPaymentMethod&&(identical(other.method, method) || other.method == method)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,isActive);

@override
String toString() {
  return 'CompanyPaymentMethod(method: $method, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CompanyPaymentMethodCopyWith<$Res> implements $CompanyPaymentMethodCopyWith<$Res> {
  factory _$CompanyPaymentMethodCopyWith(_CompanyPaymentMethod value, $Res Function(_CompanyPaymentMethod) _then) = __$CompanyPaymentMethodCopyWithImpl;
@override @useResult
$Res call({
 Method80cEnum method,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$CompanyPaymentMethodCopyWithImpl<$Res>
    implements _$CompanyPaymentMethodCopyWith<$Res> {
  __$CompanyPaymentMethodCopyWithImpl(this._self, this._then);

  final _CompanyPaymentMethod _self;
  final $Res Function(_CompanyPaymentMethod) _then;

/// Create a copy of CompanyPaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? isActive = freezed,}) {
  return _then(_CompanyPaymentMethod(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
