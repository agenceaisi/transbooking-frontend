// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyRegistrationRequest {

@JsonKey(name: 'company_name') String get companyName;@JsonKey(name: 'manager_name') String get managerName; String get phone; String get email; String get city; String? get documents;
/// Create a copy of CompanyRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyRegistrationRequestCopyWith<CompanyRegistrationRequest> get copyWith => _$CompanyRegistrationRequestCopyWithImpl<CompanyRegistrationRequest>(this as CompanyRegistrationRequest, _$identity);

  /// Serializes this CompanyRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyRegistrationRequest&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.managerName, managerName) || other.managerName == managerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.city, city) || other.city == city)&&(identical(other.documents, documents) || other.documents == documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,managerName,phone,email,city,documents);

@override
String toString() {
  return 'CompanyRegistrationRequest(companyName: $companyName, managerName: $managerName, phone: $phone, email: $email, city: $city, documents: $documents)';
}


}

/// @nodoc
abstract mixin class $CompanyRegistrationRequestCopyWith<$Res>  {
  factory $CompanyRegistrationRequestCopyWith(CompanyRegistrationRequest value, $Res Function(CompanyRegistrationRequest) _then) = _$CompanyRegistrationRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'manager_name') String managerName, String phone, String email, String city, String? documents
});




}
/// @nodoc
class _$CompanyRegistrationRequestCopyWithImpl<$Res>
    implements $CompanyRegistrationRequestCopyWith<$Res> {
  _$CompanyRegistrationRequestCopyWithImpl(this._self, this._then);

  final CompanyRegistrationRequest _self;
  final $Res Function(CompanyRegistrationRequest) _then;

/// Create a copy of CompanyRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = null,Object? managerName = null,Object? phone = null,Object? email = null,Object? city = null,Object? documents = freezed,}) {
  return _then(_self.copyWith(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,managerName: null == managerName ? _self.managerName : managerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,documents: freezed == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyRegistrationRequest].
extension CompanyRegistrationRequestPatterns on CompanyRegistrationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyRegistrationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyRegistrationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyRegistrationRequest value)  $default,){
final _that = this;
switch (_that) {
case _CompanyRegistrationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyRegistrationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyRegistrationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'manager_name')  String managerName,  String phone,  String email,  String city,  String? documents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyRegistrationRequest() when $default != null:
return $default(_that.companyName,_that.managerName,_that.phone,_that.email,_that.city,_that.documents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'manager_name')  String managerName,  String phone,  String email,  String city,  String? documents)  $default,) {final _that = this;
switch (_that) {
case _CompanyRegistrationRequest():
return $default(_that.companyName,_that.managerName,_that.phone,_that.email,_that.city,_that.documents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'company_name')  String companyName, @JsonKey(name: 'manager_name')  String managerName,  String phone,  String email,  String city,  String? documents)?  $default,) {final _that = this;
switch (_that) {
case _CompanyRegistrationRequest() when $default != null:
return $default(_that.companyName,_that.managerName,_that.phone,_that.email,_that.city,_that.documents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyRegistrationRequest implements CompanyRegistrationRequest {
  const _CompanyRegistrationRequest({@JsonKey(name: 'company_name') required this.companyName, @JsonKey(name: 'manager_name') required this.managerName, required this.phone, required this.email, required this.city, this.documents});
  factory _CompanyRegistrationRequest.fromJson(Map<String, dynamic> json) => _$CompanyRegistrationRequestFromJson(json);

@override@JsonKey(name: 'company_name') final  String companyName;
@override@JsonKey(name: 'manager_name') final  String managerName;
@override final  String phone;
@override final  String email;
@override final  String city;
@override final  String? documents;

/// Create a copy of CompanyRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyRegistrationRequestCopyWith<_CompanyRegistrationRequest> get copyWith => __$CompanyRegistrationRequestCopyWithImpl<_CompanyRegistrationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyRegistrationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyRegistrationRequest&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.managerName, managerName) || other.managerName == managerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.city, city) || other.city == city)&&(identical(other.documents, documents) || other.documents == documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,managerName,phone,email,city,documents);

@override
String toString() {
  return 'CompanyRegistrationRequest(companyName: $companyName, managerName: $managerName, phone: $phone, email: $email, city: $city, documents: $documents)';
}


}

/// @nodoc
abstract mixin class _$CompanyRegistrationRequestCopyWith<$Res> implements $CompanyRegistrationRequestCopyWith<$Res> {
  factory _$CompanyRegistrationRequestCopyWith(_CompanyRegistrationRequest value, $Res Function(_CompanyRegistrationRequest) _then) = __$CompanyRegistrationRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'company_name') String companyName,@JsonKey(name: 'manager_name') String managerName, String phone, String email, String city, String? documents
});




}
/// @nodoc
class __$CompanyRegistrationRequestCopyWithImpl<$Res>
    implements _$CompanyRegistrationRequestCopyWith<$Res> {
  __$CompanyRegistrationRequestCopyWithImpl(this._self, this._then);

  final _CompanyRegistrationRequest _self;
  final $Res Function(_CompanyRegistrationRequest) _then;

/// Create a copy of CompanyRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = null,Object? managerName = null,Object? phone = null,Object? email = null,Object? city = null,Object? documents = freezed,}) {
  return _then(_CompanyRegistrationRequest(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,managerName: null == managerName ? _self.managerName : managerName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,documents: freezed == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
