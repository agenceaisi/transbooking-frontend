// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfflineValidation {

@JsonKey(name: 'ticket_number') String get ticketNumber;@JsonKey(name: 'offline_created_at') DateTime get offlineCreatedAt;
/// Create a copy of OfflineValidation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineValidationCopyWith<OfflineValidation> get copyWith => _$OfflineValidationCopyWithImpl<OfflineValidation>(this as OfflineValidation, _$identity);

  /// Serializes this OfflineValidation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineValidation&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,offlineCreatedAt);

@override
String toString() {
  return 'OfflineValidation(ticketNumber: $ticketNumber, offlineCreatedAt: $offlineCreatedAt)';
}


}

/// @nodoc
abstract mixin class $OfflineValidationCopyWith<$Res>  {
  factory $OfflineValidationCopyWith(OfflineValidation value, $Res Function(OfflineValidation) _then) = _$OfflineValidationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'offline_created_at') DateTime offlineCreatedAt
});




}
/// @nodoc
class _$OfflineValidationCopyWithImpl<$Res>
    implements $OfflineValidationCopyWith<$Res> {
  _$OfflineValidationCopyWithImpl(this._self, this._then);

  final OfflineValidation _self;
  final $Res Function(OfflineValidation) _then;

/// Create a copy of OfflineValidation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? offlineCreatedAt = null,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,offlineCreatedAt: null == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OfflineValidation].
extension OfflineValidationPatterns on OfflineValidation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineValidation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineValidation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineValidation value)  $default,){
final _that = this;
switch (_that) {
case _OfflineValidation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineValidation value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineValidation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineValidation() when $default != null:
return $default(_that.ticketNumber,_that.offlineCreatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)  $default,) {final _that = this;
switch (_that) {
case _OfflineValidation():
return $default(_that.ticketNumber,_that.offlineCreatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'offline_created_at')  DateTime offlineCreatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OfflineValidation() when $default != null:
return $default(_that.ticketNumber,_that.offlineCreatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineValidation implements OfflineValidation {
  const _OfflineValidation({@JsonKey(name: 'ticket_number') required this.ticketNumber, @JsonKey(name: 'offline_created_at') required this.offlineCreatedAt});
  factory _OfflineValidation.fromJson(Map<String, dynamic> json) => _$OfflineValidationFromJson(json);

@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override@JsonKey(name: 'offline_created_at') final  DateTime offlineCreatedAt;

/// Create a copy of OfflineValidation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineValidationCopyWith<_OfflineValidation> get copyWith => __$OfflineValidationCopyWithImpl<_OfflineValidation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineValidationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineValidation&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.offlineCreatedAt, offlineCreatedAt) || other.offlineCreatedAt == offlineCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketNumber,offlineCreatedAt);

@override
String toString() {
  return 'OfflineValidation(ticketNumber: $ticketNumber, offlineCreatedAt: $offlineCreatedAt)';
}


}

/// @nodoc
abstract mixin class _$OfflineValidationCopyWith<$Res> implements $OfflineValidationCopyWith<$Res> {
  factory _$OfflineValidationCopyWith(_OfflineValidation value, $Res Function(_OfflineValidation) _then) = __$OfflineValidationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'offline_created_at') DateTime offlineCreatedAt
});




}
/// @nodoc
class __$OfflineValidationCopyWithImpl<$Res>
    implements _$OfflineValidationCopyWith<$Res> {
  __$OfflineValidationCopyWithImpl(this._self, this._then);

  final _OfflineValidation _self;
  final $Res Function(_OfflineValidation) _then;

/// Create a copy of OfflineValidation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? offlineCreatedAt = null,}) {
  return _then(_OfflineValidation(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,offlineCreatedAt: null == offlineCreatedAt ? _self.offlineCreatedAt : offlineCreatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
