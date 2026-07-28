// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentRead {

 int get id;@JsonKey(name: 'ticket_number') String get ticketNumber; String get amount; Method80cEnum get method;@JsonKey(name: 'method_display') String get methodDisplay; PaymentReadStatusEnum? get status;@JsonKey(name: 'status_display') String get statusDisplay;@JsonKey(name: 'transaction_ref') String get transactionRef; String get phone;@JsonKey(name: 'otp_expires_at') String? get otpExpiresAt;@JsonKey(name: 'otp_attempts_remaining') int? get otpAttemptsRemaining;@JsonKey(name: 'receipt_url') String? get receiptUrl;@JsonKey(name: 'paid_at') DateTime? get paidAt;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of PaymentRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentReadCopyWith<PaymentRead> get copyWith => _$PaymentReadCopyWithImpl<PaymentRead>(this as PaymentRead, _$identity);

  /// Serializes this PaymentRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRead&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otpExpiresAt, otpExpiresAt) || other.otpExpiresAt == otpExpiresAt)&&(identical(other.otpAttemptsRemaining, otpAttemptsRemaining) || other.otpAttemptsRemaining == otpAttemptsRemaining)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,amount,method,methodDisplay,status,statusDisplay,transactionRef,phone,otpExpiresAt,otpAttemptsRemaining,receiptUrl,paidAt,createdAt);

@override
String toString() {
  return 'PaymentRead(id: $id, ticketNumber: $ticketNumber, amount: $amount, method: $method, methodDisplay: $methodDisplay, status: $status, statusDisplay: $statusDisplay, transactionRef: $transactionRef, phone: $phone, otpExpiresAt: $otpExpiresAt, otpAttemptsRemaining: $otpAttemptsRemaining, receiptUrl: $receiptUrl, paidAt: $paidAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PaymentReadCopyWith<$Res>  {
  factory $PaymentReadCopyWith(PaymentRead value, $Res Function(PaymentRead) _then) = _$PaymentReadCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber, String amount, Method80cEnum method,@JsonKey(name: 'method_display') String methodDisplay, PaymentReadStatusEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'transaction_ref') String transactionRef, String phone,@JsonKey(name: 'otp_expires_at') String? otpExpiresAt,@JsonKey(name: 'otp_attempts_remaining') int? otpAttemptsRemaining,@JsonKey(name: 'receipt_url') String? receiptUrl,@JsonKey(name: 'paid_at') DateTime? paidAt,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$PaymentReadCopyWithImpl<$Res>
    implements $PaymentReadCopyWith<$Res> {
  _$PaymentReadCopyWithImpl(this._self, this._then);

  final PaymentRead _self;
  final $Res Function(PaymentRead) _then;

/// Create a copy of PaymentRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? amount = null,Object? method = null,Object? methodDisplay = null,Object? status = freezed,Object? statusDisplay = null,Object? transactionRef = null,Object? phone = null,Object? otpExpiresAt = freezed,Object? otpAttemptsRemaining = freezed,Object? receiptUrl = freezed,Object? paidAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentReadStatusEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,transactionRef: null == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otpExpiresAt: freezed == otpExpiresAt ? _self.otpExpiresAt : otpExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,otpAttemptsRemaining: freezed == otpAttemptsRemaining ? _self.otpAttemptsRemaining : otpAttemptsRemaining // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentRead].
extension PaymentReadPatterns on PaymentRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRead value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRead value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  String amount,  Method80cEnum method, @JsonKey(name: 'method_display')  String methodDisplay,  PaymentReadStatusEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'transaction_ref')  String transactionRef,  String phone, @JsonKey(name: 'otp_expires_at')  String? otpExpiresAt, @JsonKey(name: 'otp_attempts_remaining')  int? otpAttemptsRemaining, @JsonKey(name: 'receipt_url')  String? receiptUrl, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRead() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.amount,_that.method,_that.methodDisplay,_that.status,_that.statusDisplay,_that.transactionRef,_that.phone,_that.otpExpiresAt,_that.otpAttemptsRemaining,_that.receiptUrl,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  String amount,  Method80cEnum method, @JsonKey(name: 'method_display')  String methodDisplay,  PaymentReadStatusEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'transaction_ref')  String transactionRef,  String phone, @JsonKey(name: 'otp_expires_at')  String? otpExpiresAt, @JsonKey(name: 'otp_attempts_remaining')  int? otpAttemptsRemaining, @JsonKey(name: 'receipt_url')  String? receiptUrl, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentRead():
return $default(_that.id,_that.ticketNumber,_that.amount,_that.method,_that.methodDisplay,_that.status,_that.statusDisplay,_that.transactionRef,_that.phone,_that.otpExpiresAt,_that.otpAttemptsRemaining,_that.receiptUrl,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  String amount,  Method80cEnum method, @JsonKey(name: 'method_display')  String methodDisplay,  PaymentReadStatusEnum? status, @JsonKey(name: 'status_display')  String statusDisplay, @JsonKey(name: 'transaction_ref')  String transactionRef,  String phone, @JsonKey(name: 'otp_expires_at')  String? otpExpiresAt, @JsonKey(name: 'otp_attempts_remaining')  int? otpAttemptsRemaining, @JsonKey(name: 'receipt_url')  String? receiptUrl, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRead() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.amount,_that.method,_that.methodDisplay,_that.status,_that.statusDisplay,_that.transactionRef,_that.phone,_that.otpExpiresAt,_that.otpAttemptsRemaining,_that.receiptUrl,_that.paidAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentRead implements PaymentRead {
  const _PaymentRead({required this.id, @JsonKey(name: 'ticket_number') required this.ticketNumber, required this.amount, required this.method, @JsonKey(name: 'method_display') required this.methodDisplay, this.status, @JsonKey(name: 'status_display') required this.statusDisplay, @JsonKey(name: 'transaction_ref') required this.transactionRef, required this.phone, @JsonKey(name: 'otp_expires_at') required this.otpExpiresAt, @JsonKey(name: 'otp_attempts_remaining') required this.otpAttemptsRemaining, @JsonKey(name: 'receipt_url') this.receiptUrl, @JsonKey(name: 'paid_at') this.paidAt, @JsonKey(name: 'created_at') required this.createdAt});
  factory _PaymentRead.fromJson(Map<String, dynamic> json) => _$PaymentReadFromJson(json);

@override final  int id;
@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override final  String amount;
@override final  Method80cEnum method;
@override@JsonKey(name: 'method_display') final  String methodDisplay;
@override final  PaymentReadStatusEnum? status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override@JsonKey(name: 'transaction_ref') final  String transactionRef;
@override final  String phone;
@override@JsonKey(name: 'otp_expires_at') final  String? otpExpiresAt;
@override@JsonKey(name: 'otp_attempts_remaining') final  int? otpAttemptsRemaining;
@override@JsonKey(name: 'receipt_url') final  String? receiptUrl;
@override@JsonKey(name: 'paid_at') final  DateTime? paidAt;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of PaymentRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentReadCopyWith<_PaymentRead> get copyWith => __$PaymentReadCopyWithImpl<_PaymentRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRead&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otpExpiresAt, otpExpiresAt) || other.otpExpiresAt == otpExpiresAt)&&(identical(other.otpAttemptsRemaining, otpAttemptsRemaining) || other.otpAttemptsRemaining == otpAttemptsRemaining)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,amount,method,methodDisplay,status,statusDisplay,transactionRef,phone,otpExpiresAt,otpAttemptsRemaining,receiptUrl,paidAt,createdAt);

@override
String toString() {
  return 'PaymentRead(id: $id, ticketNumber: $ticketNumber, amount: $amount, method: $method, methodDisplay: $methodDisplay, status: $status, statusDisplay: $statusDisplay, transactionRef: $transactionRef, phone: $phone, otpExpiresAt: $otpExpiresAt, otpAttemptsRemaining: $otpAttemptsRemaining, receiptUrl: $receiptUrl, paidAt: $paidAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentReadCopyWith<$Res> implements $PaymentReadCopyWith<$Res> {
  factory _$PaymentReadCopyWith(_PaymentRead value, $Res Function(_PaymentRead) _then) = __$PaymentReadCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber, String amount, Method80cEnum method,@JsonKey(name: 'method_display') String methodDisplay, PaymentReadStatusEnum? status,@JsonKey(name: 'status_display') String statusDisplay,@JsonKey(name: 'transaction_ref') String transactionRef, String phone,@JsonKey(name: 'otp_expires_at') String? otpExpiresAt,@JsonKey(name: 'otp_attempts_remaining') int? otpAttemptsRemaining,@JsonKey(name: 'receipt_url') String? receiptUrl,@JsonKey(name: 'paid_at') DateTime? paidAt,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$PaymentReadCopyWithImpl<$Res>
    implements _$PaymentReadCopyWith<$Res> {
  __$PaymentReadCopyWithImpl(this._self, this._then);

  final _PaymentRead _self;
  final $Res Function(_PaymentRead) _then;

/// Create a copy of PaymentRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? amount = null,Object? method = null,Object? methodDisplay = null,Object? status = freezed,Object? statusDisplay = null,Object? transactionRef = null,Object? phone = null,Object? otpExpiresAt = freezed,Object? otpAttemptsRemaining = freezed,Object? receiptUrl = freezed,Object? paidAt = freezed,Object? createdAt = null,}) {
  return _then(_PaymentRead(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as Method80cEnum,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentReadStatusEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,transactionRef: null == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otpExpiresAt: freezed == otpExpiresAt ? _self.otpExpiresAt : otpExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,otpAttemptsRemaining: freezed == otpAttemptsRemaining ? _self.otpAttemptsRemaining : otpAttemptsRemaining // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
