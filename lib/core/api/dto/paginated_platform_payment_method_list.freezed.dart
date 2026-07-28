// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_platform_payment_method_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedPlatformPaymentMethodList {

 int get count; String? get next; String? get previous; List<PlatformPaymentMethod> get results;
/// Create a copy of PaginatedPlatformPaymentMethodList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedPlatformPaymentMethodListCopyWith<PaginatedPlatformPaymentMethodList> get copyWith => _$PaginatedPlatformPaymentMethodListCopyWithImpl<PaginatedPlatformPaymentMethodList>(this as PaginatedPlatformPaymentMethodList, _$identity);

  /// Serializes this PaginatedPlatformPaymentMethodList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedPlatformPaymentMethodList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PaginatedPlatformPaymentMethodList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $PaginatedPlatformPaymentMethodListCopyWith<$Res>  {
  factory $PaginatedPlatformPaymentMethodListCopyWith(PaginatedPlatformPaymentMethodList value, $Res Function(PaginatedPlatformPaymentMethodList) _then) = _$PaginatedPlatformPaymentMethodListCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<PlatformPaymentMethod> results
});




}
/// @nodoc
class _$PaginatedPlatformPaymentMethodListCopyWithImpl<$Res>
    implements $PaginatedPlatformPaymentMethodListCopyWith<$Res> {
  _$PaginatedPlatformPaymentMethodListCopyWithImpl(this._self, this._then);

  final PaginatedPlatformPaymentMethodList _self;
  final $Res Function(PaginatedPlatformPaymentMethodList) _then;

/// Create a copy of PaginatedPlatformPaymentMethodList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<PlatformPaymentMethod>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedPlatformPaymentMethodList].
extension PaginatedPlatformPaymentMethodListPatterns on PaginatedPlatformPaymentMethodList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedPlatformPaymentMethodList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedPlatformPaymentMethodList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedPlatformPaymentMethodList value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedPlatformPaymentMethodList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedPlatformPaymentMethodList value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedPlatformPaymentMethodList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<PlatformPaymentMethod> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedPlatformPaymentMethodList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<PlatformPaymentMethod> results)  $default,) {final _that = this;
switch (_that) {
case _PaginatedPlatformPaymentMethodList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String? next,  String? previous,  List<PlatformPaymentMethod> results)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedPlatformPaymentMethodList() when $default != null:
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedPlatformPaymentMethodList implements PaginatedPlatformPaymentMethodList {
  const _PaginatedPlatformPaymentMethodList({required this.count, this.next, this.previous, required final  List<PlatformPaymentMethod> results}): _results = results;
  factory _PaginatedPlatformPaymentMethodList.fromJson(Map<String, dynamic> json) => _$PaginatedPlatformPaymentMethodListFromJson(json);

@override final  int count;
@override final  String? next;
@override final  String? previous;
 final  List<PlatformPaymentMethod> _results;
@override List<PlatformPaymentMethod> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PaginatedPlatformPaymentMethodList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedPlatformPaymentMethodListCopyWith<_PaginatedPlatformPaymentMethodList> get copyWith => __$PaginatedPlatformPaymentMethodListCopyWithImpl<_PaginatedPlatformPaymentMethodList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedPlatformPaymentMethodListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedPlatformPaymentMethodList&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PaginatedPlatformPaymentMethodList(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PaginatedPlatformPaymentMethodListCopyWith<$Res> implements $PaginatedPlatformPaymentMethodListCopyWith<$Res> {
  factory _$PaginatedPlatformPaymentMethodListCopyWith(_PaginatedPlatformPaymentMethodList value, $Res Function(_PaginatedPlatformPaymentMethodList) _then) = __$PaginatedPlatformPaymentMethodListCopyWithImpl;
@override @useResult
$Res call({
 int count, String? next, String? previous, List<PlatformPaymentMethod> results
});




}
/// @nodoc
class __$PaginatedPlatformPaymentMethodListCopyWithImpl<$Res>
    implements _$PaginatedPlatformPaymentMethodListCopyWith<$Res> {
  __$PaginatedPlatformPaymentMethodListCopyWithImpl(this._self, this._then);

  final _PaginatedPlatformPaymentMethodList _self;
  final $Res Function(_PaginatedPlatformPaymentMethodList) _then;

/// Create a copy of PaginatedPlatformPaymentMethodList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_PaginatedPlatformPaymentMethodList(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<PlatformPaymentMethod>,
  ));
}


}

// dart format on
