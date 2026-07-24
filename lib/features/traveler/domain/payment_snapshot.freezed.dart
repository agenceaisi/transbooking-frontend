// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentSnapshot {

 int get id; String get ticketNumber;/// Montant, lecture seule.
 String get amount;/// Valeur technique du moyen (`Method80cEnum`).
 String get methodWire; String get methodDisplay; PaymentStatus? get status; String get statusDisplay;/// Téléphone du payeur, **masqué** par le serveur (« ****0001 »).
 String get phone;/// Expiration du code, `null` hors statut `otp_required`.
 String? get otpExpiresAt;/// Tentatives restantes, `null` hors statut `otp_required`.
 int? get otpAttemptsRemaining; String? get receiptUrl; DateTime? get paidAt;
/// Create a copy of PaymentSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentSnapshotCopyWith<PaymentSnapshot> get copyWith => _$PaymentSnapshotCopyWithImpl<PaymentSnapshot>(this as PaymentSnapshot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentSnapshot&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.methodWire, methodWire) || other.methodWire == methodWire)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otpExpiresAt, otpExpiresAt) || other.otpExpiresAt == otpExpiresAt)&&(identical(other.otpAttemptsRemaining, otpAttemptsRemaining) || other.otpAttemptsRemaining == otpAttemptsRemaining)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,amount,methodWire,methodDisplay,status,statusDisplay,phone,otpExpiresAt,otpAttemptsRemaining,receiptUrl,paidAt);

@override
String toString() {
  return 'PaymentSnapshot(id: $id, ticketNumber: $ticketNumber, amount: $amount, methodWire: $methodWire, methodDisplay: $methodDisplay, status: $status, statusDisplay: $statusDisplay, phone: $phone, otpExpiresAt: $otpExpiresAt, otpAttemptsRemaining: $otpAttemptsRemaining, receiptUrl: $receiptUrl, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $PaymentSnapshotCopyWith<$Res>  {
  factory $PaymentSnapshotCopyWith(PaymentSnapshot value, $Res Function(PaymentSnapshot) _then) = _$PaymentSnapshotCopyWithImpl;
@useResult
$Res call({
 int id, String ticketNumber, String amount, String methodWire, String methodDisplay, PaymentStatus? status, String statusDisplay, String phone, String? otpExpiresAt, int? otpAttemptsRemaining, String? receiptUrl, DateTime? paidAt
});




}
/// @nodoc
class _$PaymentSnapshotCopyWithImpl<$Res>
    implements $PaymentSnapshotCopyWith<$Res> {
  _$PaymentSnapshotCopyWithImpl(this._self, this._then);

  final PaymentSnapshot _self;
  final $Res Function(PaymentSnapshot) _then;

/// Create a copy of PaymentSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? amount = null,Object? methodWire = null,Object? methodDisplay = null,Object? status = freezed,Object? statusDisplay = null,Object? phone = null,Object? otpExpiresAt = freezed,Object? otpAttemptsRemaining = freezed,Object? receiptUrl = freezed,Object? paidAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,methodWire: null == methodWire ? _self.methodWire : methodWire // ignore: cast_nullable_to_non_nullable
as String,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otpExpiresAt: freezed == otpExpiresAt ? _self.otpExpiresAt : otpExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,otpAttemptsRemaining: freezed == otpAttemptsRemaining ? _self.otpAttemptsRemaining : otpAttemptsRemaining // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentSnapshot].
extension PaymentSnapshotPatterns on PaymentSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _PaymentSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  String amount,  String methodWire,  String methodDisplay,  PaymentStatus? status,  String statusDisplay,  String phone,  String? otpExpiresAt,  int? otpAttemptsRemaining,  String? receiptUrl,  DateTime? paidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentSnapshot() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.amount,_that.methodWire,_that.methodDisplay,_that.status,_that.statusDisplay,_that.phone,_that.otpExpiresAt,_that.otpAttemptsRemaining,_that.receiptUrl,_that.paidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String ticketNumber,  String amount,  String methodWire,  String methodDisplay,  PaymentStatus? status,  String statusDisplay,  String phone,  String? otpExpiresAt,  int? otpAttemptsRemaining,  String? receiptUrl,  DateTime? paidAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentSnapshot():
return $default(_that.id,_that.ticketNumber,_that.amount,_that.methodWire,_that.methodDisplay,_that.status,_that.statusDisplay,_that.phone,_that.otpExpiresAt,_that.otpAttemptsRemaining,_that.receiptUrl,_that.paidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String ticketNumber,  String amount,  String methodWire,  String methodDisplay,  PaymentStatus? status,  String statusDisplay,  String phone,  String? otpExpiresAt,  int? otpAttemptsRemaining,  String? receiptUrl,  DateTime? paidAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentSnapshot() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.amount,_that.methodWire,_that.methodDisplay,_that.status,_that.statusDisplay,_that.phone,_that.otpExpiresAt,_that.otpAttemptsRemaining,_that.receiptUrl,_that.paidAt);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentSnapshot extends PaymentSnapshot {
  const _PaymentSnapshot({required this.id, required this.ticketNumber, required this.amount, required this.methodWire, required this.methodDisplay, this.status, required this.statusDisplay, required this.phone, this.otpExpiresAt, this.otpAttemptsRemaining, this.receiptUrl, this.paidAt}): super._();
  

@override final  int id;
@override final  String ticketNumber;
/// Montant, lecture seule.
@override final  String amount;
/// Valeur technique du moyen (`Method80cEnum`).
@override final  String methodWire;
@override final  String methodDisplay;
@override final  PaymentStatus? status;
@override final  String statusDisplay;
/// Téléphone du payeur, **masqué** par le serveur (« ****0001 »).
@override final  String phone;
/// Expiration du code, `null` hors statut `otp_required`.
@override final  String? otpExpiresAt;
/// Tentatives restantes, `null` hors statut `otp_required`.
@override final  int? otpAttemptsRemaining;
@override final  String? receiptUrl;
@override final  DateTime? paidAt;

/// Create a copy of PaymentSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentSnapshotCopyWith<_PaymentSnapshot> get copyWith => __$PaymentSnapshotCopyWithImpl<_PaymentSnapshot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentSnapshot&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.methodWire, methodWire) || other.methodWire == methodWire)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otpExpiresAt, otpExpiresAt) || other.otpExpiresAt == otpExpiresAt)&&(identical(other.otpAttemptsRemaining, otpAttemptsRemaining) || other.otpAttemptsRemaining == otpAttemptsRemaining)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,amount,methodWire,methodDisplay,status,statusDisplay,phone,otpExpiresAt,otpAttemptsRemaining,receiptUrl,paidAt);

@override
String toString() {
  return 'PaymentSnapshot(id: $id, ticketNumber: $ticketNumber, amount: $amount, methodWire: $methodWire, methodDisplay: $methodDisplay, status: $status, statusDisplay: $statusDisplay, phone: $phone, otpExpiresAt: $otpExpiresAt, otpAttemptsRemaining: $otpAttemptsRemaining, receiptUrl: $receiptUrl, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentSnapshotCopyWith<$Res> implements $PaymentSnapshotCopyWith<$Res> {
  factory _$PaymentSnapshotCopyWith(_PaymentSnapshot value, $Res Function(_PaymentSnapshot) _then) = __$PaymentSnapshotCopyWithImpl;
@override @useResult
$Res call({
 int id, String ticketNumber, String amount, String methodWire, String methodDisplay, PaymentStatus? status, String statusDisplay, String phone, String? otpExpiresAt, int? otpAttemptsRemaining, String? receiptUrl, DateTime? paidAt
});




}
/// @nodoc
class __$PaymentSnapshotCopyWithImpl<$Res>
    implements _$PaymentSnapshotCopyWith<$Res> {
  __$PaymentSnapshotCopyWithImpl(this._self, this._then);

  final _PaymentSnapshot _self;
  final $Res Function(_PaymentSnapshot) _then;

/// Create a copy of PaymentSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? amount = null,Object? methodWire = null,Object? methodDisplay = null,Object? status = freezed,Object? statusDisplay = null,Object? phone = null,Object? otpExpiresAt = freezed,Object? otpAttemptsRemaining = freezed,Object? receiptUrl = freezed,Object? paidAt = freezed,}) {
  return _then(_PaymentSnapshot(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,methodWire: null == methodWire ? _self.methodWire : methodWire // ignore: cast_nullable_to_non_nullable
as String,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otpExpiresAt: freezed == otpExpiresAt ? _self.otpExpiresAt : otpExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,otpAttemptsRemaining: freezed == otpAttemptsRemaining ? _self.otpAttemptsRemaining : otpAttemptsRemaining // ignore: cast_nullable_to_non_nullable
as int?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
