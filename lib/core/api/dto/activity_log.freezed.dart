// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityLog {

 int get id; int? get user;@JsonKey(name: 'user_name') String get userName;@JsonKey(name: 'user_role') String? get userRole; String get action;@JsonKey(name: 'entity_type') String? get entityType;@JsonKey(name: 'entity_id') int? get entityId; dynamic get details;@JsonKey(name: 'ip_address') String? get ipAddress;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of ActivityLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityLogCopyWith<ActivityLog> get copyWith => _$ActivityLogCopyWithImpl<ActivityLog>(this as ActivityLog, _$identity);

  /// Serializes this ActivityLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityLog&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,userName,userRole,action,entityType,entityId,const DeepCollectionEquality().hash(details),ipAddress,createdAt);

@override
String toString() {
  return 'ActivityLog(id: $id, user: $user, userName: $userName, userRole: $userRole, action: $action, entityType: $entityType, entityId: $entityId, details: $details, ipAddress: $ipAddress, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ActivityLogCopyWith<$Res>  {
  factory $ActivityLogCopyWith(ActivityLog value, $Res Function(ActivityLog) _then) = _$ActivityLogCopyWithImpl;
@useResult
$Res call({
 int id, int? user,@JsonKey(name: 'user_name') String userName,@JsonKey(name: 'user_role') String? userRole, String action,@JsonKey(name: 'entity_type') String? entityType,@JsonKey(name: 'entity_id') int? entityId, dynamic details,@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$ActivityLogCopyWithImpl<$Res>
    implements $ActivityLogCopyWith<$Res> {
  _$ActivityLogCopyWithImpl(this._self, this._then);

  final ActivityLog _self;
  final $Res Function(ActivityLog) _then;

/// Create a copy of ActivityLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = freezed,Object? userName = null,Object? userRole = freezed,Object? action = null,Object? entityType = freezed,Object? entityId = freezed,Object? details = freezed,Object? ipAddress = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String?,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as int?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as dynamic,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityLog].
extension ActivityLogPatterns on ActivityLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityLog value)  $default,){
final _that = this;
switch (_that) {
case _ActivityLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityLog value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? user, @JsonKey(name: 'user_name')  String userName, @JsonKey(name: 'user_role')  String? userRole,  String action, @JsonKey(name: 'entity_type')  String? entityType, @JsonKey(name: 'entity_id')  int? entityId,  dynamic details, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityLog() when $default != null:
return $default(_that.id,_that.user,_that.userName,_that.userRole,_that.action,_that.entityType,_that.entityId,_that.details,_that.ipAddress,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? user, @JsonKey(name: 'user_name')  String userName, @JsonKey(name: 'user_role')  String? userRole,  String action, @JsonKey(name: 'entity_type')  String? entityType, @JsonKey(name: 'entity_id')  int? entityId,  dynamic details, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ActivityLog():
return $default(_that.id,_that.user,_that.userName,_that.userRole,_that.action,_that.entityType,_that.entityId,_that.details,_that.ipAddress,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? user, @JsonKey(name: 'user_name')  String userName, @JsonKey(name: 'user_role')  String? userRole,  String action, @JsonKey(name: 'entity_type')  String? entityType, @JsonKey(name: 'entity_id')  int? entityId,  dynamic details, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ActivityLog() when $default != null:
return $default(_that.id,_that.user,_that.userName,_that.userRole,_that.action,_that.entityType,_that.entityId,_that.details,_that.ipAddress,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityLog implements ActivityLog {
  const _ActivityLog({required this.id, this.user, @JsonKey(name: 'user_name') required this.userName, @JsonKey(name: 'user_role') required this.userRole, required this.action, @JsonKey(name: 'entity_type') this.entityType, @JsonKey(name: 'entity_id') this.entityId, this.details, @JsonKey(name: 'ip_address') this.ipAddress, @JsonKey(name: 'created_at') required this.createdAt});
  factory _ActivityLog.fromJson(Map<String, dynamic> json) => _$ActivityLogFromJson(json);

@override final  int id;
@override final  int? user;
@override@JsonKey(name: 'user_name') final  String userName;
@override@JsonKey(name: 'user_role') final  String? userRole;
@override final  String action;
@override@JsonKey(name: 'entity_type') final  String? entityType;
@override@JsonKey(name: 'entity_id') final  int? entityId;
@override final  dynamic details;
@override@JsonKey(name: 'ip_address') final  String? ipAddress;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of ActivityLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityLogCopyWith<_ActivityLog> get copyWith => __$ActivityLogCopyWithImpl<_ActivityLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityLog&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,userName,userRole,action,entityType,entityId,const DeepCollectionEquality().hash(details),ipAddress,createdAt);

@override
String toString() {
  return 'ActivityLog(id: $id, user: $user, userName: $userName, userRole: $userRole, action: $action, entityType: $entityType, entityId: $entityId, details: $details, ipAddress: $ipAddress, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ActivityLogCopyWith<$Res> implements $ActivityLogCopyWith<$Res> {
  factory _$ActivityLogCopyWith(_ActivityLog value, $Res Function(_ActivityLog) _then) = __$ActivityLogCopyWithImpl;
@override @useResult
$Res call({
 int id, int? user,@JsonKey(name: 'user_name') String userName,@JsonKey(name: 'user_role') String? userRole, String action,@JsonKey(name: 'entity_type') String? entityType,@JsonKey(name: 'entity_id') int? entityId, dynamic details,@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$ActivityLogCopyWithImpl<$Res>
    implements _$ActivityLogCopyWith<$Res> {
  __$ActivityLogCopyWithImpl(this._self, this._then);

  final _ActivityLog _self;
  final $Res Function(_ActivityLog) _then;

/// Create a copy of ActivityLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = freezed,Object? userName = null,Object? userRole = freezed,Object? action = null,Object? entityType = freezed,Object? entityId = freezed,Object? details = freezed,Object? ipAddress = freezed,Object? createdAt = null,}) {
  return _then(_ActivityLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String?,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as int?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as dynamic,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
