// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_message_read_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedMessageReadList {

 int get count; String? get next; String? get previous; List<MessageRead> get results;
/// Create a copy of PaginatedMessageReadList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMessageReadListCopyWith<PaginatedMessageReadList> get copyWith => _$PaginatedMessageReadListCopyWithImpl<PaginatedMessageReadList>(this as PaginatedMessageReadList, _$identity);

  /// Serializes this PaginatedMessageReadList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMessageReadList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PaginatedMessageReadList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $PaginatedMessageReadListCopyWith<$Res>  {
  factory $PaginatedMessageReadListCopyWith(PaginatedMessageReadList value, $Res Function(PaginatedMessageReadList) _then) = _$PaginatedMessageReadListCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<MessageRead> results
});




}
/// @nodoc
class _$PaginatedMessageReadListCopyWithImpl<$Res>
    implements $PaginatedMessageReadListCopyWith<$Res> {
  _$PaginatedMessageReadListCopyWithImpl(this._self, this._then);

  final PaginatedMessageReadList _self;
  final $Res Function(PaginatedMessageReadList) _then;

/// Create a copy of PaginatedMessageReadList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<MessageRead>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedMessageReadList].
extension PaginatedMessageReadListPatterns on PaginatedMessageReadList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedMessageReadList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedMessageReadList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedMessageReadList value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedMessageReadList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedMessageReadList value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedMessageReadList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<MessageRead> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedMessageReadList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<MessageRead> results)  $default,) {final _that = this;
switch (_that) {
case _PaginatedMessageReadList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String? next,  String? previous,  List<MessageRead> results)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedMessageReadList() when $default != null:
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedMessageReadList implements PaginatedMessageReadList {
  const _PaginatedMessageReadList({required this.count, this.next, this.previous, required final  List<MessageRead> results}): _results = results;
  factory _PaginatedMessageReadList.fromJson(Map<String, dynamic> json) => _$PaginatedMessageReadListFromJson(json);

@override final  int count;
@override final  String? next;
@override final  String? previous;
 final  List<MessageRead> _results;
@override List<MessageRead> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PaginatedMessageReadList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedMessageReadListCopyWith<_PaginatedMessageReadList> get copyWith => __$PaginatedMessageReadListCopyWithImpl<_PaginatedMessageReadList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedMessageReadListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedMessageReadList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PaginatedMessageReadList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PaginatedMessageReadListCopyWith<$Res> implements $PaginatedMessageReadListCopyWith<$Res> {
  factory _$PaginatedMessageReadListCopyWith(_PaginatedMessageReadList value, $Res Function(_PaginatedMessageReadList) _then) = __$PaginatedMessageReadListCopyWithImpl;
@override @useResult
$Res call({
 int count, String? next, String? previous, List<MessageRead> results
});




}
/// @nodoc
class __$PaginatedMessageReadListCopyWithImpl<$Res>
    implements _$PaginatedMessageReadListCopyWith<$Res> {
  __$PaginatedMessageReadListCopyWithImpl(this._self, this._then);

  final _PaginatedMessageReadList _self;
  final $Res Function(_PaginatedMessageReadList) _then;

/// Create a copy of PaginatedMessageReadList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_PaginatedMessageReadList(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MessageRead>,
  ));
}


}

// dart format on
