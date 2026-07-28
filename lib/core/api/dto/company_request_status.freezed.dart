// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_request_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyRequestStatus {

 int get id;@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'manager_name') String get managerName; String get phone; String get email; String get city; Status47eEnum get status;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of CompanyRequestStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyRequestStatusCopyWith<CompanyRequestStatus> get copyWith => _$CompanyRequestStatusCopyWithImpl<CompanyRequestStatus>(this as CompanyRequestStatus, _$identity);

  /// Serializes this CompanyRequestStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyRequestStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.managerName, managerName) || other.managerName == managerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.city, city) || other.city == city)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,managerName,phone,email,city,status,createdAt);

@override
String toString() {
  return 'CompanyRequestStatus(id: $id, companyName: $companyName, managerName: $managerName, phone: $phone, email: $email, city: $city, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CompanyRequestStatusCopyWith<$Res>  {
  factory $CompanyRequestStatusCopyWith(CompanyRequestStatus value, $Res Function(CompanyRequestStatus) _then) = _$CompanyRequestStatusCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'manager_name') String managerName, String phone, String email, String city, Status47eEnum status,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$CompanyRequestStatusCopyWithImpl<$Res>
    implements $CompanyRequestStatusCopyWith<$Res> {
  _$CompanyRequestStatusCopyWithImpl(this._self, this._then);

  final CompanyRequestStatus _self;
  final $Res Function(CompanyRequestStatus) _then;

/// Create a copy of CompanyRequestStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyName = null,Object? managerName = null,Object? phone = null,Object? email = null,Object? city = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,managerName: null == managerName ? _self.managerName : managerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status47eEnum,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyRequestStatus].
extension CompanyRequestStatusPatterns on CompanyRequestStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyRequestStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyRequestStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyRequestStatus value)  $default,){
final _that = this;
switch (_that) {
case _CompanyRequestStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyRequestStatus value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyRequestStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'manager_name')  String managerName,  String phone,  String email,  String city,  Status47eEnum status, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyRequestStatus() when $default != null:
return $default(_that.id,_that.companyName,_that.managerName,_that.phone,_that.email,_that.city,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'manager_name')  String managerName,  String phone,  String email,  String city,  Status47eEnum status, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CompanyRequestStatus():
return $default(_that.id,_that.companyName,_that.managerName,_that.phone,_that.email,_that.city,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'manager_name')  String managerName,  String phone,  String email,  String city,  Status47eEnum status, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CompanyRequestStatus() when $default != null:
return $default(_that.id,_that.companyName,_that.managerName,_that.phone,_that.email,_that.city,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyRequestStatus implements CompanyRequestStatus {
  const _CompanyRequestStatus({required this.id, @JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'manager_name') required this.managerName, required this.phone, required this.email, required this.city, required this.status, @JsonKey(name: 'created_at') required this.createdAt});
  factory _CompanyRequestStatus.fromJson(Map<String, dynamic> json) => _$CompanyRequestStatusFromJson(json);

@override final  int id;
@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'manager_name') final  String managerName;
@override final  String phone;
@override final  String email;
@override final  String city;
@override final  Status47eEnum status;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of CompanyRequestStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyRequestStatusCopyWith<_CompanyRequestStatus> get copyWith => __$CompanyRequestStatusCopyWithImpl<_CompanyRequestStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyRequestStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyRequestStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.managerName, managerName) || other.managerName == managerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.city, city) || other.city == city)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,managerName,phone,email,city,status,createdAt);

@override
String toString() {
  return 'CompanyRequestStatus(id: $id, companyName: $companyName, managerName: $managerName, phone: $phone, email: $email, city: $city, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CompanyRequestStatusCopyWith<$Res> implements $CompanyRequestStatusCopyWith<$Res> {
  factory _$CompanyRequestStatusCopyWith(_CompanyRequestStatus value, $Res Function(_CompanyRequestStatus) _then) = __$CompanyRequestStatusCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'manager_name') String managerName, String phone, String email, String city, Status47eEnum status,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$CompanyRequestStatusCopyWithImpl<$Res>
    implements _$CompanyRequestStatusCopyWith<$Res> {
  __$CompanyRequestStatusCopyWithImpl(this._self, this._then);

  final _CompanyRequestStatus _self;
  final $Res Function(_CompanyRequestStatus) _then;

/// Create a copy of CompanyRequestStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyName = null,Object? managerName = null,Object? phone = null,Object? email = null,Object? city = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_CompanyRequestStatus(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,managerName: null == managerName ? _self.managerName : managerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status47eEnum,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
