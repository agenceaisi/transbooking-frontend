// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewCreate {

 int get trip; int get rating; String? get comment;
/// Create a copy of ReviewCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCreateCopyWith<ReviewCreate> get copyWith => _$ReviewCreateCopyWithImpl<ReviewCreate>(this as ReviewCreate, _$identity);

  /// Serializes this ReviewCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewCreate&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,rating,comment);

@override
String toString() {
  return 'ReviewCreate(trip: $trip, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $ReviewCreateCopyWith<$Res>  {
  factory $ReviewCreateCopyWith(ReviewCreate value, $Res Function(ReviewCreate) _then) = _$ReviewCreateCopyWithImpl;
@useResult
$Res call({
 int trip, int rating, String? comment
});




}
/// @nodoc
class _$ReviewCreateCopyWithImpl<$Res>
    implements $ReviewCreateCopyWith<$Res> {
  _$ReviewCreateCopyWithImpl(this._self, this._then);

  final ReviewCreate _self;
  final $Res Function(ReviewCreate) _then;

/// Create a copy of ReviewCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trip = null,Object? rating = null,Object? comment = freezed,}) {
  return _then(_self.copyWith(
trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewCreate].
extension ReviewCreatePatterns on ReviewCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewCreate value)  $default,){
final _that = this;
switch (_that) {
case _ReviewCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int trip,  int rating,  String? comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewCreate() when $default != null:
return $default(_that.trip,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int trip,  int rating,  String? comment)  $default,) {final _that = this;
switch (_that) {
case _ReviewCreate():
return $default(_that.trip,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int trip,  int rating,  String? comment)?  $default,) {final _that = this;
switch (_that) {
case _ReviewCreate() when $default != null:
return $default(_that.trip,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewCreate implements ReviewCreate {
  const _ReviewCreate({required this.trip, required this.rating, this.comment});
  factory _ReviewCreate.fromJson(Map<String, dynamic> json) => _$ReviewCreateFromJson(json);

@override final  int trip;
@override final  int rating;
@override final  String? comment;

/// Create a copy of ReviewCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCreateCopyWith<_ReviewCreate> get copyWith => __$ReviewCreateCopyWithImpl<_ReviewCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewCreate&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trip,rating,comment);

@override
String toString() {
  return 'ReviewCreate(trip: $trip, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$ReviewCreateCopyWith<$Res> implements $ReviewCreateCopyWith<$Res> {
  factory _$ReviewCreateCopyWith(_ReviewCreate value, $Res Function(_ReviewCreate) _then) = __$ReviewCreateCopyWithImpl;
@override @useResult
$Res call({
 int trip, int rating, String? comment
});




}
/// @nodoc
class __$ReviewCreateCopyWithImpl<$Res>
    implements _$ReviewCreateCopyWith<$Res> {
  __$ReviewCreateCopyWithImpl(this._self, this._then);

  final _ReviewCreate _self;
  final $Res Function(_ReviewCreate) _then;

/// Create a copy of ReviewCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trip = null,Object? rating = null,Object? comment = freezed,}) {
  return _then(_ReviewCreate(
trip: null == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
