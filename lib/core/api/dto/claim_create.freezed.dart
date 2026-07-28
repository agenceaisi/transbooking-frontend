// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClaimCreate {

 int? get company; int? get booking;@JsonKey(name: 'claim_type') ClaimTypeEnum get claimType; String get subject; String get description; String? get attachment;
/// Create a copy of ClaimCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCreateCopyWith<ClaimCreate> get copyWith => _$ClaimCreateCopyWithImpl<ClaimCreate>(this as ClaimCreate, _$identity);

  /// Serializes this ClaimCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimCreate&&(identical(other.company, company) || other.company == company)&&(identical(other.booking, booking) || other.booking == booking)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.attachment, attachment) || other.attachment == attachment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,booking,claimType,subject,description,attachment);

@override
String toString() {
  return 'ClaimCreate(company: $company, booking: $booking, claimType: $claimType, subject: $subject, description: $description, attachment: $attachment)';
}


}

/// @nodoc
abstract mixin class $ClaimCreateCopyWith<$Res>  {
  factory $ClaimCreateCopyWith(ClaimCreate value, $Res Function(ClaimCreate) _then) = _$ClaimCreateCopyWithImpl;
@useResult
$Res call({
 int? company, int? booking,@JsonKey(name: 'claim_type') ClaimTypeEnum claimType, String subject, String description, String? attachment
});




}
/// @nodoc
class _$ClaimCreateCopyWithImpl<$Res>
    implements $ClaimCreateCopyWith<$Res> {
  _$ClaimCreateCopyWithImpl(this._self, this._then);

  final ClaimCreate _self;
  final $Res Function(ClaimCreate) _then;

/// Create a copy of ClaimCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = freezed,Object? booking = freezed,Object? claimType = null,Object? subject = null,Object? description = null,Object? attachment = freezed,}) {
  return _then(_self.copyWith(
company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as int?,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimTypeEnum,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimCreate].
extension ClaimCreatePatterns on ClaimCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimCreate value)  $default,){
final _that = this;
switch (_that) {
case _ClaimCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? company,  int? booking, @JsonKey(name: 'claim_type')  ClaimTypeEnum claimType,  String subject,  String description,  String? attachment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimCreate() when $default != null:
return $default(_that.company,_that.booking,_that.claimType,_that.subject,_that.description,_that.attachment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? company,  int? booking, @JsonKey(name: 'claim_type')  ClaimTypeEnum claimType,  String subject,  String description,  String? attachment)  $default,) {final _that = this;
switch (_that) {
case _ClaimCreate():
return $default(_that.company,_that.booking,_that.claimType,_that.subject,_that.description,_that.attachment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? company,  int? booking, @JsonKey(name: 'claim_type')  ClaimTypeEnum claimType,  String subject,  String description,  String? attachment)?  $default,) {final _that = this;
switch (_that) {
case _ClaimCreate() when $default != null:
return $default(_that.company,_that.booking,_that.claimType,_that.subject,_that.description,_that.attachment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimCreate implements ClaimCreate {
  const _ClaimCreate({this.company, this.booking, @JsonKey(name: 'claim_type') required this.claimType, required this.subject, required this.description, this.attachment});
  factory _ClaimCreate.fromJson(Map<String, dynamic> json) => _$ClaimCreateFromJson(json);

@override final  int? company;
@override final  int? booking;
@override@JsonKey(name: 'claim_type') final  ClaimTypeEnum claimType;
@override final  String subject;
@override final  String description;
@override final  String? attachment;

/// Create a copy of ClaimCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCreateCopyWith<_ClaimCreate> get copyWith => __$ClaimCreateCopyWithImpl<_ClaimCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimCreate&&(identical(other.company, company) || other.company == company)&&(identical(other.booking, booking) || other.booking == booking)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.attachment, attachment) || other.attachment == attachment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,booking,claimType,subject,description,attachment);

@override
String toString() {
  return 'ClaimCreate(company: $company, booking: $booking, claimType: $claimType, subject: $subject, description: $description, attachment: $attachment)';
}


}

/// @nodoc
abstract mixin class _$ClaimCreateCopyWith<$Res> implements $ClaimCreateCopyWith<$Res> {
  factory _$ClaimCreateCopyWith(_ClaimCreate value, $Res Function(_ClaimCreate) _then) = __$ClaimCreateCopyWithImpl;
@override @useResult
$Res call({
 int? company, int? booking,@JsonKey(name: 'claim_type') ClaimTypeEnum claimType, String subject, String description, String? attachment
});




}
/// @nodoc
class __$ClaimCreateCopyWithImpl<$Res>
    implements _$ClaimCreateCopyWith<$Res> {
  __$ClaimCreateCopyWithImpl(this._self, this._then);

  final _ClaimCreate _self;
  final $Res Function(_ClaimCreate) _then;

/// Create a copy of ClaimCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = freezed,Object? booking = freezed,Object? claimType = null,Object? subject = null,Object? description = null,Object? attachment = freezed,}) {
  return _then(_ClaimCreate(
company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as int?,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimTypeEnum,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
