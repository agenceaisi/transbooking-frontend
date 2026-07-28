// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageRead {

 int get id; int get sender;@JsonKey(name: 'sender_name') String get senderName; int get recipient;@JsonKey(name: 'recipient_name') String get recipientName; String? get subject; String get body;@JsonKey(name: 'is_read') bool? get isRead;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of MessageRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageReadCopyWith<MessageRead> get copyWith => _$MessageReadCopyWithImpl<MessageRead>(this as MessageRead, _$identity);

  /// Serializes this MessageRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageRead&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,senderName,recipient,recipientName,subject,body,isRead,createdAt);

@override
String toString() {
  return 'MessageRead(id: $id, sender: $sender, senderName: $senderName, recipient: $recipient, recipientName: $recipientName, subject: $subject, body: $body, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MessageReadCopyWith<$Res>  {
  factory $MessageReadCopyWith(MessageRead value, $Res Function(MessageRead) _then) = _$MessageReadCopyWithImpl;
@useResult
$Res call({
 int id, int sender,@JsonKey(name: 'sender_name') String senderName, int recipient,@JsonKey(name: 'recipient_name') String recipientName, String? subject, String body,@JsonKey(name: 'is_read') bool? isRead,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$MessageReadCopyWithImpl<$Res>
    implements $MessageReadCopyWith<$Res> {
  _$MessageReadCopyWithImpl(this._self, this._then);

  final MessageRead _self;
  final $Res Function(MessageRead) _then;

/// Create a copy of MessageRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sender = null,Object? senderName = null,Object? recipient = null,Object? recipientName = null,Object? subject = freezed,Object? body = null,Object? isRead = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as int,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as int,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageRead].
extension MessageReadPatterns on MessageRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageRead value)  $default,){
final _that = this;
switch (_that) {
case _MessageRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageRead value)?  $default,){
final _that = this;
switch (_that) {
case _MessageRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int sender, @JsonKey(name: 'sender_name')  String senderName,  int recipient, @JsonKey(name: 'recipient_name')  String recipientName,  String? subject,  String body, @JsonKey(name: 'is_read')  bool? isRead, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageRead() when $default != null:
return $default(_that.id,_that.sender,_that.senderName,_that.recipient,_that.recipientName,_that.subject,_that.body,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int sender, @JsonKey(name: 'sender_name')  String senderName,  int recipient, @JsonKey(name: 'recipient_name')  String recipientName,  String? subject,  String body, @JsonKey(name: 'is_read')  bool? isRead, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MessageRead():
return $default(_that.id,_that.sender,_that.senderName,_that.recipient,_that.recipientName,_that.subject,_that.body,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int sender, @JsonKey(name: 'sender_name')  String senderName,  int recipient, @JsonKey(name: 'recipient_name')  String recipientName,  String? subject,  String body, @JsonKey(name: 'is_read')  bool? isRead, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MessageRead() when $default != null:
return $default(_that.id,_that.sender,_that.senderName,_that.recipient,_that.recipientName,_that.subject,_that.body,_that.isRead,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageRead implements MessageRead {
  const _MessageRead({required this.id, required this.sender, @JsonKey(name: 'sender_name') required this.senderName, required this.recipient, @JsonKey(name: 'recipient_name') required this.recipientName, this.subject, required this.body, @JsonKey(name: 'is_read') this.isRead, @JsonKey(name: 'created_at') required this.createdAt});
  factory _MessageRead.fromJson(Map<String, dynamic> json) => _$MessageReadFromJson(json);

@override final  int id;
@override final  int sender;
@override@JsonKey(name: 'sender_name') final  String senderName;
@override final  int recipient;
@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override final  String? subject;
@override final  String body;
@override@JsonKey(name: 'is_read') final  bool? isRead;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of MessageRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageReadCopyWith<_MessageRead> get copyWith => __$MessageReadCopyWithImpl<_MessageRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageRead&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,senderName,recipient,recipientName,subject,body,isRead,createdAt);

@override
String toString() {
  return 'MessageRead(id: $id, sender: $sender, senderName: $senderName, recipient: $recipient, recipientName: $recipientName, subject: $subject, body: $body, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MessageReadCopyWith<$Res> implements $MessageReadCopyWith<$Res> {
  factory _$MessageReadCopyWith(_MessageRead value, $Res Function(_MessageRead) _then) = __$MessageReadCopyWithImpl;
@override @useResult
$Res call({
 int id, int sender,@JsonKey(name: 'sender_name') String senderName, int recipient,@JsonKey(name: 'recipient_name') String recipientName, String? subject, String body,@JsonKey(name: 'is_read') bool? isRead,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$MessageReadCopyWithImpl<$Res>
    implements _$MessageReadCopyWith<$Res> {
  __$MessageReadCopyWithImpl(this._self, this._then);

  final _MessageRead _self;
  final $Res Function(_MessageRead) _then;

/// Create a copy of MessageRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sender = null,Object? senderName = null,Object? recipient = null,Object? recipientName = null,Object? subject = freezed,Object? body = null,Object? isRead = freezed,Object? createdAt = null,}) {
  return _then(_MessageRead(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as int,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as int,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
