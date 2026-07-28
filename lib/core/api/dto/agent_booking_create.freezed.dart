// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_booking_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentBookingCreate {

 int get trip;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get phone;@JsonKey(name: 'seat_number') String? get seatNumber; String? get amount;@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'transaction_ref') String? get transactionRef;@JsonKey(name: 'ticket_number') String? get ticketNumber;@JsonKey(name: 'is_offline') bool? get isOffline;@JsonKey(name: 'offline_created_at') DateTime? get offlineCreatedAt; List<BaggageWrite>? get baggage;
/// Create a copy of AgentBookingCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentBookingCreateCopyWith<AgentBookingCreate> get copyWith => _$AgentBookingCreateCopyWithImpl<AgentBookingCreate>(this as AgentBookingCreate, _$identity);

  /// Serializes this AgentBookingCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentBookingCreate&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt)&&const DeepCollectionEquality().equals(other.baggage, baggage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,firstName,lastName,phone,seatNumber,amount,paymentMethod,transactionRef,ticketNumber,isOffline,offlineCreatedAt,const DeepCollectionEquality().hash(baggage));

@override
String toString() {
  return 'AgentBookingCreate(trip: $trip, firstName: $firstName, lastName: $lastName, phone: $phone, seatNumber: $seatNumber, amount: $amount, paymentMethod: $paymentMethod, transactionRef: $transactionRef, ticketNumber: $ticketNumber, isOffline: $isOffline, offlineCreatedAt: $offlineCreatedAt, baggage: $baggage)';
}


}

/// @nodoc
abstract mixin class $AgentBookingCreateCopyWith<$Res>  {
  factory $AgentBookingCreateCopyWith(AgentBookingCreate value, $Res Function(AgentBookingCreate) _then) = _$AgentBookingCreateCopyWithImpl;
@useResult
$Res call({
 int trip,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String phone,@JsonKey(name: 'seat_number') String? seatNumber, String? amount,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'transaction_ref') String? transactionRef,@JsonKey(name: 'ticket_number') String? ticketNumber,@JsonKey(name: 'is_offline') bool? isOffline,@JsonKey(name: 'offline_created_at') DateTime? offlineCreatedAt, List<BaggageWrite>? baggage
});




}
/// @nodoc
class _$AgentBookingCreateCopyWithImpl<$Res>
    implements $AgentBookingCreateCopyWith<$Res> {
  _$AgentBookingCreateCopyWithImpl(this._self, this._then);

  final AgentBookingCreate _self;
  final $Res Function(AgentBookingCreate) _then;

/// Create a copy of AgentBookingCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trip = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? seatNumber = freezed,Object? amount = freezed,Object? paymentMethod = null,Object? transactionRef = freezed,Object? ticketNumber = freezed,Object? isOffline = freezed,Object? offlineCreatedAt = freezed,Object? baggage = freezed,}) {
  return _then(_self.copyWith(
trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,ticketNumber: freezed == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String?,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,offlineCreatedAt: freezed == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,baggage: freezed == baggage ? _self.baggage : baggage // ignore: cast_nullable_to_non_nullable
as List<BaggageWrite>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AgentBookingCreate].
extension AgentBookingCreatePatterns on AgentBookingCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AgentBookingCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AgentBookingCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AgentBookingCreate value)  $default,){
final _that = this;
switch (_that) {
case _AgentBookingCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AgentBookingCreate value)?  $default,){
final _that = this;
switch (_that) {
case _AgentBookingCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int trip, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String phone, @JsonKey(name: 'seat_number')  String? seatNumber,  String? amount, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'transaction_ref')  String? transactionRef, @JsonKey(name: 'ticket_number')  String? ticketNumber, @JsonKey(name: 'is_offline')  bool? isOffline, @JsonKey(name: 'offline_created_at')  DateTime? offlineCreatedAt,  List<BaggageWrite>? baggage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AgentBookingCreate() when $default != null:
return $default(_that.trip,_that.firstName,_that.lastName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.transactionRef,_that.ticketNumber,_that.isOffline,_that.offlineCreatedAt,_that.baggage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int trip, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String phone, @JsonKey(name: 'seat_number')  String? seatNumber,  String? amount, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'transaction_ref')  String? transactionRef, @JsonKey(name: 'ticket_number')  String? ticketNumber, @JsonKey(name: 'is_offline')  bool? isOffline, @JsonKey(name: 'offline_created_at')  DateTime? offlineCreatedAt,  List<BaggageWrite>? baggage)  $default,) {final _that = this;
switch (_that) {
case _AgentBookingCreate():
return $default(_that.trip,_that.firstName,_that.lastName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.transactionRef,_that.ticketNumber,_that.isOffline,_that.offlineCreatedAt,_that.baggage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int trip, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String phone, @JsonKey(name: 'seat_number')  String? seatNumber,  String? amount, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'transaction_ref')  String? transactionRef, @JsonKey(name: 'ticket_number')  String? ticketNumber, @JsonKey(name: 'is_offline')  bool? isOffline, @JsonKey(name: 'offline_created_at')  DateTime? offlineCreatedAt,  List<BaggageWrite>? baggage)?  $default,) {final _that = this;
switch (_that) {
case _AgentBookingCreate() when $default != null:
return $default(_that.trip,_that.firstName,_that.lastName,_that.phone,_that.seatNumber,_that.amount,_that.paymentMethod,_that.transactionRef,_that.ticketNumber,_that.isOffline,_that.offlineCreatedAt,_that.baggage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AgentBookingCreate implements AgentBookingCreate {
  const _AgentBookingCreate({required this.trip, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.phone, @JsonKey(name: 'seat_number') this.seatNumber, this.amount, @JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'transaction_ref') this.transactionRef, @JsonKey(name: 'ticket_number') this.ticketNumber, @JsonKey(name: 'is_offline') this.isOffline, @JsonKey(name: 'offline_created_at') this.offlineCreatedAt, final  List<BaggageWrite>? baggage}): _baggage = baggage;
  factory _AgentBookingCreate.fromJson(Map<String, dynamic> json) => _$AgentBookingCreateFromJson(json);

@override final  int trip;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String phone;
@override@JsonKey(name: 'seat_number') final  String? seatNumber;
@override final  String? amount;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'transaction_ref') final  String? transactionRef;
@override@JsonKey(name: 'ticket_number') final  String? ticketNumber;
@override@JsonKey(name: 'is_offline') final  bool? isOffline;
@override@JsonKey(name: 'offline_created_at') final  DateTime? offlineCreatedAt;
 final  List<BaggageWrite>? _baggage;
@override List<BaggageWrite>? get baggage {
  final value = _baggage;
  if (value == null) return null;
  if (_baggage is EqualUnmodifiableListView) return _baggage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AgentBookingCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentBookingCreateCopyWith<_AgentBookingCreate> get copyWith => __$AgentBookingCreateCopyWithImpl<_AgentBookingCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentBookingCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentBookingCreate&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.transactionRef, transactionRef) || other.transactionRef == transactionRef)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt)&&const DeepCollectionEquality().equals(other._baggage, _baggage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,firstName,lastName,phone,seatNumber,amount,paymentMethod,transactionRef,ticketNumber,isOffline,offlineCreatedAt,const DeepCollectionEquality().hash(_baggage));

@override
String toString() {
  return 'AgentBookingCreate(trip: $trip, firstName: $firstName, lastName: $lastName, phone: $phone, seatNumber: $seatNumber, amount: $amount, paymentMethod: $paymentMethod, transactionRef: $transactionRef, ticketNumber: $ticketNumber, isOffline: $isOffline, offlineCreatedAt: $offlineCreatedAt, baggage: $baggage)';
}


}

/// @nodoc
abstract mixin class _$AgentBookingCreateCopyWith<$Res> implements $AgentBookingCreateCopyWith<$Res> {
  factory _$AgentBookingCreateCopyWith(_AgentBookingCreate value, $Res Function(_AgentBookingCreate) _then) = __$AgentBookingCreateCopyWithImpl;
@override @useResult
$Res call({
 int trip,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String phone,@JsonKey(name: 'seat_number') String? seatNumber, String? amount,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'transaction_ref') String? transactionRef,@JsonKey(name: 'ticket_number') String? ticketNumber,@JsonKey(name: 'is_offline') bool? isOffline,@JsonKey(name: 'offline_created_at') DateTime? offlineCreatedAt, List<BaggageWrite>? baggage
});




}
/// @nodoc
class __$AgentBookingCreateCopyWithImpl<$Res>
    implements _$AgentBookingCreateCopyWith<$Res> {
  __$AgentBookingCreateCopyWithImpl(this._self, this._then);

  final _AgentBookingCreate _self;
  final $Res Function(_AgentBookingCreate) _then;

/// Create a copy of AgentBookingCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trip = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? seatNumber = freezed,Object? amount = freezed,Object? paymentMethod = null,Object? transactionRef = freezed,Object? ticketNumber = freezed,Object? isOffline = freezed,Object? offlineCreatedAt = freezed,Object? baggage = freezed,}) {
  return _then(_AgentBookingCreate(
trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,transactionRef: freezed == transactionRef ? _self.transactionRef : transactionRef // ignore: cast_nullable_to_non_nullable
as String?,ticketNumber: freezed == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String?,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,offlineCreatedAt: freezed == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,baggage: freezed == baggage ? _self._baggage : baggage // ignore: cast_nullable_to_non_nullable
as List<BaggageWrite>?,
  ));
}


}

// dart format on
