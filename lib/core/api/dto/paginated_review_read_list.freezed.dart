// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_review_read_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedReviewReadList {

 int get count; String? get next; String? get previous; List<ReviewRead> get results;
/// Create a copy of PaginatedReviewReadList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedReviewReadListCopyWith<PaginatedReviewReadList> get copyWith => _$PaginatedReviewReadListCopyWithImpl<PaginatedReviewReadList>(this as PaginatedReviewReadList, _$identity);

  /// Serializes this PaginatedReviewReadList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedReviewReadList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PaginatedReviewReadList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $PaginatedReviewReadListCopyWith<$Res>  {
  factory $PaginatedReviewReadListCopyWith(PaginatedReviewReadList value, $Res Function(PaginatedReviewReadList) _then) = _$PaginatedReviewReadListCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<ReviewRead> results
});




}
/// @nodoc
class _$PaginatedReviewReadListCopyWithImpl<$Res>
    implements $PaginatedReviewReadListCopyWith<$Res> {
  _$PaginatedReviewReadListCopyWithImpl(this._self, this._then);

  final PaginatedReviewReadList _self;
  final $Res Function(PaginatedReviewReadList) _then;

/// Create a copy of PaginatedReviewReadList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ReviewRead>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedReviewReadList].
extension PaginatedReviewReadListPatterns on PaginatedReviewReadList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedReviewReadList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedReviewReadList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedReviewReadList value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedReviewReadList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedReviewReadList value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedReviewReadList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<ReviewRead> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedReviewReadList() when $default != null:
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<ReviewRead> results)  $default,) {final _that = this;
switch (_that) {
case _PaginatedReviewReadList():
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String? next,  String? previous,  List<ReviewRead> results)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedReviewReadList() when $default != null:
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedReviewReadList implements PaginatedReviewReadList {
  const _PaginatedReviewReadList({required this.count, this.next, this.previous, required final  List<ReviewRead> results}): _results = results;
  factory _PaginatedReviewReadList.fromJson(Map<String, dynamic> json) => _$PaginatedReviewReadListFromJson(json);

@override final  int count;
@override final  String? next;
@override final  String? previous;
 final  List<ReviewRead> _results;
@override List<ReviewRead> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PaginatedReviewReadList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedReviewReadListCopyWith<_PaginatedReviewReadList> get copyWith => __$PaginatedReviewReadListCopyWithImpl<_PaginatedReviewReadList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedReviewReadListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedReviewReadList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PaginatedReviewReadList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PaginatedReviewReadListCopyWith<$Res> implements $PaginatedReviewReadListCopyWith<$Res> {
  factory _$PaginatedReviewReadListCopyWith(_PaginatedReviewReadList value, $Res Function(_PaginatedReviewReadList) _then) = __$PaginatedReviewReadListCopyWithImpl;
@override @useResult
$Res call({
 int count, String? next, String? previous, List<ReviewRead> results
});




}
/// @nodoc
class __$PaginatedReviewReadListCopyWithImpl<$Res>
    implements _$PaginatedReviewReadListCopyWith<$Res> {
  __$PaginatedReviewReadListCopyWithImpl(this._self, this._then);

  final _PaginatedReviewReadList _self;
  final $Res Function(_PaginatedReviewReadList) _then;

/// Create a copy of PaginatedReviewReadList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_PaginatedReviewReadList(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ReviewRead>,
  ));
}


}

// dart format on
