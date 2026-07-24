// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_testimonial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeTestimonial {

 int get id; String get author; String get companyName; int get rating; String? get comment;
/// Create a copy of HomeTestimonial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTestimonialCopyWith<HomeTestimonial> get copyWith => _$HomeTestimonialCopyWithImpl<HomeTestimonial>(this as HomeTestimonial, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTestimonial&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,id,author,companyName,rating,comment);

@override
String toString() {
  return 'HomeTestimonial(id: $id, author: $author, companyName: $companyName, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $HomeTestimonialCopyWith<$Res>  {
  factory $HomeTestimonialCopyWith(HomeTestimonial value, $Res Function(HomeTestimonial) _then) = _$HomeTestimonialCopyWithImpl;
@useResult
$Res call({
 int id, String author, String companyName, int rating, String? comment
});




}
/// @nodoc
class _$HomeTestimonialCopyWithImpl<$Res>
    implements $HomeTestimonialCopyWith<$Res> {
  _$HomeTestimonialCopyWithImpl(this._self, this._then);

  final HomeTestimonial _self;
  final $Res Function(HomeTestimonial) _then;

/// Create a copy of HomeTestimonial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? author = null,Object? companyName = null,Object? rating = null,Object? comment = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeTestimonial].
extension HomeTestimonialPatterns on HomeTestimonial {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTestimonial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTestimonial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTestimonial value)  $default,){
final _that = this;
switch (_that) {
case _HomeTestimonial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTestimonial value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTestimonial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String author,  String companyName,  int rating,  String? comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTestimonial() when $default != null:
return $default(_that.id,_that.author,_that.companyName,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String author,  String companyName,  int rating,  String? comment)  $default,) {final _that = this;
switch (_that) {
case _HomeTestimonial():
return $default(_that.id,_that.author,_that.companyName,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String author,  String companyName,  int rating,  String? comment)?  $default,) {final _that = this;
switch (_that) {
case _HomeTestimonial() when $default != null:
return $default(_that.id,_that.author,_that.companyName,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _HomeTestimonial extends HomeTestimonial {
  const _HomeTestimonial({required this.id, required this.author, required this.companyName, required this.rating, this.comment}): super._();
  

@override final  int id;
@override final  String author;
@override final  String companyName;
@override final  int rating;
@override final  String? comment;

/// Create a copy of HomeTestimonial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTestimonialCopyWith<_HomeTestimonial> get copyWith => __$HomeTestimonialCopyWithImpl<_HomeTestimonial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTestimonial&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,id,author,companyName,rating,comment);

@override
String toString() {
  return 'HomeTestimonial(id: $id, author: $author, companyName: $companyName, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$HomeTestimonialCopyWith<$Res> implements $HomeTestimonialCopyWith<$Res> {
  factory _$HomeTestimonialCopyWith(_HomeTestimonial value, $Res Function(_HomeTestimonial) _then) = __$HomeTestimonialCopyWithImpl;
@override @useResult
$Res call({
 int id, String author, String companyName, int rating, String? comment
});




}
/// @nodoc
class __$HomeTestimonialCopyWithImpl<$Res>
    implements _$HomeTestimonialCopyWith<$Res> {
  __$HomeTestimonialCopyWithImpl(this._self, this._then);

  final _HomeTestimonial _self;
  final $Res Function(_HomeTestimonial) _then;

/// Create a copy of HomeTestimonial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? author = null,Object? companyName = null,Object? rating = null,Object? comment = freezed,}) {
  return _then(_HomeTestimonial(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
