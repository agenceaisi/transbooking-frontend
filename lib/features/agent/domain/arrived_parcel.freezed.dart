// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrived_parcel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArrivedParcel {

 int get id; String get trackingNumber; String get recipientName; String get recipientPhone; String get destinationCity;/// Vrai si un SMS a déjà été envoyé pour ce colis — empêche le double
/// envoi (CLAUDE.md §6, guide §6.9).
 bool get smsAlreadySent;
/// Create a copy of ArrivedParcel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArrivedParcelCopyWith<ArrivedParcel> get copyWith => _$ArrivedParcelCopyWithImpl<ArrivedParcel>(this as ArrivedParcel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArrivedParcel&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.smsAlreadySent, smsAlreadySent) || other.smsAlreadySent == smsAlreadySent));
}


@override
int get hashCode => Object.hash(runtimeType,id,trackingNumber,recipientName,recipientPhone,destinationCity,smsAlreadySent);

@override
String toString() {
  return 'ArrivedParcel(id: $id, trackingNumber: $trackingNumber, recipientName: $recipientName, recipientPhone: $recipientPhone, destinationCity: $destinationCity, smsAlreadySent: $smsAlreadySent)';
}


}

/// @nodoc
abstract mixin class $ArrivedParcelCopyWith<$Res>  {
  factory $ArrivedParcelCopyWith(ArrivedParcel value, $Res Function(ArrivedParcel) _then) = _$ArrivedParcelCopyWithImpl;
@useResult
$Res call({
 int id, String trackingNumber, String recipientName, String recipientPhone, String destinationCity, bool smsAlreadySent
});




}
/// @nodoc
class _$ArrivedParcelCopyWithImpl<$Res>
    implements $ArrivedParcelCopyWith<$Res> {
  _$ArrivedParcelCopyWithImpl(this._self, this._then);

  final ArrivedParcel _self;
  final $Res Function(ArrivedParcel) _then;

/// Create a copy of ArrivedParcel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? trackingNumber = null,Object? recipientName = null,Object? recipientPhone = null,Object? destinationCity = null,Object? smsAlreadySent = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,smsAlreadySent: null == smsAlreadySent ? _self.smsAlreadySent : smsAlreadySent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArrivedParcel].
extension ArrivedParcelPatterns on ArrivedParcel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArrivedParcel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArrivedParcel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArrivedParcel value)  $default,){
final _that = this;
switch (_that) {
case _ArrivedParcel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArrivedParcel value)?  $default,){
final _that = this;
switch (_that) {
case _ArrivedParcel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String trackingNumber,  String recipientName,  String recipientPhone,  String destinationCity,  bool smsAlreadySent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArrivedParcel() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.recipientName,_that.recipientPhone,_that.destinationCity,_that.smsAlreadySent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String trackingNumber,  String recipientName,  String recipientPhone,  String destinationCity,  bool smsAlreadySent)  $default,) {final _that = this;
switch (_that) {
case _ArrivedParcel():
return $default(_that.id,_that.trackingNumber,_that.recipientName,_that.recipientPhone,_that.destinationCity,_that.smsAlreadySent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String trackingNumber,  String recipientName,  String recipientPhone,  String destinationCity,  bool smsAlreadySent)?  $default,) {final _that = this;
switch (_that) {
case _ArrivedParcel() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.recipientName,_that.recipientPhone,_that.destinationCity,_that.smsAlreadySent);case _:
  return null;

}
}

}

/// @nodoc


class _ArrivedParcel implements ArrivedParcel {
  const _ArrivedParcel({required this.id, required this.trackingNumber, required this.recipientName, required this.recipientPhone, required this.destinationCity, required this.smsAlreadySent});
  

@override final  int id;
@override final  String trackingNumber;
@override final  String recipientName;
@override final  String recipientPhone;
@override final  String destinationCity;
/// Vrai si un SMS a déjà été envoyé pour ce colis — empêche le double
/// envoi (CLAUDE.md §6, guide §6.9).
@override final  bool smsAlreadySent;

/// Create a copy of ArrivedParcel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArrivedParcelCopyWith<_ArrivedParcel> get copyWith => __$ArrivedParcelCopyWithImpl<_ArrivedParcel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArrivedParcel&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.destinationCity, destinationCity) || other.destinationCity == destinationCity)&&(identical(other.smsAlreadySent, smsAlreadySent) || other.smsAlreadySent == smsAlreadySent));
}


@override
int get hashCode => Object.hash(runtimeType,id,trackingNumber,recipientName,recipientPhone,destinationCity,smsAlreadySent);

@override
String toString() {
  return 'ArrivedParcel(id: $id, trackingNumber: $trackingNumber, recipientName: $recipientName, recipientPhone: $recipientPhone, destinationCity: $destinationCity, smsAlreadySent: $smsAlreadySent)';
}


}

/// @nodoc
abstract mixin class _$ArrivedParcelCopyWith<$Res> implements $ArrivedParcelCopyWith<$Res> {
  factory _$ArrivedParcelCopyWith(_ArrivedParcel value, $Res Function(_ArrivedParcel) _then) = __$ArrivedParcelCopyWithImpl;
@override @useResult
$Res call({
 int id, String trackingNumber, String recipientName, String recipientPhone, String destinationCity, bool smsAlreadySent
});




}
/// @nodoc
class __$ArrivedParcelCopyWithImpl<$Res>
    implements _$ArrivedParcelCopyWith<$Res> {
  __$ArrivedParcelCopyWithImpl(this._self, this._then);

  final _ArrivedParcel _self;
  final $Res Function(_ArrivedParcel) _then;

/// Create a copy of ArrivedParcel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? trackingNumber = null,Object? recipientName = null,Object? recipientPhone = null,Object? destinationCity = null,Object? smsAlreadySent = null,}) {
  return _then(_ArrivedParcel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,recipientPhone: null == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String,destinationCity: null == destinationCity ? _self.destinationCity : destinationCity // ignore: cast_nullable_to_non_nullable
as String,smsAlreadySent: null == smsAlreadySent ? _self.smsAlreadySent : smsAlreadySent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
