// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testimonial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Testimonial {

 int get id; int get company;@JsonKey(name: 'company_name') String get companyName; String get author; int get rating; String? get comment;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestimonialCopyWith<Testimonial> get copyWith => _$TestimonialCopyWithImpl<Testimonial>(this as Testimonial, _$identity);

  /// Serializes this Testimonial to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Testimonial&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.author, author) || other.author == author)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,author,rating,comment,createdAt);

@override
String toString() {
  return 'Testimonial(id: $id, company: $company, companyName: $companyName, author: $author, rating: $rating, comment: $comment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TestimonialCopyWith<$Res>  {
  factory $TestimonialCopyWith(Testimonial value, $Res Function(Testimonial) _then) = _$TestimonialCopyWithImpl;
@useResult
$Res call({
 int id, int company,@JsonKey(name: 'company_name') String companyName, String author, int rating, String? comment,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$TestimonialCopyWithImpl<$Res>
    implements $TestimonialCopyWith<$Res> {
  _$TestimonialCopyWithImpl(this._self, this._then);

  final Testimonial _self;
  final $Res Function(Testimonial) _then;

/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? companyName = null,Object? author = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Testimonial].
extension TestimonialPatterns on Testimonial {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Testimonial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Testimonial value)  $default,){
final _that = this;
switch (_that) {
case _Testimonial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Testimonial value)?  $default,){
final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  String author,  int rating,  String? comment, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.author,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  String author,  int rating,  String? comment, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Testimonial():
return $default(_that.id,_that.company,_that.companyName,_that.author,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int company, @JsonKey(name: 'company_name')  String companyName,  String author,  int rating,  String? comment, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Testimonial() when $default != null:
return $default(_that.id,_that.company,_that.companyName,_that.author,_that.rating,_that.comment,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Testimonial implements Testimonial {
  const _Testimonial({required this.id, required this.company, @JsonKey(name: 'company_name') required this.companyName, required this.author, required this.rating, this.comment, @JsonKey(name: 'created_at') required this.createdAt});
  factory _Testimonial.fromJson(Map<String, dynamic> json) => _$TestimonialFromJson(json);

@override final  int id;
@override final  int company;
@override@JsonKey(name: 'company_name') final  String companyName;
@override final  String author;
@override final  int rating;
@override final  String? comment;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestimonialCopyWith<_Testimonial> get copyWith => __$TestimonialCopyWithImpl<_Testimonial>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestimonialToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Testimonial&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.author, author) || other.author == author)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,companyName,author,rating,comment,createdAt);

@override
String toString() {
  return 'Testimonial(id: $id, company: $company, companyName: $companyName, author: $author, rating: $rating, comment: $comment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TestimonialCopyWith<$Res> implements $TestimonialCopyWith<$Res> {
  factory _$TestimonialCopyWith(_Testimonial value, $Res Function(_Testimonial) _then) = __$TestimonialCopyWithImpl;
@override @useResult
$Res call({
 int id, int company,@JsonKey(name: 'company_name') String companyName, String author, int rating, String? comment,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$TestimonialCopyWithImpl<$Res>
    implements _$TestimonialCopyWith<$Res> {
  __$TestimonialCopyWithImpl(this._self, this._then);

  final _Testimonial _self;
  final $Res Function(_Testimonial) _then;

/// Create a copy of Testimonial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? companyName = null,Object? author = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,}) {
  return _then(_Testimonial(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as int,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
