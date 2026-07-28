// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_company_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedCompanyDetail {

 int? get id; String? get name; String? get sigle; String? get description; String? get logo; String? get banner;@JsonKey(name: 'primary_color') String? get primaryColor;@JsonKey(name: 'welcome_message') String? get welcomeMessage; String? get city; String? get address; String? get phone; String? get email;@JsonKey(name: 'responsible_name') String? get responsibleName;@JsonKey(name: 'responsible_phone') String? get responsiblePhone; String? get rccm; String? get ifu;@JsonKey(name: 'commission_rate') String? get commissionRate; Status47eEnum? get status;@JsonKey(name: 'rejection_reason') String? get rejectionReason;@JsonKey(name: 'suspension_reason') String? get suspensionReason;@JsonKey(name: 'info_request_message') String? get infoRequestMessage;@JsonKey(name: 'active_payment_methods') List<String>? get activePaymentMethods;@JsonKey(name: 'subscription_status') String? get subscriptionStatus;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of PatchedCompanyDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedCompanyDetailCopyWith<PatchedCompanyDetail> get copyWith => _$PatchedCompanyDetailCopyWithImpl<PatchedCompanyDetail>(this as PatchedCompanyDetail, _$identity);

  /// Serializes this PatchedCompanyDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedCompanyDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.responsibleName, responsibleName) || other.responsibleName == responsibleName)&&(identical(other.responsiblePhone, responsiblePhone) || other.responsiblePhone == responsiblePhone)&&(identical(other.rccm, rccm) || other.rccm == rccm)&&(identical(other.ifu, ifu) || other.ifu == ifu)&&(identical(other.commissionRate, commissionRate) || other.commissionRate == commissionRate)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.suspensionReason, suspensionReason) || other.suspensionReason == suspensionReason)&&(identical(other.infoRequestMessage, infoRequestMessage) || other.infoRequestMessage == infoRequestMessage)&&const DeepCollectionEquality().equals(other.activePaymentMethods, activePaymentMethods)&&(identical(other.subscriptionStatus, subscriptionStatus) || other.subscriptionStatus == subscriptionStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,sigle,description,logo,banner,primaryColor,welcomeMessage,city,address,phone,email,responsibleName,responsiblePhone,rccm,ifu,commissionRate,status,rejectionReason,suspensionReason,infoRequestMessage,const DeepCollectionEquality().hash(activePaymentMethods),subscriptionStatus,createdAt,updatedAt]);

@override
String toString() {
  return 'PatchedCompanyDetail(id: $id, name: $name, sigle: $sigle, description: $description, logo: $logo, banner: $banner, primaryColor: $primaryColor, welcomeMessage: $welcomeMessage, city: $city, address: $address, phone: $phone, email: $email, responsibleName: $responsibleName, responsiblePhone: $responsiblePhone, rccm: $rccm, ifu: $ifu, commissionRate: $commissionRate, status: $status, rejectionReason: $rejectionReason, suspensionReason: $suspensionReason, infoRequestMessage: $infoRequestMessage, activePaymentMethods: $activePaymentMethods, subscriptionStatus: $subscriptionStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PatchedCompanyDetailCopyWith<$Res>  {
  factory $PatchedCompanyDetailCopyWith(PatchedCompanyDetail value, $Res Function(PatchedCompanyDetail) _then) = _$PatchedCompanyDetailCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? sigle, String? description, String? logo, String? banner,@JsonKey(name: 'primary_color') String? primaryColor,@JsonKey(name: 'welcome_message') String? welcomeMessage, String? city, String? address, String? phone, String? email,@JsonKey(name: 'responsible_name') String? responsibleName,@JsonKey(name: 'responsible_phone') String? responsiblePhone, String? rccm, String? ifu,@JsonKey(name: 'commission_rate') String? commissionRate, Status47eEnum? status,@JsonKey(name: 'rejection_reason') String? rejectionReason,@JsonKey(name: 'suspension_reason') String? suspensionReason,@JsonKey(name: 'info_request_message') String? infoRequestMessage,@JsonKey(name: 'active_payment_methods') List<String>? activePaymentMethods,@JsonKey(name: 'subscription_status') String? subscriptionStatus,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$PatchedCompanyDetailCopyWithImpl<$Res>
    implements $PatchedCompanyDetailCopyWith<$Res> {
  _$PatchedCompanyDetailCopyWithImpl(this._self, this._then);

  final PatchedCompanyDetail _self;
  final $Res Function(PatchedCompanyDetail) _then;

/// Create a copy of PatchedCompanyDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? sigle = freezed,Object? description = freezed,Object? logo = freezed,Object? banner = freezed,Object? primaryColor = freezed,Object? welcomeMessage = freezed,Object? city = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? responsibleName = freezed,Object? responsiblePhone = freezed,Object? rccm = freezed,Object? ifu = freezed,Object? commissionRate = freezed,Object? status = freezed,Object? rejectionReason = freezed,Object? suspensionReason = freezed,Object? infoRequestMessage = freezed,Object? activePaymentMethods = freezed,Object? subscriptionStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,primaryColor: freezed == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String?,welcomeMessage: freezed == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,responsibleName: freezed == responsibleName ? _self.responsibleName : responsibleName // ignore: cast_nullable_to_non_nullable
as String?,responsiblePhone: freezed == responsiblePhone ? _self.responsiblePhone : responsiblePhone // ignore: cast_nullable_to_non_nullable
as String?,rccm: freezed == rccm ? _self.rccm : rccm // ignore: cast_nullable_to_non_nullable
as String?,ifu: freezed == ifu ? _self.ifu : ifu // ignore: cast_nullable_to_non_nullable
as String?,commissionRate: freezed == commissionRate ? _self.commissionRate : commissionRate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status47eEnum?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,suspensionReason: freezed == suspensionReason ? _self.suspensionReason : suspensionReason // ignore: cast_nullable_to_non_nullable
as String?,infoRequestMessage: freezed == infoRequestMessage ? _self.infoRequestMessage : infoRequestMessage // ignore: cast_nullable_to_non_nullable
as String?,activePaymentMethods: freezed == activePaymentMethods ? _self.activePaymentMethods : activePaymentMethods // ignore: cast_nullable_to_non_nullable
as List<String>?,subscriptionStatus: freezed == subscriptionStatus ? _self.subscriptionStatus : subscriptionStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedCompanyDetail].
extension PatchedCompanyDetailPatterns on PatchedCompanyDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedCompanyDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedCompanyDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedCompanyDetail value)  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedCompanyDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedCompanyDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? sigle,  String? description,  String? logo,  String? banner, @JsonKey(name: 'primary_color')  String? primaryColor, @JsonKey(name: 'welcome_message')  String? welcomeMessage,  String? city,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone,  String? rccm,  String? ifu, @JsonKey(name: 'commission_rate')  String? commissionRate,  Status47eEnum? status, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(name: 'suspension_reason')  String? suspensionReason, @JsonKey(name: 'info_request_message')  String? infoRequestMessage, @JsonKey(name: 'active_payment_methods')  List<String>? activePaymentMethods, @JsonKey(name: 'subscription_status')  String? subscriptionStatus, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedCompanyDetail() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.description,_that.logo,_that.banner,_that.primaryColor,_that.welcomeMessage,_that.city,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone,_that.rccm,_that.ifu,_that.commissionRate,_that.status,_that.rejectionReason,_that.suspensionReason,_that.infoRequestMessage,_that.activePaymentMethods,_that.subscriptionStatus,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? sigle,  String? description,  String? logo,  String? banner, @JsonKey(name: 'primary_color')  String? primaryColor, @JsonKey(name: 'welcome_message')  String? welcomeMessage,  String? city,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone,  String? rccm,  String? ifu, @JsonKey(name: 'commission_rate')  String? commissionRate,  Status47eEnum? status, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(name: 'suspension_reason')  String? suspensionReason, @JsonKey(name: 'info_request_message')  String? infoRequestMessage, @JsonKey(name: 'active_payment_methods')  List<String>? activePaymentMethods, @JsonKey(name: 'subscription_status')  String? subscriptionStatus, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyDetail():
return $default(_that.id,_that.name,_that.sigle,_that.description,_that.logo,_that.banner,_that.primaryColor,_that.welcomeMessage,_that.city,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone,_that.rccm,_that.ifu,_that.commissionRate,_that.status,_that.rejectionReason,_that.suspensionReason,_that.infoRequestMessage,_that.activePaymentMethods,_that.subscriptionStatus,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? sigle,  String? description,  String? logo,  String? banner, @JsonKey(name: 'primary_color')  String? primaryColor, @JsonKey(name: 'welcome_message')  String? welcomeMessage,  String? city,  String? address,  String? phone,  String? email, @JsonKey(name: 'responsible_name')  String? responsibleName, @JsonKey(name: 'responsible_phone')  String? responsiblePhone,  String? rccm,  String? ifu, @JsonKey(name: 'commission_rate')  String? commissionRate,  Status47eEnum? status, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(name: 'suspension_reason')  String? suspensionReason, @JsonKey(name: 'info_request_message')  String? infoRequestMessage, @JsonKey(name: 'active_payment_methods')  List<String>? activePaymentMethods, @JsonKey(name: 'subscription_status')  String? subscriptionStatus, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatchedCompanyDetail() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.description,_that.logo,_that.banner,_that.primaryColor,_that.welcomeMessage,_that.city,_that.address,_that.phone,_that.email,_that.responsibleName,_that.responsiblePhone,_that.rccm,_that.ifu,_that.commissionRate,_that.status,_that.rejectionReason,_that.suspensionReason,_that.infoRequestMessage,_that.activePaymentMethods,_that.subscriptionStatus,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedCompanyDetail implements PatchedCompanyDetail {
  const _PatchedCompanyDetail({this.id, this.name, this.sigle, this.description, this.logo, this.banner, @JsonKey(name: 'primary_color') this.primaryColor, @JsonKey(name: 'welcome_message') this.welcomeMessage, this.city, this.address, this.phone, this.email, @JsonKey(name: 'responsible_name') this.responsibleName, @JsonKey(name: 'responsible_phone') this.responsiblePhone, this.rccm, this.ifu, @JsonKey(name: 'commission_rate') this.commissionRate, this.status, @JsonKey(name: 'rejection_reason') this.rejectionReason, @JsonKey(name: 'suspension_reason') this.suspensionReason, @JsonKey(name: 'info_request_message') this.infoRequestMessage, @JsonKey(name: 'active_payment_methods') final  List<String>? activePaymentMethods, @JsonKey(name: 'subscription_status') this.subscriptionStatus, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _activePaymentMethods = activePaymentMethods;
  factory _PatchedCompanyDetail.fromJson(Map<String, dynamic> json) => _$PatchedCompanyDetailFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? sigle;
@override final  String? description;
@override final  String? logo;
@override final  String? banner;
@override@JsonKey(name: 'primary_color') final  String? primaryColor;
@override@JsonKey(name: 'welcome_message') final  String? welcomeMessage;
@override final  String? city;
@override final  String? address;
@override final  String? phone;
@override final  String? email;
@override@JsonKey(name: 'responsible_name') final  String? responsibleName;
@override@JsonKey(name: 'responsible_phone') final  String? responsiblePhone;
@override final  String? rccm;
@override final  String? ifu;
@override@JsonKey(name: 'commission_rate') final  String? commissionRate;
@override final  Status47eEnum? status;
@override@JsonKey(name: 'rejection_reason') final  String? rejectionReason;
@override@JsonKey(name: 'suspension_reason') final  String? suspensionReason;
@override@JsonKey(name: 'info_request_message') final  String? infoRequestMessage;
 final  List<String>? _activePaymentMethods;
@override@JsonKey(name: 'active_payment_methods') List<String>? get activePaymentMethods {
  final value = _activePaymentMethods;
  if (value == null) return null;
  if (_activePaymentMethods is EqualUnmodifiableListView) return _activePaymentMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'subscription_status') final  String? subscriptionStatus;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of PatchedCompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedCompanyDetailCopyWith<_PatchedCompanyDetail> get copyWith => __$PatchedCompanyDetailCopyWithImpl<_PatchedCompanyDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedCompanyDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedCompanyDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.responsibleName, responsibleName) || other.responsibleName == responsibleName)&&(identical(other.responsiblePhone, responsiblePhone) || other.responsiblePhone == responsiblePhone)&&(identical(other.rccm, rccm) || other.rccm == rccm)&&(identical(other.ifu, ifu) || other.ifu == ifu)&&(identical(other.commissionRate, commissionRate) || other.commissionRate == commissionRate)&&(identical(other.status, status) || other.status == status)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.suspensionReason, suspensionReason) || other.suspensionReason == suspensionReason)&&(identical(other.infoRequestMessage, infoRequestMessage) || other.infoRequestMessage == infoRequestMessage)&&const DeepCollectionEquality().equals(other._activePaymentMethods, _activePaymentMethods)&&(identical(other.subscriptionStatus, subscriptionStatus) || other.subscriptionStatus == subscriptionStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,sigle,description,logo,banner,primaryColor,welcomeMessage,city,address,phone,email,responsibleName,responsiblePhone,rccm,ifu,commissionRate,status,rejectionReason,suspensionReason,infoRequestMessage,const DeepCollectionEquality().hash(_activePaymentMethods),subscriptionStatus,createdAt,updatedAt]);

@override
String toString() {
  return 'PatchedCompanyDetail(id: $id, name: $name, sigle: $sigle, description: $description, logo: $logo, banner: $banner, primaryColor: $primaryColor, welcomeMessage: $welcomeMessage, city: $city, address: $address, phone: $phone, email: $email, responsibleName: $responsibleName, responsiblePhone: $responsiblePhone, rccm: $rccm, ifu: $ifu, commissionRate: $commissionRate, status: $status, rejectionReason: $rejectionReason, suspensionReason: $suspensionReason, infoRequestMessage: $infoRequestMessage, activePaymentMethods: $activePaymentMethods, subscriptionStatus: $subscriptionStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatchedCompanyDetailCopyWith<$Res> implements $PatchedCompanyDetailCopyWith<$Res> {
  factory _$PatchedCompanyDetailCopyWith(_PatchedCompanyDetail value, $Res Function(_PatchedCompanyDetail) _then) = __$PatchedCompanyDetailCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? sigle, String? description, String? logo, String? banner,@JsonKey(name: 'primary_color') String? primaryColor,@JsonKey(name: 'welcome_message') String? welcomeMessage, String? city, String? address, String? phone, String? email,@JsonKey(name: 'responsible_name') String? responsibleName,@JsonKey(name: 'responsible_phone') String? responsiblePhone, String? rccm, String? ifu,@JsonKey(name: 'commission_rate') String? commissionRate, Status47eEnum? status,@JsonKey(name: 'rejection_reason') String? rejectionReason,@JsonKey(name: 'suspension_reason') String? suspensionReason,@JsonKey(name: 'info_request_message') String? infoRequestMessage,@JsonKey(name: 'active_payment_methods') List<String>? activePaymentMethods,@JsonKey(name: 'subscription_status') String? subscriptionStatus,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$PatchedCompanyDetailCopyWithImpl<$Res>
    implements _$PatchedCompanyDetailCopyWith<$Res> {
  __$PatchedCompanyDetailCopyWithImpl(this._self, this._then);

  final _PatchedCompanyDetail _self;
  final $Res Function(_PatchedCompanyDetail) _then;

/// Create a copy of PatchedCompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? sigle = freezed,Object? description = freezed,Object? logo = freezed,Object? banner = freezed,Object? primaryColor = freezed,Object? welcomeMessage = freezed,Object? city = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? responsibleName = freezed,Object? responsiblePhone = freezed,Object? rccm = freezed,Object? ifu = freezed,Object? commissionRate = freezed,Object? status = freezed,Object? rejectionReason = freezed,Object? suspensionReason = freezed,Object? infoRequestMessage = freezed,Object? activePaymentMethods = freezed,Object? subscriptionStatus = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PatchedCompanyDetail(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,primaryColor: freezed == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String?,welcomeMessage: freezed == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,responsibleName: freezed == responsibleName ? _self.responsibleName : responsibleName // ignore: cast_nullable_to_non_nullable
as String?,responsiblePhone: freezed == responsiblePhone ? _self.responsiblePhone : responsiblePhone // ignore: cast_nullable_to_non_nullable
as String?,rccm: freezed == rccm ? _self.rccm : rccm // ignore: cast_nullable_to_non_nullable
as String?,ifu: freezed == ifu ? _self.ifu : ifu // ignore: cast_nullable_to_non_nullable
as String?,commissionRate: freezed == commissionRate ? _self.commissionRate : commissionRate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status47eEnum?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,suspensionReason: freezed == suspensionReason ? _self.suspensionReason : suspensionReason // ignore: cast_nullable_to_non_nullable
as String?,infoRequestMessage: freezed == infoRequestMessage ? _self.infoRequestMessage : infoRequestMessage // ignore: cast_nullable_to_non_nullable
as String?,activePaymentMethods: freezed == activePaymentMethods ? _self._activePaymentMethods : activePaymentMethods // ignore: cast_nullable_to_non_nullable
as List<String>?,subscriptionStatus: freezed == subscriptionStatus ? _self.subscriptionStatus : subscriptionStatus // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
