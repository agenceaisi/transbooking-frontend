// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_review_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedReviewRead {

 int? get id; int? get company;@JsonKey(name: 'company_name') String? get companyName; int? get trip; String? get author; int? get rating; String? get comment; String? get response;@JsonKey(name: 'responded_at') DateTime? get respondedAt;@JsonKey(name: 'is_flagged') bool? get isFlagged;@JsonKey(name: 'is_testimonial') bool? get isTestimonial;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of PatchedReviewRead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedReviewReadCopyWith<PatchedReviewRead> get copyWith => _$PatchedReviewReadCopyWithImpl<PatchedReviewRead>(this as PatchedReviewRead, _$identity);

  /// Serializes this PatchedReviewRead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedReviewRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.author, author) || other.author == author)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.response, response) || other.response == response)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&(identical(other.isTestimonial, isTestimonial) || other.isTestimonial == isTestimonial)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,trip,author,rating,comment,response,respondedAt,isFlagged,isTestimonial,createdAt);

@override
String toString() {
  return 'PatchedReviewRead(id: $id, company: $company, companyName: $companyName, trip: $trip, author: $author, rating: $rating, comment: $comment, response: $response, respondedAt: $respondedAt, isFlagged: $isFlagged, isTestimonial: $isTestimonial, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PatchedReviewReadCopyWith<$Res>  {
  factory $PatchedReviewReadCopyWith(PatchedReviewRead value, $Res Function(PatchedReviewRead) _then) = _$PatchedReviewReadCopyWithImpl;
@useResult
$Res call({
 int? id, int? company,@JsonKey(name: 'company_name') String? companyName, int? trip, String? author, int? rating, String? comment, String? response,@JsonKey(name: 'responded_at') DateTime? respondedAt,@JsonKey(name: 'is_flagged') bool? isFlagged,@JsonKey(name: 'is_testimonial') bool? isTestimonial,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$PatchedReviewReadCopyWithImpl<$Res>
    implements $PatchedReviewReadCopyWith<$Res> {
  _$PatchedReviewReadCopyWithImpl(this._self, this._then);

  final PatchedReviewRead _self;
  final $Res Function(PatchedReviewRead) _then;

/// Create a copy of PatchedReviewRead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? company = freezed,Object? companyName = freezed,Object? trip = freezed,Object? author = freezed,Object? rating = freezed,Object? comment = freezed,Object? response = freezed,Object? respondedAt = freezed,Object? isFlagged = freezed,Object? isTestimonial = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isFlagged: freezed == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool?,isTestimonial: freezed == isTestimonial ? _self.isTestimonial : isTestimonial // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedReviewRead].
extension PatchedReviewReadPatterns on PatchedReviewRead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedReviewRead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedReviewRead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedReviewRead value)  $default,){
final _that = this;
switch (_that) {
case _PatchedReviewRead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedReviewRead value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedReviewRead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? company, @JsonKey(name: 'company_name')  String? companyName,  int? trip,  String? author,  int? rating,  String? comment,  String? response, @JsonKey(name: 'responded_at')  DateTime? respondedAt, @JsonKey(name: 'is_flagged')  bool? isFlagged, @JsonKey(name: 'is_testimonial')  bool? isTestimonial, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedReviewRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.trip,_that.author,_that.rating,_that.comment,_that.response,_that.respondedAt,_that.isFlagged,_that.isTestimonial,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? company, @JsonKey(name: 'company_name')  String? companyName,  int? trip,  String? author,  int? rating,  String? comment,  String? response, @JsonKey(name: 'responded_at')  DateTime? respondedAt, @JsonKey(name: 'is_flagged')  bool? isFlagged, @JsonKey(name: 'is_testimonial')  bool? isTestimonial, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PatchedReviewRead():
return $default(_that.id,_that.company,_that.companyName,_that.trip,_that.author,_that.rating,_that.comment,_that.response,_that.respondedAt,_that.isFlagged,_that.isTestimonial,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? company, @JsonKey(name: 'company_name')  String? companyName,  int? trip,  String? author,  int? rating,  String? comment,  String? response, @JsonKey(name: 'responded_at')  DateTime? respondedAt, @JsonKey(name: 'is_flagged')  bool? isFlagged, @JsonKey(name: 'is_testimonial')  bool? isTestimonial, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PatchedReviewRead() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.trip,_that.author,_that.rating,_that.comment,_that.response,_that.respondedAt,_that.isFlagged,_that.isTestimonial,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedReviewRead implements PatchedReviewRead {
  const _PatchedReviewRead({this.id, this.company, @JsonKey(name: 'company_name') this.companyName, this.trip, this.author, this.rating, this.comment, this.response, @JsonKey(name: 'responded_at') this.respondedAt, @JsonKey(name: 'is_flagged') this.isFlagged, @JsonKey(name: 'is_testimonial') this.isTestimonial, @JsonKey(name: 'created_at') this.createdAt});
  factory _PatchedReviewRead.fromJson(Map<String, dynamic> json) => _$PatchedReviewReadFromJson(json);

@override final  int? id;
@override final  int? company;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override final  int? trip;
@override final  String? author;
@override final  int? rating;
@override final  String? comment;
@override final  String? response;
@override@JsonKey(name: 'responded_at') final  DateTime? respondedAt;
@override@JsonKey(name: 'is_flagged') final  bool? isFlagged;
@override@JsonKey(name: 'is_testimonial') final  bool? isTestimonial;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of PatchedReviewRead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedReviewReadCopyWith<_PatchedReviewRead> get copyWith => __$PatchedReviewReadCopyWithImpl<_PatchedReviewRead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedReviewReadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedReviewRead&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.author, author) || other.author == author)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.response, response) || other.response == response)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&(identical(other.isTestimonial, isTestimonial) || other.isTestimonial == isTestimonial)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,trip,author,rating,comment,response,respondedAt,isFlagged,isTestimonial,createdAt);

@override
String toString() {
  return 'PatchedReviewRead(id: $id, company: $company, companyName: $companyName, trip: $trip, author: $author, rating: $rating, comment: $comment, response: $response, respondedAt: $respondedAt, isFlagged: $isFlagged, isTestimonial: $isTestimonial, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PatchedReviewReadCopyWith<$Res> implements $PatchedReviewReadCopyWith<$Res> {
  factory _$PatchedReviewReadCopyWith(_PatchedReviewRead value, $Res Function(_PatchedReviewRead) _then) = __$PatchedReviewReadCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? company,@JsonKey(name: 'company_name') String? companyName, int? trip, String? author, int? rating, String? comment, String? response,@JsonKey(name: 'responded_at') DateTime? respondedAt,@JsonKey(name: 'is_flagged') bool? isFlagged,@JsonKey(name: 'is_testimonial') bool? isTestimonial,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$PatchedReviewReadCopyWithImpl<$Res>
    implements _$PatchedReviewReadCopyWith<$Res> {
  __$PatchedReviewReadCopyWithImpl(this._self, this._then);

  final _PatchedReviewRead _self;
  final $Res Function(_PatchedReviewRead) _then;

/// Create a copy of PatchedReviewRead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? company = freezed,Object? companyName = freezed,Object? trip = freezed,Object? author = freezed,Object? rating = freezed,Object? comment = freezed,Object? response = freezed,Object? respondedAt = freezed,Object? isFlagged = freezed,Object? isTestimonial = freezed,Object? createdAt = freezed,}) {
  return _then(_PatchedReviewRead(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String?,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isFlagged: freezed == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool?,isTestimonial: freezed == isTestimonial ? _self.isTestimonial : isTestimonial // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
