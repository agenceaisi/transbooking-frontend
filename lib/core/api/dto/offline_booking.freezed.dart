// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfflineBooking {

@JsonKey(name: 'ticket_number') String get ticketNumber;@JsonKey(name: 'trip_id') int get tripId;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get phone;@JsonKey(name: 'seat_number') String? get seatNumber; String? get amount;@JsonKey(name: 'payment_method') String? get paymentMethod;@JsonKey(name: 'transaction_ref') String? get transactionRef;@JsonKey(name: 'offline_created_at') DateTime get offlineCreatedAt;
/// Create a copy of OfflineBooking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineBookingCopyWith<OfflineBooking> get copyWith => _$OfflineBookingCopyWithImpl<OfflineBooking>(this as OfflineBooking, _$identity);

  /// Serializes this OfflineBooking to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineBooking&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,tripId,firstName,lastName,phone,seatNumber,amount,paymentMethod,transactionRef,offlineCreatedAt);

@override
String toString() {
  return 'OfflineBooking(ticketNumber: $ticketNumber, tripId: $tripId, firstName: $firstName, lastName: $lastName, phone: $phone, seatNumber: $seatNumber, amount: $amount, paymentMethod: $paymentMethod, transactionRef: $transactionRef, offlineCreatedAt: $offlineCreatedAt)';
}


}

/// @nodoc
abstract mixin class $OfflineBookingCopyWith<$Res>  {
  factory $OfflineBookingCopyWith(OfflineBooking value, $Res Function(OfflineBooking) _then) = _$OfflineBookingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'trip_id') int tripId,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String phone,@JsonKey(name: 'seat_number') String? seatNumber, String? amount,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'transaction_ref') String? transactionRef,@JsonKey(name: 'offline_created_at') DateTime offlineCreatedAt
});




}
/// @nodoc
class _$OfflineBookingCopyWithImpl<$Res>
    implements $OfflineBookingCopyWith<$Res> {
  _$OfflineBookingCopyWithImpl(this._self, this._then);

  final OfflineBooking _self;
  final $Res Function(OfflineBooking) _then;

/// Create a copy of OfflineBooking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? tripId = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? seatNumber = freezed,Object? amount = freezed,Object? paymentMethod = freezed,Object? transactionRef = freezed,Object? offlineCreatedAt = null,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,offlineCreatedAt: null == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OfflineBooking].
extension OfflineBookingPatterns on OfflineBooking {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineBooking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineBooking() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineBooking value)  $default,){
final _that = this;
switch (_that) {
case _OfflineBooking():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineBooking value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineBooking() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'trip_id')  int tripId, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String phone, @JsonKey(name: 'seat_number')  String? seatNumber,  String? amount, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'transaction_ref')  String? transactionRef, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineBooking() when $default != null:
return $default(_that.ticketNumber,_that.tripId,_that.firstName,_that.lastName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.transactionRef,_that.offlineCreatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'trip_id')  int tripId, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String phone, @JsonKey(name: 'seat_number')  String? seatNumber,  String? amount, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'transaction_ref')  String? transactionRef, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)  $default,) {final _that = this;
switch (_that) {
case _OfflineBooking():
return $default(_that.ticketNumber,_that.tripId,_that.firstName,_that.lastName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.transactionRef,_that.offlineCreatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'trip_id')  int tripId, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String phone, @JsonKey(name: 'seat_number')  String? seatNumber,  String? amount, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'transaction_ref')  String? transactionRef, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OfflineBooking() when $default != null:
return $default(_that.ticketNumber,_that.tripId,_that.firstName,_that.lastName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.transactionRef,_that.offlineCreatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineBooking implements OfflineBooking {
  const _OfflineBooking({@JsonKey(name: 'ticket_number') required this.ticketNumber, @JsonKey(name: 'trip_id') required this.tripId, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.phone, @JsonKey(name: 'seat_number') this.seatNumber, this.amount, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'transaction_ref') this.transactionRef, @JsonKey(name: 'offline_created_at') required this.offlineCreatedAt});
  factory _OfflineBooking.fromJson(Map<String, dynamic> json) => _$OfflineBookingFromJson(json);

@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override@JsonKey(name: 'trip_id') final  int tripId;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String phone;
@override@JsonKey(name: 'seat_number') final  String? seatNumber;
@override final  String? amount;
@override@JsonKey(name: 'payment_method') final  String? paymentMethod;
@override@JsonKey(name: 'transaction_ref') final  String? transactionRef;
@override@JsonKey(name: 'offline_created_at') final  DateTime offlineCreatedAt;

/// Create a copy of OfflineBooking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineBookingCopyWith<_OfflineBooking> get copyWith => __$OfflineBookingCopyWithImpl<_OfflineBooking>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineBookingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineBooking&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,tripId,firstName,lastName,phone,seatNumber,amount,paymentMethod,transactionRef,offlineCreatedAt);

@override
String toString() {
  return 'OfflineBooking(ticketNumber: $ticketNumber, tripId: $tripId, firstName: $firstName, lastName: $lastName, phone: $phone, seatNumber: $seatNumber, amount: $amount, paymentMethod: $paymentMethod, transactionRef: $transactionRef, offlineCreatedAt: $offlineCreatedAt)';
}


}

/// @nodoc
abstract mixin class _$OfflineBookingCopyWith<$Res> implements $OfflineBookingCopyWith<$Res> {
  factory _$OfflineBookingCopyWith(_OfflineBooking value, $Res Function(_OfflineBooking) _then) = __$OfflineBookingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'trip_id') int tripId,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String phone,@JsonKey(name: 'seat_number') String? seatNumber, String? amount,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'transaction_ref') String? transactionRef,@JsonKey(name: 'offline_created_at') DateTime offlineCreatedAt
});




}
/// @nodoc
class __$OfflineBookingCopyWithImpl<$Res>
    implements _$OfflineBookingCopyWith<$Res> {
  __$OfflineBookingCopyWithImpl(this._self, this._then);

  final _OfflineBooking _self;
  final $Res Function(_OfflineBooking) _then;

/// Create a copy of OfflineBooking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? tripId = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? seatNumber = freezed,Object? amount = freezed,Object? paymentMethod = freezed,Object? transactionRef = freezed,Object? offlineCreatedAt = null,}) {
  return _then(_OfflineBooking(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,offlineCreatedAt: null == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
