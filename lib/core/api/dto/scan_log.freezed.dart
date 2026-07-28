// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScanLog {

 int get id;@JsonKey(name: 'ticket_number') String get ticketNumber; ResultEnum get result;@JsonKey(name: 'result_display') String get resultDisplay;@JsonKey(name: 'passenger_name') String? get passengerName;@JsonKey(name: 'seat_number') String? get seatNumber;@JsonKey(name: 'scanned_at') DateTime get scannedAt;
/// Create a copy of ScanLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScanLogCopyWith<ScanLog> get copyWith => _$ScanLogCopyWithImpl<ScanLog>(this as ScanLog, _$identity);

  /// Serializes this ScanLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanLog&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.result, result) || other.result == result)&&(identical(other.resultDisplay, resultDisplay) || other.resultDisplay == resultDisplay)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,result,resultDisplay,passengerName,seatNumber,scannedAt);

@override
String toString() {
  return 'ScanLog(id: $id, ticketNumber: $ticketNumber, result: $result, resultDisplay: $resultDisplay, passengerName: $passengerName, seatNumber: $seatNumber, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class $ScanLogCopyWith<$Res>  {
  factory $ScanLogCopyWith(ScanLog value, $Res Function(ScanLog) _then) = _$ScanLogCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber, ResultEnum result,@JsonKey(name: 'result_display') String resultDisplay,@JsonKey(name: 'passenger_name') String? passengerName,@JsonKey(name: 'seat_number') String? seatNumber,@JsonKey(name: 'scanned_at') DateTime scannedAt
});




}
/// @nodoc
class _$ScanLogCopyWithImpl<$Res>
    implements $ScanLogCopyWith<$Res> {
  _$ScanLogCopyWithImpl(this._self, this._then);

  final ScanLog _self;
  final $Res Function(ScanLog) _then;

/// Create a copy of ScanLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketNumber = null,Object? result = null,Object? resultDisplay = null,Object? passengerName = freezed,Object? seatNumber = freezed,Object? scannedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ResultEnum,resultDisplay: null == resultDisplay ? _self.resultDisplay : resultDisplay // ignore: cast_nullable_to_non_nullable
as String,passengerName: freezed == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: null == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ScanLog].
extension ScanLogPatterns on ScanLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScanLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScanLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScanLog value)  $default,){
final _that = this;
switch (_that) {
case _ScanLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScanLog value)?  $default,){
final _that = this;
switch (_that) {
case _ScanLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  ResultEnum result, @JsonKey(name: 'result_display')  String resultDisplay, @JsonKey(name: 'passenger_name')  String? passengerName, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'scanned_at')  DateTime scannedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScanLog() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.result,_that.resultDisplay,_that.passengerName,_that.seatNumber,_that.scannedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  ResultEnum result, @JsonKey(name: 'result_display')  String resultDisplay, @JsonKey(name: 'passenger_name')  String? passengerName, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'scanned_at')  DateTime scannedAt)  $default,) {final _that = this;
switch (_that) {
case _ScanLog():
return $default(_that.id,_that.ticketNumber,_that.result,_that.resultDisplay,_that.passengerName,_that.seatNumber,_that.scannedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'ticket_number')  String ticketNumber,  ResultEnum result, @JsonKey(name: 'result_display')  String resultDisplay, @JsonKey(name: 'passenger_name')  String? passengerName, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'scanned_at')  DateTime scannedAt)?  $default,) {final _that = this;
switch (_that) {
case _ScanLog() when $default != null:
return $default(_that.id,_that.ticketNumber,_that.result,_that.resultDisplay,_that.passengerName,_that.seatNumber,_that.scannedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScanLog implements ScanLog {
  const _ScanLog({required this.id, @JsonKey(name: 'ticket_number') required this.ticketNumber, required this.result, @JsonKey(name: 'result_display') required this.resultDisplay, @JsonKey(name: 'passenger_name') required this.passengerName, @JsonKey(name: 'seat_number') required this.seatNumber, @JsonKey(name: 'scanned_at') required this.scannedAt});
  factory _ScanLog.fromJson(Map<String, dynamic> json) => _$ScanLogFromJson(json);

@override final  int id;
@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override final  ResultEnum result;
@override@JsonKey(name: 'result_display') final  String resultDisplay;
@override@JsonKey(name: 'passenger_name') final  String? passengerName;
@override@JsonKey(name: 'seat_number') final  String? seatNumber;
@override@JsonKey(name: 'scanned_at') final  DateTime scannedAt;

/// Create a copy of ScanLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanLogCopyWith<_ScanLog> get copyWith => __$ScanLogCopyWithImpl<_ScanLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScanLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanLog&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.result, result) || other.result == result)&&(identical(other.resultDisplay, resultDisplay) || other.resultDisplay == resultDisplay)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketNumber,result,resultDisplay,passengerName,seatNumber,scannedAt);

@override
String toString() {
  return 'ScanLog(id: $id, ticketNumber: $ticketNumber, result: $result, resultDisplay: $resultDisplay, passengerName: $passengerName, seatNumber: $seatNumber, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class _$ScanLogCopyWith<$Res> implements $ScanLogCopyWith<$Res> {
  factory _$ScanLogCopyWith(_ScanLog value, $Res Function(_ScanLog) _then) = __$ScanLogCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'ticket_number') String ticketNumber, ResultEnum result,@JsonKey(name: 'result_display') String resultDisplay,@JsonKey(name: 'passenger_name') String? passengerName,@JsonKey(name: 'seat_number') String? seatNumber,@JsonKey(name: 'scanned_at') DateTime scannedAt
});




}
/// @nodoc
class __$ScanLogCopyWithImpl<$Res>
    implements _$ScanLogCopyWith<$Res> {
  __$ScanLogCopyWithImpl(this._self, this._then);

  final _ScanLog _self;
  final $Res Function(_ScanLog) _then;

/// Create a copy of ScanLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketNumber = null,Object? result = null,Object? resultDisplay = null,Object? passengerName = freezed,Object? seatNumber = freezed,Object? scannedAt = null,}) {
  return _then(_ScanLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ResultEnum,resultDisplay: null == resultDisplay ? _self.resultDisplay : resultDisplay // ignore: cast_nullable_to_non_nullable
as String,passengerName: freezed == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,scannedAt: null == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
