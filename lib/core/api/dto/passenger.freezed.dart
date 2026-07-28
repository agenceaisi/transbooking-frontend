// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Passenger {

 int get id;@JsonKey(name: 'full_name') String get fullName; String get phone;
/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerCopyWith<Passenger> get copyWith => _$PassengerCopyWithImpl<Passenger>(this as Passenger, _$identity);

  /// Serializes this Passenger to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Passenger&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,phone);

@override
String toString() {
  return 'Passenger(id: $id, fullName: $fullName, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PassengerCopyWith<$Res>  {
  factory $PassengerCopyWith(Passenger value, $Res Function(Passenger) _then) = _$PassengerCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'full_name') String fullName, String phone
});




}
/// @nodoc
class _$PassengerCopyWithImpl<$Res>
    implements $PassengerCopyWith<$Res> {
  _$PassengerCopyWithImpl(this._self, this._then);

  final Passenger _self;
  final $Res Function(Passenger) _then;

/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? phone = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Passenger].
extension PassengerPatterns on Passenger {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Passenger value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Passenger() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Passenger value)  $default,){
final _that = this;
switch (_that) {
case _Passenger():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Passenger value)?  $default,){
final _that = this;
switch (_that) {
case _Passenger() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'full_name')  String fullName,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Passenger() when $default != null:
return $default(_that.id,_that.fullName,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'full_name')  String fullName,  String phone)  $default,) {final _that = this;
switch (_that) {
case _Passenger():
return $default(_that.id,_that.fullName,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'full_name')  String fullName,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _Passenger() when $default != null:
return $default(_that.id,_that.fullName,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Passenger implements Passenger {
  const _Passenger({required this.id, @JsonKey(name: 'full_name') required this.fullName, required this.phone});
  factory _Passenger.fromJson(Map<String, dynamic> json) => _$PassengerFromJson(json);

@override final  int id;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String phone;

/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerCopyWith<_Passenger> get copyWith => __$PassengerCopyWithImpl<_Passenger>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Passenger&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,phone);

@override
String toString() {
  return 'Passenger(id: $id, fullName: $fullName, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PassengerCopyWith<$Res> implements $PassengerCopyWith<$Res> {
  factory _$PassengerCopyWith(_Passenger value, $Res Function(_Passenger) _then) = __$PassengerCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'full_name') String fullName, String phone
});




}
/// @nodoc
class __$PassengerCopyWithImpl<$Res>
    implements _$PassengerCopyWith<$Res> {
  __$PassengerCopyWithImpl(this._self, this._then);

  final _Passenger _self;
  final $Res Function(_Passenger) _then;

/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? phone = null,}) {
  return _then(_Passenger(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
