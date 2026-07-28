// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyCreate {

 int get id; String get name; String? get sigle; String? get description; String? get city; String? get address; String? get phone; String? get email;@JsonKey(name: 'responsible_name') String? get responsibleName;@JsonKey(name: 'responsible_phone') String? get responsiblePhone; String? get rccm; String? get ifu;@JsonKey(name: 'commission_rate') String? get commissionRate; Status47eEnum get status;
/// Create a copy of CompanyCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyCreateCopyWith<CompanyCreate> get copyWith => _$CompanyCreateCopyWithImpl<CompanyCreate>(this as CompanyCreate, _$identity);

  /// Serializes this CompanyCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.responsibleName, responsibleName) || other.responsibleName == responsibleName)&&(identical(other.responsiblePhone, responsiblePhone) || other.responsiblePhone == responsiblePhone)&&(identical(other.rccm, rccm) || other.rccm == rccm)&&(identical(other.ifu, ifu) || other.ifu == ifu)&&(identical(other.commissionRate, commissionRate) || other.commissionRate == commissionRate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,description,city,address,phone,email,responsibleName,responsiblePhone,rccm,ifu,commissionRate,status);

@override
String toString() {
  return 'CompanyCreate(id: $id, name: $name, sigle: $sigle, description: $description, city: $city, address: $address, phone: $phone, email: $email, responsibleName: $responsibleName, responsiblePhone: $responsiblePhone, rccm: $rccm, ifu: $ifu, commissionRate: $commissionRate, status: $status)';
}


}

/// @nodoc
abstract mixin class $CompanyCreateCopyWith<$Res>  {
  factory $CompanyCreateCopyWith(CompanyCreate value, $Res Function(CompanyCreate) _then) = _$CompanyCreateCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? sigle, String? description, String? city, String? address, String? phone, String? email,@JsonKey(name: 'responsible_name') String? responsibleName,@JsonKey(name: 'responsible_phone') String? responsiblePhone, String? rccm, String? ifu,@JsonKey(name: 'commission_rate') String? commissionRate, Status47eEnum status
});




}
/// @nodoc
class _$CompanyCreateCopyWithImpl<$Res>
    implements $CompanyCreateCopyWith<$Res> {
  _$CompanyCreateCopyWithImpl(this._self, this._then);

  final CompanyCreate _self;
  final $Res Function(CompanyCreate) _then;

/// Create a copy of CompanyCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? description = freezed,Object? city = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? responsibleName = freezed,Object? responsiblePhone = freezed,Object? rccm = freezed,Object? ifu = freezed,Object? commissionRate = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,responsibleName: freezed == responsibleName ? _self.responsibleName : responsibleName // ignore: cast_nullable_to_non_nullable
as String?,responsiblePhone: freezed == responsiblePhone ? _self.responsiblePhone : responsiblePhone // ignore: cast_nullable_to_non_nullable
as String?,rccm: freezed == rccm ? _self.rccm : rccm // ignore: cast_nullable_to_non_nullable
as String?,ifu: freezed == ifu ? _self.ifu : ifu // ignore: cast_nullable_to_non_nullable
as String?,commissionRate: freezed == commissionRate ? _self.commissionRate : commissionRate // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status47eEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyCreate].
extension CompanyCreatePatterns on CompanyCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyCreate value)  $default,){
final _that = this;
switch (_that) {
case _CompanyCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyCreate value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? description,  String? city,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone,  String? rccm,  String? ifu, @JsonKey(name: 'commission_rate')  String? commissionRate,  Status47eEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyCreate() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.description,_that.city,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone,_that.rccm,_that.ifu,_that.commissionRate,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? description,  String? city,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone,  String? rccm,  String? ifu, @JsonKey(name: 'commission_rate')  String? commissionRate,  Status47eEnum status)  $default,) {final _that = this;
switch (_that) {
case _CompanyCreate():
return $default(_that.id,_that.name,_that.sigle,_that.description,_that.city,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone,_that.rccm,_that.ifu,_that.commissionRate,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? sigle,  String? description,  String? city,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone,  String? rccm,  String? ifu, @JsonKey(name: 'commission_rate')  String? commissionRate,  Status47eEnum status)?  $default,) {final _that = this;
switch (_that) {
case _CompanyCreate() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.description,_that.city,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone,_that.rccm,_that.ifu,_that.commissionRate,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyCreate implements CompanyCreate {
  const _CompanyCreate({required this.id, required this.name, this.sigle, this.description, this.city, this.address, this.phone, this.email, @JsonKey(name: 'responsible_name') this.responsibleName, @JsonKey(name: 'responsible_phone') this.responsiblePhone, this.rccm, this.ifu, @JsonKey(name: 'commission_rate') this.commissionRate, required this.status});
  factory _CompanyCreate.fromJson(Map<String, dynamic> json) => _$CompanyCreateFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? sigle;
@override final  String? description;
@override final  String? city;
@override final  String? address;
@override final  String? phone;
@override final  String? email;
@override@JsonKey(name: 'responsible_name') final  String? responsibleName;
@override@JsonKey(name: 'responsible_phone') final  String? responsiblePhone;
@override final  String? rccm;
@override final  String? ifu;
@override@JsonKey(name: 'commission_rate') final  String? commissionRate;
@override final  Status47eEnum status;

/// Create a copy of CompanyCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCreateCopyWith<_CompanyCreate> get copyWith => __$CompanyCreateCopyWithImpl<_CompanyCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyCreate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.responsibleName, responsibleName) || other.responsibleName == responsibleName)&&(identical(other.responsiblePhone, responsiblePhone) || other.responsiblePhone == responsiblePhone)&&(identical(other.rccm, rccm) || other.rccm == rccm)&&(identical(other.ifu, ifu) || other.ifu == ifu)&&(identical(other.commissionRate, commissionRate) || other.commissionRate == commissionRate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,description,city,address,phone,email,responsibleName,responsiblePhone,rccm,ifu,commissionRate,status);

@override
String toString() {
  return 'CompanyCreate(id: $id, name: $name, sigle: $sigle, description: $description, city: $city, address: $address, phone: $phone, email: $email, responsibleName: $responsibleName, responsiblePhone: $responsiblePhone, rccm: $rccm, ifu: $ifu, commissionRate: $commissionRate, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CompanyCreateCopyWith<$Res> implements $CompanyCreateCopyWith<$Res> {
  factory _$CompanyCreateCopyWith(_CompanyCreate value, $Res Function(_CompanyCreate) _then) = __$CompanyCreateCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? sigle, String? description, String? city, String? address, String? phone, String? email,@JsonKey(name: 'responsible_name') String? responsibleName,@JsonKey(name: 'responsible_phone') String? responsiblePhone, String? rccm, String? ifu,@JsonKey(name: 'commission_rate') String? commissionRate, Status47eEnum status
});




}
/// @nodoc
class __$CompanyCreateCopyWithImpl<$Res>
    implements _$CompanyCreateCopyWith<$Res> {
  __$CompanyCreateCopyWithImpl(this._self, this._then);

  final _CompanyCreate _self;
  final $Res Function(_CompanyCreate) _then;

/// Create a copy of CompanyCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? description = freezed,Object? city = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? responsibleName = freezed,Object? responsiblePhone = freezed,Object? rccm = freezed,Object? ifu = freezed,Object? commissionRate = freezed,Object? status = null,}) {
  return _then(_CompanyCreate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,responsibleName: freezed == responsibleName ? _self.responsibleName : responsibleName // ignore: cast_nullable_to_non_nullable
as String?,responsiblePhone: freezed == responsiblePhone ? _self.responsiblePhone : responsiblePhone // ignore: cast_nullable_to_non_nullable
as String?,rccm: freezed == rccm ? _self.rccm : rccm // ignore: cast_nullable_to_non_nullable
as String?,ifu: freezed == ifu ? _self.ifu : ifu // ignore: cast_nullable_to_non_nullable
as String?,commissionRate: freezed == commissionRate ? _self.commissionRate : commissionRate // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status47eEnum,
  ));
}


}

// dart format on
