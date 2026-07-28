// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionInvoice {

 int get id; String get reference; int get subscription;@JsonKey(name: 'plan_name') String get planName; String get amount;@JsonKey(name: 'paid_at') DateTime? get paidAt;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of SubscriptionInvoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionInvoiceCopyWith<SubscriptionInvoice> get copyWith => _$SubscriptionInvoiceCopyWithImpl<SubscriptionInvoice>(this as SubscriptionInvoice, _$identity);

  /// Serializes this SubscriptionInvoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionInvoice&&(identical(other.id, id) || other.id == id)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reference,subscription,planName,amount,paidAt,createdAt);

@override
String toString() {
  return 'SubscriptionInvoice(id: $id, reference: $reference, subscription: $subscription, planName: $planName, amount: $amount, paidAt: $paidAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SubscriptionInvoiceCopyWith<$Res>  {
  factory $SubscriptionInvoiceCopyWith(SubscriptionInvoice value, $Res Function(SubscriptionInvoice) _then) = _$SubscriptionInvoiceCopyWithImpl;
@useResult
$Res call({
 int id, String reference, int subscription,@JsonKey(name: 'plan_name') String planName, String amount,@JsonKey(name: 'paid_at') DateTime? paidAt,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$SubscriptionInvoiceCopyWithImpl<$Res>
    implements $SubscriptionInvoiceCopyWith<$Res> {
  _$SubscriptionInvoiceCopyWithImpl(this._self, this._then);

  final SubscriptionInvoice _self;
  final $Res Function(SubscriptionInvoice) _then;

/// Create a copy of SubscriptionInvoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reference = null,Object? subscription = null,Object? planName = null,Object? amount = null,Object? paidAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,subscription: null == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as int,planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionInvoice].
extension SubscriptionInvoicePatterns on SubscriptionInvoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionInvoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionInvoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionInvoice value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionInvoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionInvoice value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionInvoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String reference,  int subscription, @JsonKey(name: 'plan_name')  String planName,  String amount, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionInvoice() when $default != null:
return $default(_that.id,_that.reference,_that.subscription,_that.planName,_that.amount,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String reference,  int subscription, @JsonKey(name: 'plan_name')  String planName,  String amount, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionInvoice():
return $default(_that.id,_that.reference,_that.subscription,_that.planName,_that.amount,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String reference,  int subscription, @JsonKey(name: 'plan_name')  String planName,  String amount, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionInvoice() when $default != null:
return $default(_that.id,_that.reference,_that.subscription,_that.planName,_that.amount,_that.paidAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionInvoice implements SubscriptionInvoice {
  const _SubscriptionInvoice({required this.id, required this.reference, required this.subscription, @JsonKey(name: 'plan_name') required this.planName, required this.amount, @JsonKey(name: 'paid_at') this.paidAt, @JsonKey(name: 'created_at') required this.createdAt});
  factory _SubscriptionInvoice.fromJson(Map<String, dynamic> json) => _$SubscriptionInvoiceFromJson(json);

@override final  int id;
@override final  String reference;
@override final  int subscription;
@override@JsonKey(name: 'plan_name') final  String planName;
@override final  String amount;
@override@JsonKey(name: 'paid_at') final  DateTime? paidAt;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of SubscriptionInvoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionInvoiceCopyWith<_SubscriptionInvoice> get copyWith => __$SubscriptionInvoiceCopyWithImpl<_SubscriptionInvoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionInvoiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionInvoice&&(identical(other.id, id) || other.id == id)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reference,subscription,planName,amount,paidAt,createdAt);

@override
String toString() {
  return 'SubscriptionInvoice(id: $id, reference: $reference, subscription: $subscription, planName: $planName, amount: $amount, paidAt: $paidAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionInvoiceCopyWith<$Res> implements $SubscriptionInvoiceCopyWith<$Res> {
  factory _$SubscriptionInvoiceCopyWith(_SubscriptionInvoice value, $Res Function(_SubscriptionInvoice) _then) = __$SubscriptionInvoiceCopyWithImpl;
@override @useResult
$Res call({
 int id, String reference, int subscription,@JsonKey(name: 'plan_name') String planName, String amount,@JsonKey(name: 'paid_at') DateTime? paidAt,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$SubscriptionInvoiceCopyWithImpl<$Res>
    implements _$SubscriptionInvoiceCopyWith<$Res> {
  __$SubscriptionInvoiceCopyWithImpl(this._self, this._then);

  final _SubscriptionInvoice _self;
  final $Res Function(_SubscriptionInvoice) _then;

/// Create a copy of SubscriptionInvoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reference = null,Object? subscription = null,Object? planName = null,Object? amount = null,Object? paidAt = freezed,Object? createdAt = null,}) {
  return _then(_SubscriptionInvoice(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,subscription: null == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as int,planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
