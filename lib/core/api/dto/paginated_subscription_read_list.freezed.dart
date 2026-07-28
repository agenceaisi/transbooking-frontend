// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_subscription_read_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedSubscriptionReadList {

 int get count; String? get next; String? get previous; List<SubscriptionRead> get results;
/// Create a copy of PaginatedSubscriptionReadList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedSubscriptionReadListCopyWith<PaginatedSubscriptionReadList> get copyWith => _$PaginatedSubscriptionReadListCopyWithImpl<PaginatedSubscriptionReadList>(this as PaginatedSubscriptionReadList, _$identity);

  /// Serializes this PaginatedSubscriptionReadList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedSubscriptionReadList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PaginatedSubscriptionReadList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $PaginatedSubscriptionReadListCopyWith<$Res>  {
  factory $PaginatedSubscriptionReadListCopyWith(PaginatedSubscriptionReadList value, $Res Function(PaginatedSubscriptionReadList) _then) = _$PaginatedSubscriptionReadListCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<SubscriptionRead> results
});




}
/// @nodoc
class _$PaginatedSubscriptionReadListCopyWithImpl<$Res>
    implements $PaginatedSubscriptionReadListCopyWith<$Res> {
  _$PaginatedSubscriptionReadListCopyWithImpl(this._self, this._then);

  final PaginatedSubscriptionReadList _self;
  final $Res Function(PaginatedSubscriptionReadList) _then;

/// Create a copy of PaginatedSubscriptionReadList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SubscriptionRead>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedSubscriptionReadList].
extension PaginatedSubscriptionReadListPatterns on PaginatedSubscriptionReadList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedSubscriptionReadList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedSubscriptionReadList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedSubscriptionReadList value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedSubscriptionReadList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedSubscriptionReadList value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedSubscriptionReadList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<SubscriptionRead> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedSubscriptionReadList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<SubscriptionRead> results)  $default,) {final _that = this;
switch (_that) {
case _PaginatedSubscriptionReadList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String? next,  String? previous,  List<SubscriptionRead> results)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedSubscriptionReadList() when $default != null:
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedSubscriptionReadList implements PaginatedSubscriptionReadList {
  const _PaginatedSubscriptionReadList({required this.count, this.next, this.previous, required final  List<SubscriptionRead> results}): _results = results;
  factory _PaginatedSubscriptionReadList.fromJson(Map<String, dynamic> json) => _$PaginatedSubscriptionReadListFromJson(json);

@override final  int count;
@override final  String? next;
@override final  String? previous;
 final  List<SubscriptionRead> _results;
@override List<SubscriptionRead> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PaginatedSubscriptionReadList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedSubscriptionReadListCopyWith<_PaginatedSubscriptionReadList> get copyWith => __$PaginatedSubscriptionReadListCopyWithImpl<_PaginatedSubscriptionReadList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedSubscriptionReadListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedSubscriptionReadList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PaginatedSubscriptionReadList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PaginatedSubscriptionReadListCopyWith<$Res> implements $PaginatedSubscriptionReadListCopyWith<$Res> {
  factory _$PaginatedSubscriptionReadListCopyWith(_PaginatedSubscriptionReadList value, $Res Function(_PaginatedSubscriptionReadList) _then) = __$PaginatedSubscriptionReadListCopyWithImpl;
@override @useResult
$Res call({
 int count, String? next, String? previous, List<SubscriptionRead> results
});




}
/// @nodoc
class __$PaginatedSubscriptionReadListCopyWithImpl<$Res>
    implements _$PaginatedSubscriptionReadListCopyWith<$Res> {
  __$PaginatedSubscriptionReadListCopyWithImpl(this._self, this._then);

  final _PaginatedSubscriptionReadList _self;
  final $Res Function(_PaginatedSubscriptionReadList) _then;

/// Create a copy of PaginatedSubscriptionReadList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_PaginatedSubscriptionReadList(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SubscriptionRead>,
  ));
}


}

// dart format on
