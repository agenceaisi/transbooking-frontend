// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_initiate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentInitiate {

@JsonKey(name: 'booking_id') int? get bookingId;@JsonKey(name: 'parcel_id') int? get parcelId; Method80cEnum get method; String? get phone;
/// Create a copy of PaymentInitiate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentInitiateCopyWith<PaymentInitiate> get copyWith => _$PaymentInitiateCopyWithImpl<PaymentInitiate>(this as PaymentInitiate, _$identity);

  /// Serializes this PaymentInitiate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInitiate&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.parcelId, parcelId) || other.parcelId == parcelId)&&(identical(other.method, method) || other.method == method)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,parcelId,method,phone);

@override
String toString() {
  return 'PaymentInitiate(bookingId: $bookingId, parcelId: $parcelId, method: $method, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PaymentInitiateCopyWith<$Res>  {
  factory $PaymentInitiateCopyWith(PaymentInitiate value, $Res Function(PaymentInitiate) _then) = _$PaymentInitiateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'booking_id') int? bookingId,@JsonKey(name: 'parcel_id') int? parcelId, Method80cEnum method, String? phone
});




}
/// @nodoc
class _$PaymentInitiateCopyWithImpl<$Res>
    implements $PaymentInitiateCopyWith<$Res> {
  _$PaymentInitiateCopyWithImpl(this._self, this._then);

  final PaymentInitiate _self;
  final $Res Function(PaymentInitiate) _then;

/// Create a copy of PaymentInitiate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = freezed,Object? parcelId = freezed,Object? method = null,Object? phone = freezed,}) {
  return _then(_self.copyWith(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int?,parcelId: freezed == parcelId ? _self.parcelId : parcelId // ignore: cast_nullable_to_non_nullable
as int?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentInitiate].
extension PaymentInitiatePatterns on PaymentInitiate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentInitiate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentInitiate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentInitiate value)  $default,){
final _that = this;
switch (_that) {
case _PaymentInitiate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentInitiate value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentInitiate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'booking_id')  int? bookingId, @JsonKey(name: 'parcel_id')  int? parcelId,  Method80cEnum method,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentInitiate() when $default != null:
return $default(_that.bookingId,_that.parcelId,_that.method,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'booking_id')  int? bookingId, @JsonKey(name: 'parcel_id')  int? parcelId,  Method80cEnum method,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _PaymentInitiate():
return $default(_that.bookingId,_that.parcelId,_that.method,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'booking_id')  int? bookingId, @JsonKey(name: 'parcel_id')  int? parcelId,  Method80cEnum method,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _PaymentInitiate() when $default != null:
return $default(_that.bookingId,_that.parcelId,_that.method,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentInitiate implements PaymentInitiate {
  const _PaymentInitiate({@JsonKey(name: 'booking_id') this.bookingId, @JsonKey(name: 'parcel_id') this.parcelId, required this.method, this.phone});
  factory _PaymentInitiate.fromJson(Map<String, dynamic> json) => _$PaymentInitiateFromJson(json);

@override@JsonKey(name: 'booking_id') final  int? bookingId;
@override@JsonKey(name: 'parcel_id') final  int? parcelId;
@override final  Method80cEnum method;
@override final  String? phone;

/// Create a copy of PaymentInitiate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentInitiateCopyWith<_PaymentInitiate> get copyWith => __$PaymentInitiateCopyWithImpl<_PaymentInitiate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentInitiateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentInitiate&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.parcelId, parcelId) || other.parcelId == parcelId)&&(identical(other.method, method) || other.method == method)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,parcelId,method,phone);

@override
String toString() {
  return 'PaymentInitiate(bookingId: $bookingId, parcelId: $parcelId, method: $method, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PaymentInitiateCopyWith<$Res> implements $PaymentInitiateCopyWith<$Res> {
  factory _$PaymentInitiateCopyWith(_PaymentInitiate value, $Res Function(_PaymentInitiate) _then) = __$PaymentInitiateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'booking_id') int? bookingId,@JsonKey(name: 'parcel_id') int? parcelId, Method80cEnum method, String? phone
});




}
/// @nodoc
class __$PaymentInitiateCopyWithImpl<$Res>
    implements _$PaymentInitiateCopyWith<$Res> {
  __$PaymentInitiateCopyWithImpl(this._self, this._then);

  final _PaymentInitiate _self;
  final $Res Function(_PaymentInitiate) _then;

/// Create a copy of PaymentInitiate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = freezed,Object? parcelId = freezed,Object? method = null,Object? phone = freezed,}) {
  return _then(_PaymentInitiate(
bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int?,parcelId: freezed == parcelId ? _self.parcelId : parcelId // ignore: cast_nullable_to_non_nullable
as int?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
