// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_result_conflict.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncResultConflict {

 TypeD05Enum get type;@JsonKey(name: 'ticket_number') String get ticketNumber;@JsonKey(name: 'original_seat') String get originalSeat;@JsonKey(name: 'assigned_seat') String get assignedSeat; String get message;
/// Create a copy of SyncResultConflict
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncResultConflictCopyWith<SyncResultConflict> get copyWith => _$SyncResultConflictCopyWithImpl<SyncResultConflict>(this as SyncResultConflict, _$identity);

  /// Serializes this SyncResultConflict to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncResultConflict&&(identical(other.type, type) || other.type == type)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.originalSeat, originalSeat) || other.originalSeat == originalSeat)&&(identical(other.assignedSeat, assignedSeat) || other.assignedSeat == assignedSeat)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,ticketNumber,originalSeat,assignedSeat,message);

@override
String toString() {
  return 'SyncResultConflict(type: $type, ticketNumber: $ticketNumber, originalSeat: $originalSeat, assignedSeat: $assignedSeat, message: $message)';
}


}

/// @nodoc
abstract mixin class $SyncResultConflictCopyWith<$Res>  {
  factory $SyncResultConflictCopyWith(SyncResultConflict value, $Res Function(SyncResultConflict) _then) = _$SyncResultConflictCopyWithImpl;
@useResult
$Res call({
 TypeD05Enum type,@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'original_seat') String originalSeat,@JsonKey(name: 'assigned_seat') String assignedSeat, String message
});




}
/// @nodoc
class _$SyncResultConflictCopyWithImpl<$Res>
    implements $SyncResultConflictCopyWith<$Res> {
  _$SyncResultConflictCopyWithImpl(this._self, this._then);

  final SyncResultConflict _self;
  final $Res Function(SyncResultConflict) _then;

/// Create a copy of SyncResultConflict
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? ticketNumber = null,Object? originalSeat = null,Object? assignedSeat = null,Object? message = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeD05Enum,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,originalSeat: null == originalSeat ? _self.originalSeat : originalSeat // ignore: cast_nullable_to_non_nullable
as String,assignedSeat: null == assignedSeat ? _self.assignedSeat : assignedSeat // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncResultConflict].
extension SyncResultConflictPatterns on SyncResultConflict {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncResultConflict value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncResultConflict() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncResultConflict value)  $default,){
final _that = this;
switch (_that) {
case _SyncResultConflict():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncResultConflict value)?  $default,){
final _that = this;
switch (_that) {
case _SyncResultConflict() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TypeD05Enum type, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'original_seat')  String originalSeat, @JsonKey(name: 'assigned_seat')  String assignedSeat,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncResultConflict() when $default != null:
return $default(_that.type,_that.ticketNumber,_that.originalSeat,_that.assignedSeat,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TypeD05Enum type, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'original_seat')  String originalSeat, @JsonKey(name: 'assigned_seat')  String assignedSeat,  String message)  $default,) {final _that = this;
switch (_that) {
case _SyncResultConflict():
return $default(_that.type,_that.ticketNumber,_that.originalSeat,_that.assignedSeat,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TypeD05Enum type, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'original_seat')  String originalSeat, @JsonKey(name: 'assigned_seat')  String assignedSeat,  String message)?  $default,) {final _that = this;
switch (_that) {
case _SyncResultConflict() when $default != null:
return $default(_that.type,_that.ticketNumber,_that.originalSeat,_that.assignedSeat,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncResultConflict implements SyncResultConflict {
  const _SyncResultConflict({required this.type, @JsonKey(name: 'ticket_number') required this.ticketNumber, @JsonKey(name: 'original_seat') required this.originalSeat, @JsonKey(name: 'assigned_seat') required this.assignedSeat, required this.message});
  factory _SyncResultConflict.fromJson(Map<String, dynamic> json) => _$SyncResultConflictFromJson(json);

@override final  TypeD05Enum type;
@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override@JsonKey(name: 'original_seat') final  String originalSeat;
@override@JsonKey(name: 'assigned_seat') final  String assignedSeat;
@override final  String message;

/// Create a copy of SyncResultConflict
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncResultConflictCopyWith<_SyncResultConflict> get copyWith => __$SyncResultConflictCopyWithImpl<_SyncResultConflict>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncResultConflictToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncResultConflict&&(identical(other.type, type) || other.type == type)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.originalSeat, originalSeat) || other.originalSeat == originalSeat)&&(identical(other.assignedSeat, assignedSeat) || other.assignedSeat == assignedSeat)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,ticketNumber,originalSeat,assignedSeat,message);

@override
String toString() {
  return 'SyncResultConflict(type: $type, ticketNumber: $ticketNumber, originalSeat: $originalSeat, assignedSeat: $assignedSeat, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SyncResultConflictCopyWith<$Res> implements $SyncResultConflictCopyWith<$Res> {
  factory _$SyncResultConflictCopyWith(_SyncResultConflict value, $Res Function(_SyncResultConflict) _then) = __$SyncResultConflictCopyWithImpl;
@override @useResult
$Res call({
 TypeD05Enum type,@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'original_seat') String originalSeat,@JsonKey(name: 'assigned_seat') String assignedSeat, String message
});




}
/// @nodoc
class __$SyncResultConflictCopyWithImpl<$Res>
    implements _$SyncResultConflictCopyWith<$Res> {
  __$SyncResultConflictCopyWithImpl(this._self, this._then);

  final _SyncResultConflict _self;
  final $Res Function(_SyncResultConflict) _then;

/// Create a copy of SyncResultConflict
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? ticketNumber = null,Object? originalSeat = null,Object? assignedSeat = null,Object? message = null,}) {
  return _then(_SyncResultConflict(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeD05Enum,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,originalSeat: null == originalSeat ? _self.originalSeat : originalSeat // ignore: cast_nullable_to_non_nullable
as String,assignedSeat: null == assignedSeat ? _self.assignedSeat : assignedSeat // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
