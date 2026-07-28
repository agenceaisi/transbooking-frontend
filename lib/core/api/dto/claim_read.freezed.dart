// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClaimRead {

 int get id; int get company;@JsonKey(name: 'company_name') String get companyName; int? get booking;@JsonKey(name: 'ticket_number') String get ticketNumber;@JsonKey(name: 'claim_type') ClaimTypeEnum get claimType;@JsonKey(name: 'claim_type_display') String get claimTypeDisplay; String get subject; String get description; ClaimReadStatusEnum? get status;@JsonKey(name: 'status_display') String get statusDisplay; String? get response;@JsonKey(name: 'responded_at') DateTime? get respondedAt;@JsonKey(name: 'is_overdue') bool get isOverdue; List<ClaimAttachment> get attachments;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of ClaimRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimReadCopyWith<ClaimRead> get copyWith => _$ClaimReadCopyWithImpl<ClaimRead>(this as ClaimRead, _$identity);

  /// Serializes this ClaimRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.booking, booking) || other.booking == booking)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimTypeDisplay, claimTypeDisplay) || other.claimTypeDisplay == claimTypeDisplay)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.response, response) || other.response == response)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.isOverdue, isOverdue) || other.isOverdue == isOverdue)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,booking,ticketNumber,claimType,claimTypeDisplay,subject,description,status,statusDisplay,response,respondedAt,isOverdue,const DeepCollectionEquality().hash(attachments),createdAt,updatedAt);

@override
String toString() {
  return 'ClaimRead(id: $id, company: $company, companyName: $companyName, booking: $booking, ticketNumber: $ticketNumber, claimType: $claimType, claimTypeDisplay: $claimTypeDisplay, subject: $subject, description: $description, status: $status, statusDisplay: $statusDisplay, response: $response, respondedAt: $respondedAt, isOverdue: $isOverdue, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ClaimReadCopyWith<$Res>  {
  factory $ClaimReadCopyWith(ClaimRead value, $Res Function(ClaimRead) _then) = _$ClaimReadCopyWithImpl;
@useResult
$Res call({
 int id, int company,@JsonKey(name: 'company_name') String companyName, int? booking,@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'claim_type') ClaimTypeEnum claimType,@JsonKey(name: 'claim_type_display') String claimTypeDisplay, String subject, String description, ClaimReadStatusEnum? status,@JsonKey(name: 'status_display') String statusDisplay, String? response,@JsonKey(name: 'responded_at') DateTime? respondedAt,@JsonKey(name: 'is_overdue') bool isOverdue, List<ClaimAttachment> attachments,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$ClaimReadCopyWithImpl<$Res>
    implements $ClaimReadCopyWith<$Res> {
  _$ClaimReadCopyWithImpl(this._self, this._then);

  final ClaimRead _self;
  final $Res Function(ClaimRead) _then;

/// Create a copy of ClaimRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? companyName = null,Object? booking = freezed,Object? ticketNumber = null,Object? claimType = null,Object? claimTypeDisplay = null,Object? subject = null,Object? description = null,Object? status = freezed,Object? statusDisplay = null,Object? response = freezed,Object? respondedAt = freezed,Object? isOverdue = null,Object? attachments = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as int?,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimTypeEnum,claimTypeDisplay: null == claimTypeDisplay ? _self.claimTypeDisplay : claimTypeDisplay // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimReadStatusEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOverdue: null == isOverdue ? _self.isOverdue : isOverdue // ignore: cast_nullable_to_non_nullable
as bool,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ClaimAttachment>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimRead].
extension ClaimReadPatterns on ClaimRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimRead value)  $default,){
final _that = this;
switch (_that) {
case _ClaimRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimRead value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  int? booking, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'claim_type')  ClaimTypeEnum claimType, @JsonKey(name: 'claim_type_display')  String claimTypeDisplay,  String subject,  String description,  ClaimReadStatusEnum? status, @JsonKey(name: 'status_display')  String statusDisplay,  String? response, @JsonKey(name: 'responded_at')  DateTime? respondedAt, @JsonKey(name: 'is_overdue')  bool isOverdue,  List<ClaimAttachment> attachments, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.booking,_that.ticketNumber,_that.claimType,_that.claimTypeDisplay,_that.subject,_that.description,_that.status,_that.statusDisplay,_that.response,_that.respondedAt,_that.isOverdue,_that.attachments,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  int? booking, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'claim_type')  ClaimTypeEnum claimType, @JsonKey(name: 'claim_type_display')  String claimTypeDisplay,  String subject,  String description,  ClaimReadStatusEnum? status, @JsonKey(name: 'status_display')  String statusDisplay,  String? response, @JsonKey(name: 'responded_at')  DateTime? respondedAt, @JsonKey(name: 'is_overdue')  bool isOverdue,  List<ClaimAttachment> attachments, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ClaimRead():
return $default(_that.id,_that.company,_that.companyName,_that.booking,_that.ticketNumber,_that.claimType,_that.claimTypeDisplay,_that.subject,_that.description,_that.status,_that.statusDisplay,_that.response,_that.respondedAt,_that.isOverdue,_that.attachments,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  int? booking, @JsonKey(name: 'ticket_number')  String ticketNumber, @JsonKey(name: 'claim_type')  ClaimTypeEnum claimType, @JsonKey(name: 'claim_type_display')  String claimTypeDisplay,  String subject,  String description,  ClaimReadStatusEnum? status, @JsonKey(name: 'status_display')  String statusDisplay,  String? response, @JsonKey(name: 'responded_at')  DateTime? respondedAt, @JsonKey(name: 'is_overdue')  bool isOverdue,  List<ClaimAttachment> attachments, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ClaimRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.booking,_that.ticketNumber,_that.claimType,_that.claimTypeDisplay,_that.subject,_that.description,_that.status,_that.statusDisplay,_that.response,_that.respondedAt,_that.isOverdue,_that.attachments,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClaimRead implements ClaimRead {
  const _ClaimRead({required this.id, required this.company, @JsonKey(name: 'company_name') required this.companyName, this.booking, @JsonKey(name: 'ticket_number') required this.ticketNumber, @JsonKey(name: 'claim_type') required this.claimType, @JsonKey(name: 'claim_type_display') required this.claimTypeDisplay, required this.subject, required this.description, this.status, @JsonKey(name: 'status_display') required this.statusDisplay, this.response, @JsonKey(name: 'responded_at') this.respondedAt, @JsonKey(name: 'is_overdue') required this.isOverdue, required final  List<ClaimAttachment> attachments, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _attachments = attachments;
  factory _ClaimRead.fromJson(Map<String, dynamic> json) => _$ClaimReadFromJson(json);

@override final  int id;
@override final  int company;
@override@JsonKey(name: 'company_name') final  String companyName;
@override final  int? booking;
@override@JsonKey(name: 'ticket_number') final  String ticketNumber;
@override@JsonKey(name: 'claim_type') final  ClaimTypeEnum claimType;
@override@JsonKey(name: 'claim_type_display') final  String claimTypeDisplay;
@override final  String subject;
@override final  String description;
@override final  ClaimReadStatusEnum? status;
@override@JsonKey(name: 'status_display') final  String statusDisplay;
@override final  String? response;
@override@JsonKey(name: 'responded_at') final  DateTime? respondedAt;
@override@JsonKey(name: 'is_overdue') final  bool isOverdue;
 final  List<ClaimAttachment> _attachments;
@override List<ClaimAttachment> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of ClaimRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimReadCopyWith<_ClaimRead> get copyWith => __$ClaimReadCopyWithImpl<_ClaimRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClaimReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.booking, booking) || other.booking == booking)&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.claimType, claimType) || other.claimType == claimType)&&(identical(other.claimTypeDisplay, claimTypeDisplay) || other.claimTypeDisplay == claimTypeDisplay)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplay, statusDisplay) || other.statusDisplay == statusDisplay)&&(identical(other.response, response) || other.response == response)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.isOverdue, isOverdue) || other.isOverdue == isOverdue)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,booking,ticketNumber,claimType,claimTypeDisplay,subject,description,status,statusDisplay,response,respondedAt,isOverdue,const DeepCollectionEquality().hash(_attachments),createdAt,updatedAt);

@override
String toString() {
  return 'ClaimRead(id: $id, company: $company, companyName: $companyName, booking: $booking, ticketNumber: $ticketNumber, claimType: $claimType, claimTypeDisplay: $claimTypeDisplay, subject: $subject, description: $description, status: $status, statusDisplay: $statusDisplay, response: $response, respondedAt: $respondedAt, isOverdue: $isOverdue, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ClaimReadCopyWith<$Res> implements $ClaimReadCopyWith<$Res> {
  factory _$ClaimReadCopyWith(_ClaimRead value, $Res Function(_ClaimRead) _then) = __$ClaimReadCopyWithImpl;
@override @useResult
$Res call({
 int id, int company,@JsonKey(name: 'company_name') String companyName, int? booking,@JsonKey(name: 'ticket_number') String ticketNumber,@JsonKey(name: 'claim_type') ClaimTypeEnum claimType,@JsonKey(name: 'claim_type_display') String claimTypeDisplay, String subject, String description, ClaimReadStatusEnum? status,@JsonKey(name: 'status_display') String statusDisplay, String? response,@JsonKey(name: 'responded_at') DateTime? respondedAt,@JsonKey(name: 'is_overdue') bool isOverdue, List<ClaimAttachment> attachments,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$ClaimReadCopyWithImpl<$Res>
    implements _$ClaimReadCopyWith<$Res> {
  __$ClaimReadCopyWithImpl(this._self, this._then);

  final _ClaimRead _self;
  final $Res Function(_ClaimRead) _then;

/// Create a copy of ClaimRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? companyName = null,Object? booking = freezed,Object? ticketNumber = null,Object? claimType = null,Object? claimTypeDisplay = null,Object? subject = null,Object? description = null,Object? status = freezed,Object? statusDisplay = null,Object? response = freezed,Object? respondedAt = freezed,Object? isOverdue = null,Object? attachments = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ClaimRead(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as int?,ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,claimType: null == claimType ? _self.claimType : claimType // ignore: cast_nullable_to_non_nullable
as ClaimTypeEnum,claimTypeDisplay: null == claimTypeDisplay ? _self.claimTypeDisplay : claimTypeDisplay // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimReadStatusEnum?,statusDisplay: null == statusDisplay ? _self.statusDisplay : statusDisplay // ignore: cast_nullable_to_non_nullable
as String,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOverdue: null == isOverdue ? _self.isOverdue : isOverdue // ignore: cast_nullable_to_non_nullable
as bool,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ClaimAttachment>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
