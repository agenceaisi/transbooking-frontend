// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_agent_invitation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyAgentInvitationResponse {

 String get detail; String get phone; String get role;@JsonKey(name: 'invite_url') String get inviteUrl;@JsonKey(name: 'expires_in_hours') int get expiresInHours;
/// Create a copy of CompanyAgentInvitationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyAgentInvitationResponseCopyWith<CompanyAgentInvitationResponse> get copyWith => _$CompanyAgentInvitationResponseCopyWithImpl<CompanyAgentInvitationResponse>(this as CompanyAgentInvitationResponse, _$identity);

  /// Serializes this CompanyAgentInvitationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyAgentInvitationResponse&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.inviteUrl, inviteUrl) || other.inviteUrl == inviteUrl)&&(identical(other.expiresInHours, expiresInHours) || other.expiresInHours == expiresInHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,detail,phone,role,inviteUrl,expiresInHours);

@override
String toString() {
  return 'CompanyAgentInvitationResponse(detail: $detail, phone: $phone, role: $role, inviteUrl: $inviteUrl, expiresInHours: $expiresInHours)';
}


}

/// @nodoc
abstract mixin class $CompanyAgentInvitationResponseCopyWith<$Res>  {
  factory $CompanyAgentInvitationResponseCopyWith(CompanyAgentInvitationResponse value, $Res Function(CompanyAgentInvitationResponse) _then) = _$CompanyAgentInvitationResponseCopyWithImpl;
@useResult
$Res call({
 String detail, String phone, String role,@JsonKey(name: 'invite_url') String inviteUrl,@JsonKey(name: 'expires_in_hours') int expiresInHours
});




}
/// @nodoc
class _$CompanyAgentInvitationResponseCopyWithImpl<$Res>
    implements $CompanyAgentInvitationResponseCopyWith<$Res> {
  _$CompanyAgentInvitationResponseCopyWithImpl(this._self, this._then);

  final CompanyAgentInvitationResponse _self;
  final $Res Function(CompanyAgentInvitationResponse) _then;

/// Create a copy of CompanyAgentInvitationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detail = null,Object? phone = null,Object? role = null,Object? inviteUrl = null,Object? expiresInHours = null,}) {
  return _then(_self.copyWith(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,inviteUrl: null == inviteUrl ? _self.inviteUrl : inviteUrl // ignore: cast_nullable_to_non_nullable
as String,expiresInHours: null == expiresInHours ? _self.expiresInHours : expiresInHours // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyAgentInvitationResponse].
extension CompanyAgentInvitationResponsePatterns on CompanyAgentInvitationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyAgentInvitationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyAgentInvitationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyAgentInvitationResponse value)  $default,){
final _that = this;
switch (_that) {
case _CompanyAgentInvitationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyAgentInvitationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyAgentInvitationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String detail,  String phone,  String role, @JsonKey(name: 'invite_url')  String inviteUrl, @JsonKey(name: 'expires_in_hours')  int expiresInHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyAgentInvitationResponse() when $default != null:
return $default(_that.detail,_that.phone,_that.role,_that.inviteUrl,_that.expiresInHours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String detail,  String phone,  String role, @JsonKey(name: 'invite_url')  String inviteUrl, @JsonKey(name: 'expires_in_hours')  int expiresInHours)  $default,) {final _that = this;
switch (_that) {
case _CompanyAgentInvitationResponse():
return $default(_that.detail,_that.phone,_that.role,_that.inviteUrl,_that.expiresInHours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String detail,  String phone,  String role, @JsonKey(name: 'invite_url')  String inviteUrl, @JsonKey(name: 'expires_in_hours')  int expiresInHours)?  $default,) {final _that = this;
switch (_that) {
case _CompanyAgentInvitationResponse() when $default != null:
return $default(_that.detail,_that.phone,_that.role,_that.inviteUrl,_that.expiresInHours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyAgentInvitationResponse implements CompanyAgentInvitationResponse {
  const _CompanyAgentInvitationResponse({required this.detail, required this.phone, required this.role, @JsonKey(name: 'invite_url') required this.inviteUrl, @JsonKey(name: 'expires_in_hours') required this.expiresInHours});
  factory _CompanyAgentInvitationResponse.fromJson(Map<String, dynamic> json) => _$CompanyAgentInvitationResponseFromJson(json);

@override final  String detail;
@override final  String phone;
@override final  String role;
@override@JsonKey(name: 'invite_url') final  String inviteUrl;
@override@JsonKey(name: 'expires_in_hours') final  int expiresInHours;

/// Create a copy of CompanyAgentInvitationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyAgentInvitationResponseCopyWith<_CompanyAgentInvitationResponse> get copyWith => __$CompanyAgentInvitationResponseCopyWithImpl<_CompanyAgentInvitationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyAgentInvitationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyAgentInvitationResponse&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.inviteUrl, inviteUrl) || other.inviteUrl == inviteUrl)&&(identical(other.expiresInHours, expiresInHours) || other.expiresInHours == expiresInHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,detail,phone,role,inviteUrl,expiresInHours);

@override
String toString() {
  return 'CompanyAgentInvitationResponse(detail: $detail, phone: $phone, role: $role, inviteUrl: $inviteUrl, expiresInHours: $expiresInHours)';
}


}

/// @nodoc
abstract mixin class _$CompanyAgentInvitationResponseCopyWith<$Res> implements $CompanyAgentInvitationResponseCopyWith<$Res> {
  factory _$CompanyAgentInvitationResponseCopyWith(_CompanyAgentInvitationResponse value, $Res Function(_CompanyAgentInvitationResponse) _then) = __$CompanyAgentInvitationResponseCopyWithImpl;
@override @useResult
$Res call({
 String detail, String phone, String role,@JsonKey(name: 'invite_url') String inviteUrl,@JsonKey(name: 'expires_in_hours') int expiresInHours
});




}
/// @nodoc
class __$CompanyAgentInvitationResponseCopyWithImpl<$Res>
    implements _$CompanyAgentInvitationResponseCopyWith<$Res> {
  __$CompanyAgentInvitationResponseCopyWithImpl(this._self, this._then);

  final _CompanyAgentInvitationResponse _self;
  final $Res Function(_CompanyAgentInvitationResponse) _then;

/// Create a copy of CompanyAgentInvitationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detail = null,Object? phone = null,Object? role = null,Object? inviteUrl = null,Object? expiresInHours = null,}) {
  return _then(_CompanyAgentInvitationResponse(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,inviteUrl: null == inviteUrl ? _self.inviteUrl : inviteUrl // ignore: cast_nullable_to_non_nullable
as String,expiresInHours: null == expiresInHours ? _self.expiresInHours : expiresInHours // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
