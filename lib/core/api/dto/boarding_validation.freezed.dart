// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boarding_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BoardingValidation {

 int get id;@JsonKey(name: 'ticket_number') String get ticketNumber;@JsonKey(name: 'passenger_name') String get passengerName; BoardingValidationMethodEnum? get method;@JsonKey(name: 'method_display') String get methodDisplay;@JsonKey(name: 'boarded_at') DateTime get boardedAt;@JsonKey(name: 'is_offline') bool? get isOffline;
/// Create a copy of BoardingValidation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardingValidationCopyWith<BoardingValidation> get copyWith => _$BoardingValidationCopyWithImpl<BoardingValidation>(this as BoardingValidation, _$identity);

  /// Serializes this BoardingValidation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardingValidation&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.boardedAt, boardedAt) || other.boardedAt == boardedAt)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,passengerName,method,methodDisplay,boardedAt,isOffline);

@override
String toString() {
  return 'BoardingValidation(id: $id, ticketNumber: $ticketNumber, passengerName: $passengerName, method: $method, methodDisplay: $methodDisplay, boardedAt: $boardedAt, isOffline: $isOffline)';
}


}

/// @nodoc
abstract mixin class $BoardingValidationCopyWith<$Res>  {
  factory $BoardingValidationCopyWith(BoardingValidation value, $Res Function(BoardingValidation) _then) = _$BoardingValidationCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'passenger_name') String passengerName, BoardingValidationMethodEnum? method,@JsonKey(name: 'method_display') String methodDisplay,@JsonKey(name: 'boarded_at') DateTime boardedAt,@JsonKey(name: 'is_offline') bool? isOffline
});




}
/// @nodoc
class _$BoardingValidationCopyWithImpl<$Res>
    implements $BoardingValidationCopyWith<$Res> {
  _$BoardingValidationCopyWithImpl(this._self, this._then);

  final BoardingValidation _self;
  final $Res Function(BoardingValidation) _then;

/// Create a copy of BoardingValidation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? passengerName = null,Object? method = freezed,Object? methodDisplay = null,Object? boardedAt = null,Object? isOffline = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as BoardingValidationMethodEnum?,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,boardedAt: null == boardedAt ? _self.boardedAt : boardedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BoardingValidation].
extension BoardingValidationPatterns on BoardingValidation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoardingValidation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoardingValidation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoardingValidation value)  $default,){
final _that = this;
switch (_that) {
case _BoardingValidation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoardingValidation value)?  $default,){
final _that = this;
switch (_that) {
case _BoardingValidation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'passenger_name')  String passengerName,  BoardingValidationMethodEnum? method, @JsonKey(name: 'method_display')  String methodDisplay, @JsonKey(name: 'boarded_at')  DateTime boardedAt, @JsonKey(name: 'is_offline')  bool? isOffline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoardingValidation() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.passengerName,_that.method,_that.methodDisplay,_that.boardedAt,_that.isOffline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'passenger_name')  String passengerName,  BoardingValidationMethodEnum? method, @JsonKey(name: 'method_display')  String methodDisplay, @JsonKey(name: 'boarded_at')  DateTime boardedAt, @JsonKey(name: 'is_offline')  bool? isOffline)  $default,) {final _that = this;
switch (_that) {
case _BoardingValidation():
return $default(_that.id,_that.ticketNumber,_that.passengerName,_that.method,_that.methodDisplay,_that.boardedAt,_that.isOffline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'passenger_name')  String passengerName,  BoardingValidationMethodEnum? method, @JsonKey(name: 'method_display')  String methodDisplay, @JsonKey(name: 'boarded_at')  DateTime boardedAt, @JsonKey(name: 'is_offline')  bool? isOffline)?  $default,) {final _that = this;
switch (_that) {
case _BoardingValidation() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.passengerName,_that.method,_that.methodDisplay,_that.boardedAt,_that.isOffline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BoardingValidation implements BoardingValidation {
  const _BoardingValidation({required this.id, @JsonKey(name: 'ticket_number') required this.ticketNumber, @JsonKey(name: 'passenger_name') required this.passengerName, this.method, @JsonKey(name: 'method_display') required this.methodDisplay, @JsonKey(name: 'boarded_at') required this.boardedAt, @JsonKey(name: 'is_offline') this.isOffline});
  factory _BoardingValidation.fromJson(Map<String, dynamic> json) => _$BoardingValidationFromJson(json);

@override final  int id;
@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override@JsonKey(name: 'passenger_name') final  String passengerName;
@override final  BoardingValidationMethodEnum? method;
@override@JsonKey(name: 'method_display') final  String methodDisplay;
@override@JsonKey(name: 'boarded_at') final  DateTime boardedAt;
@override@JsonKey(name: 'is_offline') final  bool? isOffline;

/// Create a copy of BoardingValidation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoardingValidationCopyWith<_BoardingValidation> get copyWith => __$BoardingValidationCopyWithImpl<_BoardingValidation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoardingValidationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoardingValidation&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.method, method) || other.method == method)&&(identical(other.methodDisplay, methodDisplay) || other.methodDisplay == methodDisplay)&&(identical(other.boardedAt, boardedAt) || other.boardedAt == boardedAt)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,passengerName,method,methodDisplay,boardedAt,isOffline);

@override
String toString() {
  return 'BoardingValidation(id: $id, ticketNumber: $ticketNumber, passengerName: $passengerName, method: $method, methodDisplay: $methodDisplay, boardedAt: $boardedAt, isOffline: $isOffline)';
}


}

/// @nodoc
abstract mixin class _$BoardingValidationCopyWith<$Res> implements $BoardingValidationCopyWith<$Res> {
  factory _$BoardingValidationCopyWith(_BoardingValidation value, $Res Function(_BoardingValidation) _then) = __$BoardingValidationCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'passenger_name') String passengerName, BoardingValidationMethodEnum? method,@JsonKey(name: 'method_display') String methodDisplay,@JsonKey(name: 'boarded_at') DateTime boardedAt,@JsonKey(name: 'is_offline') bool? isOffline
});




}
/// @nodoc
class __$BoardingValidationCopyWithImpl<$Res>
    implements _$BoardingValidationCopyWith<$Res> {
  __$BoardingValidationCopyWithImpl(this._self, this._then);

  final _BoardingValidation _self;
  final $Res Function(_BoardingValidation) _then;

/// Create a copy of BoardingValidation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? passengerName = null,Object? method = freezed,Object? methodDisplay = null,Object? boardedAt = null,Object? isOffline = freezed,}) {
  return _then(_BoardingValidation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as BoardingValidationMethodEnum?,methodDisplay: null == methodDisplay ? _self.methodDisplay : methodDisplay // ignore: cast_nullable_to_non_nullable
as String,boardedAt: null == boardedAt ? _self.boardedAt : boardedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isOffline: freezed == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
