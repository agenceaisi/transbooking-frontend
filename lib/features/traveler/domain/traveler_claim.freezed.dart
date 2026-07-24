// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_claim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TravelerClaim {

 int get id; String get companyName; String get ticketNumber; ClaimTypeKind get claimType; String get claimTypeDisplay; String get subject; String get description; ClaimStatusKind? get status; String get statusDisplay; String? get response; DateTime? get respondedAt;/// Vrai si aucune réponse n'est arrivée sous 48 h (annoté côté serveur).
 bool get isOverdue; DateTime get createdAt;
/// Create a copy of TravelerClaim
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerClaimCopyWith<TravelerClaim> get copyWith => _$TravelerClaimCopyWithImpl<TravelerClaim>(this as TravelerClaim, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerClaim&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimTypeDisplay, claimTypeDisplay) || other.claimTypeDisplay == claimTypeDisplay)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.response, response) || other.response == response)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.isOverdue, isOverdue) || other.isOverdue == isOverdue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyName,ticketNumber,claimType,claimTypeDisplay,subject,description,status,statusDisplay,response,respondedAt,isOverdue,createdAt);

@override
String toString() {
  return 'TravelerClaim(id: $id, companyName: $companyName, ticketNumber: $ticketNumber, claimType: $claimType, claimTypeDisplay: $claimTypeDisplay, subject: $subject, description: $description, status: $status, statusDisplay: $statusDisplay, response: $response, respondedAt: $respondedAt, isOverdue: $isOverdue, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TravelerClaimCopyWith<$Res>  {
  factory $TravelerClaimCopyWith(TravelerClaim value, $Res Function(TravelerClaim) _then) = _$TravelerClaimCopyWithImpl;
@useResult
$Res call({
 int id, String companyName, String ticketNumber, ClaimTypeKind claimType, String claimTypeDisplay, String subject, String description, ClaimStatusKind? status, String statusDisplay, String? response, DateTime? respondedAt, bool isOverdue, DateTime createdAt
});




}
/// @nodoc
class _$TravelerClaimCopyWithImpl<$Res>
    implements $TravelerClaimCopyWith<$Res> {
  _$TravelerClaimCopyWithImpl(this._self, this._then);

  final TravelerClaim _self;
  final $Res Function(TravelerClaim) _then;

/// Create a copy of TravelerClaim
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyName = null,Object? ticketNumber = null,Object? claimType = null,Object? claimTypeDisplay = null,Object? subject = null,Object? description = null,Object? status = freezed,Object? statusDisplay = null,Object? response = freezed,Object? respondedAt = freezed,Object? isOverdue = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimTypeKind,claimTypeDisplay: null == claimTypeDisplay ? _self.claimTypeDisplay : claimTypeDisplay // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatusKind?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOverdue: null == isOverdue ? _self.isOverdue : isOverdue // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerClaim].
extension TravelerClaimPatterns on TravelerClaim {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerClaim value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerClaim() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerClaim value)  $default,){
final _that = this;
switch (_that) {
case _TravelerClaim():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerClaim value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerClaim() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String companyName,  String ticketNumber,  ClaimTypeKind claimType,  String claimTypeDisplay,  String subject,  String description,  ClaimStatusKind? status,  String statusDisplay,  String? response,  DateTime? respondedAt,  bool isOverdue,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerClaim() when $default != null:
return $default(_that.id,_that.companyName,_that.ticketNumber,_that.claimType,_that.claimTypeDisplay,_that.subject,_that.description,_that.status,_that.statusDisplay,_that.response,_that.respondedAt,_that.isOverdue,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String companyName,  String ticketNumber,  ClaimTypeKind claimType,  String claimTypeDisplay,  String subject,  String description,  ClaimStatusKind? status,  String statusDisplay,  String? response,  DateTime? respondedAt,  bool isOverdue,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _TravelerClaim():
return $default(_that.id,_that.companyName,_that.ticketNumber,_that.claimType,_that.claimTypeDisplay,_that.subject,_that.description,_that.status,_that.statusDisplay,_that.response,_that.respondedAt,_that.isOverdue,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String companyName,  String ticketNumber,  ClaimTypeKind claimType,  String claimTypeDisplay,  String subject,  String description,  ClaimStatusKind? status,  String statusDisplay,  String? response,  DateTime? respondedAt,  bool isOverdue,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TravelerClaim() when $default != null:
return $default(_that.id,_that.companyName,_that.ticketNumber,_that.claimType,_that.claimTypeDisplay,_that.subject,_that.description,_that.status,_that.statusDisplay,_that.response,_that.respondedAt,_that.isOverdue,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _TravelerClaim implements TravelerClaim {
  const _TravelerClaim({required this.id, required this.companyName, required this.ticketNumber, required this.claimType, required this.claimTypeDisplay, required this.subject, required this.description, this.status, required this.statusDisplay, this.response, this.respondedAt, required this.isOverdue, required this.createdAt});
  

@override final  int id;
@override final  String companyName;
@override final  String ticketNumber;
@override final  ClaimTypeKind claimType;
@override final  String claimTypeDisplay;
@override final  String subject;
@override final  String description;
@override final  ClaimStatusKind? status;
@override final  String statusDisplay;
@override final  String? response;
@override final  DateTime? respondedAt;
/// Vrai si aucune réponse n'est arrivée sous 48 h (annoté côté serveur).
@override final  bool isOverdue;
@override final  DateTime createdAt;

/// Create a copy of TravelerClaim
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerClaimCopyWith<_TravelerClaim> get copyWith => __$TravelerClaimCopyWithImpl<_TravelerClaim>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerClaim&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimTypeDisplay, claimTypeDisplay) || other.claimTypeDisplay == claimTypeDisplay)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.response, response) || other.response == response)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.isOverdue, isOverdue) || other.isOverdue == isOverdue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyName,ticketNumber,claimType,claimTypeDisplay,subject,description,status,statusDisplay,response,respondedAt,isOverdue,createdAt);

@override
String toString() {
  return 'TravelerClaim(id: $id, companyName: $companyName, ticketNumber: $ticketNumber, claimType: $claimType, claimTypeDisplay: $claimTypeDisplay, subject: $subject, description: $description, status: $status, statusDisplay: $statusDisplay, response: $response, respondedAt: $respondedAt, isOverdue: $isOverdue, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TravelerClaimCopyWith<$Res> implements $TravelerClaimCopyWith<$Res> {
  factory _$TravelerClaimCopyWith(_TravelerClaim value, $Res Function(_TravelerClaim) _then) = __$TravelerClaimCopyWithImpl;
@override @useResult
$Res call({
 int id, String companyName, String ticketNumber, ClaimTypeKind claimType, String claimTypeDisplay, String subject, String description, ClaimStatusKind? status, String statusDisplay, String? response, DateTime? respondedAt, bool isOverdue, DateTime createdAt
});




}
/// @nodoc
class __$TravelerClaimCopyWithImpl<$Res>
    implements _$TravelerClaimCopyWith<$Res> {
  __$TravelerClaimCopyWithImpl(this._self, this._then);

  final _TravelerClaim _self;
  final $Res Function(_TravelerClaim) _then;

/// Create a copy of TravelerClaim
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyName = null,Object? ticketNumber = null,Object? claimType = null,Object? claimTypeDisplay = null,Object? subject = null,Object? description = null,Object? status = freezed,Object? statusDisplay = null,Object? response = freezed,Object? respondedAt = freezed,Object? isOverdue = null,Object? createdAt = null,}) {
  return _then(_TravelerClaim(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimTypeKind,claimTypeDisplay: null == claimTypeDisplay ? _self.claimTypeDisplay : claimTypeDisplay // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatusKind?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOverdue: null == isOverdue ? _self.isOverdue : isOverdue // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
