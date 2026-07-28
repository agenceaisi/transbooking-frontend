// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageCreate {

 int get recipient; String? get subject; String get body;
/// Create a copy of MessageCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCreateCopyWith<MessageCreate> get copyWith => _$MessageCreateCopyWithImpl<MessageCreate>(this as MessageCreate, _$identity);

  /// Serializes this MessageCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageCreate&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipient,subject,body);

@override
String toString() {
  return 'MessageCreate(recipient: $recipient, subject: $subject, body: $body)';
}


}

/// @nodoc
abstract mixin class $MessageCreateCopyWith<$Res>  {
  factory $MessageCreateCopyWith(MessageCreate value, $Res Function(MessageCreate) _then) = _$MessageCreateCopyWithImpl;
@useResult
$Res call({
 int recipient, String? subject, String body
});




}
/// @nodoc
class _$MessageCreateCopyWithImpl<$Res>
    implements $MessageCreateCopyWith<$Res> {
  _$MessageCreateCopyWithImpl(this._self, this._then);

  final MessageCreate _self;
  final $Res Function(MessageCreate) _then;

/// Create a copy of MessageCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipient = null,Object? subject = freezed,Object? body = null,}) {
  return _then(_self.copyWith(
recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as int,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageCreate].
extension MessageCreatePatterns on MessageCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageCreate value)  $default,){
final _that = this;
switch (_that) {
case _MessageCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageCreate value)?  $default,){
final _that = this;
switch (_that) {
case _MessageCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int recipient,  String? subject,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageCreate() when $default != null:
return $default(_that.recipient,_that.subject,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int recipient,  String? subject,  String body)  $default,) {final _that = this;
switch (_that) {
case _MessageCreate():
return $default(_that.recipient,_that.subject,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int recipient,  String? subject,  String body)?  $default,) {final _that = this;
switch (_that) {
case _MessageCreate() when $default != null:
return $default(_that.recipient,_that.subject,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageCreate implements MessageCreate {
  const _MessageCreate({required this.recipient, this.subject, required this.body});
  factory _MessageCreate.fromJson(Map<String, dynamic> json) => _$MessageCreateFromJson(json);

@override final  int recipient;
@override final  String? subject;
@override final  String body;

/// Create a copy of MessageCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCreateCopyWith<_MessageCreate> get copyWith => __$MessageCreateCopyWithImpl<_MessageCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageCreate&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipient,subject,body);

@override
String toString() {
  return 'MessageCreate(recipient: $recipient, subject: $subject, body: $body)';
}


}

/// @nodoc
abstract mixin class _$MessageCreateCopyWith<$Res> implements $MessageCreateCopyWith<$Res> {
  factory _$MessageCreateCopyWith(_MessageCreate value, $Res Function(_MessageCreate) _then) = __$MessageCreateCopyWithImpl;
@override @useResult
$Res call({
 int recipient, String? subject, String body
});




}
/// @nodoc
class __$MessageCreateCopyWithImpl<$Res>
    implements _$MessageCreateCopyWith<$Res> {
  __$MessageCreateCopyWithImpl(this._self, this._then);

  final _MessageCreate _self;
  final $Res Function(_MessageCreate) _then;

/// Create a copy of MessageCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipient = null,Object? subject = freezed,Object? body = null,}) {
  return _then(_MessageCreate(
recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as int,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
