// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentPayment {

@JsonKey(name: 'booking_id') int get bookingId; Method80cEnum get method;@JsonKey(name: 'transaction_ref') String? get transactionRef; String? get phone;
/// Create a copy of AgentPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentPaymentCopyWith<AgentPayment> get copyWith => _$AgentPaymentCopyWithImpl<AgentPayment>(this as AgentPayment, _$identity);

  /// Serializes this AgentPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentPayment&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.method, method) || other.method == method)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,method,transactionRef,phone);

@override
String toString() {
  return 'AgentPayment(bookingId: $bookingId, method: $method, transactionRef: $transactionRef, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $AgentPaymentCopyWith<$Res>  {
  factory $AgentPaymentCopyWith(AgentPayment value, $Res Function(AgentPayment) _then) = _$AgentPaymentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'booking_id') int bookingId, Method80cEnum method,@JsonKey(name: 'transaction_ref') String? transactionRef, String? phone
});




}
/// @nodoc
class _$AgentPaymentCopyWithImpl<$Res>
    implements $AgentPaymentCopyWith<$Res> {
  _$AgentPaymentCopyWithImpl(this._self, this._then);

  final AgentPayment _self;
  final $Res Function(AgentPayment) _then;

/// Create a copy of AgentPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = null,Object? method = null,Object? transactionRef = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentPayment].
extension AgentPaymentPatterns on AgentPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentPayment value)  $default,){
final _that = this;
switch (_that) {
case _AgentPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentPayment value)?  $default,){
final _that = this;
switch (_that) {
case _AgentPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'booking_id')  int bookingId,  Method80cEnum method, @JsonKey(name: 'transaction_ref')  String? transactionRef,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentPayment() when $default != null:
return $default(_that.bookingId,_that.method,_that.transactionRef,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'booking_id')  int bookingId,  Method80cEnum method, @JsonKey(name: 'transaction_ref')  String? transactionRef,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _AgentPayment():
return $default(_that.bookingId,_that.method,_that.transactionRef,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'booking_id')  int bookingId,  Method80cEnum method, @JsonKey(name: 'transaction_ref')  String? transactionRef,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _AgentPayment() when $default != null:
return $default(_that.bookingId,_that.method,_that.transactionRef,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentPayment implements AgentPayment {
  const _AgentPayment({@JsonKey(name: 'booking_id') required this.bookingId, required this.method, @JsonKey(name: 'transaction_ref') this.transactionRef, this.phone});
  factory _AgentPayment.fromJson(Map<String, dynamic> json) => _$AgentPaymentFromJson(json);

@override@JsonKey(name: 'booking_id') final  int bookingId;
@override final  Method80cEnum method;
@override@JsonKey(name: 'transaction_ref') final  String? transactionRef;
@override final  String? phone;

/// Create a copy of AgentPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentPaymentCopyWith<_AgentPayment> get copyWith => __$AgentPaymentCopyWithImpl<_AgentPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentPayment&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.method, method) || other.method == method)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,method,transactionRef,phone);

@override
String toString() {
  return 'AgentPayment(bookingId: $bookingId, method: $method, transactionRef: $transactionRef, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$AgentPaymentCopyWith<$Res> implements $AgentPaymentCopyWith<$Res> {
  factory _$AgentPaymentCopyWith(_AgentPayment value, $Res Function(_AgentPayment) _then) = __$AgentPaymentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'booking_id') int bookingId, Method80cEnum method,@JsonKey(name: 'transaction_ref') String? transactionRef, String? phone
});




}
/// @nodoc
class __$AgentPaymentCopyWithImpl<$Res>
    implements _$AgentPaymentCopyWith<$Res> {
  __$AgentPaymentCopyWithImpl(this._self, this._then);

  final _AgentPayment _self;
  final $Res Function(_AgentPayment) _then;

/// Create a copy of AgentPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = null,Object? method = null,Object? transactionRef = freezed,Object? phone = freezed,}) {
  return _then(_AgentPayment(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
