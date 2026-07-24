// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_criteria.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchCriteria {

 int? get originCityId; String? get originCityName; int? get destCityId; String? get destCityName; DateTime? get date; int get passengers;
/// Create a copy of SearchCriteria
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCriteriaCopyWith<SearchCriteria> get copyWith => _$SearchCriteriaCopyWithImpl<SearchCriteria>(this as SearchCriteria, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCriteria&&(identical(other.originCityId, originCityId) || other.originCityId == originCityId)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destCityId, destCityId) || other.destCityId == destCityId)&&(identical(other.destCityName, destCityName) || other.destCityName == destCityName)&&(identical(other.date, date) || other.date == date)&&(identical(other.passengers, passengers) || other.passengers == passengers));
}


@override
int get hashCode => Object.hash(runtimeType,originCityId,originCityName,destCityId,destCityName,date,passengers);

@override
String toString() {
  return 'SearchCriteria(originCityId: $originCityId, originCityName: $originCityName, destCityId: $destCityId, destCityName: $destCityName, date: $date, passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class $SearchCriteriaCopyWith<$Res>  {
  factory $SearchCriteriaCopyWith(SearchCriteria value, $Res Function(SearchCriteria) _then) = _$SearchCriteriaCopyWithImpl;
@useResult
$Res call({
 int? originCityId, String? originCityName, int? destCityId, String? destCityName, DateTime? date, int passengers
});




}
/// @nodoc
class _$SearchCriteriaCopyWithImpl<$Res>
    implements $SearchCriteriaCopyWith<$Res> {
  _$SearchCriteriaCopyWithImpl(this._self, this._then);

  final SearchCriteria _self;
  final $Res Function(SearchCriteria) _then;

/// Create a copy of SearchCriteria
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originCityId = freezed,Object? originCityName = freezed,Object? destCityId = freezed,Object? destCityName = freezed,Object? date = freezed,Object? passengers = null,}) {
  return _then(_self.copyWith(
originCityId: freezed == originCityId ? _self.originCityId : originCityId // ignore: cast_nullable_to_non_nullable
as int?,originCityName: freezed == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String?,destCityId: freezed == destCityId ? _self.destCityId : destCityId // ignore: cast_nullable_to_non_nullable
as int?,destCityName: freezed == destCityName ? _self.destCityName : destCityName // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchCriteria].
extension SearchCriteriaPatterns on SearchCriteria {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCriteria value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCriteria() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCriteria value)  $default,){
final _that = this;
switch (_that) {
case _SearchCriteria():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCriteria value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCriteria() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? originCityId,  String? originCityName,  int? destCityId,  String? destCityName,  DateTime? date,  int passengers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCriteria() when $default != null:
return $default(_that.originCityId,_that.originCityName,_that.destCityId,_that.destCityName,_that.date,_that.passengers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? originCityId,  String? originCityName,  int? destCityId,  String? destCityName,  DateTime? date,  int passengers)  $default,) {final _that = this;
switch (_that) {
case _SearchCriteria():
return $default(_that.originCityId,_that.originCityName,_that.destCityId,_that.destCityName,_that.date,_that.passengers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? originCityId,  String? originCityName,  int? destCityId,  String? destCityName,  DateTime? date,  int passengers)?  $default,) {final _that = this;
switch (_that) {
case _SearchCriteria() when $default != null:
return $default(_that.originCityId,_that.originCityName,_that.destCityId,_that.destCityName,_that.date,_that.passengers);case _:
  return null;

}
}

}

/// @nodoc


class _SearchCriteria extends SearchCriteria {
  const _SearchCriteria({this.originCityId, this.originCityName, this.destCityId, this.destCityName, this.date, this.passengers = 1}): super._();
  

@override final  int? originCityId;
@override final  String? originCityName;
@override final  int? destCityId;
@override final  String? destCityName;
@override final  DateTime? date;
@override@JsonKey() final  int passengers;

/// Create a copy of SearchCriteria
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCriteriaCopyWith<_SearchCriteria> get copyWith => __$SearchCriteriaCopyWithImpl<_SearchCriteria>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCriteria&&(identical(other.originCityId, originCityId) || other.originCityId == originCityId)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destCityId, destCityId) || other.destCityId == destCityId)&&(identical(other.destCityName, destCityName) || other.destCityName == destCityName)&&(identical(other.date, date) || other.date == date)&&(identical(other.passengers, passengers) || other.passengers == passengers));
}


@override
int get hashCode => Object.hash(runtimeType,originCityId,originCityName,destCityId,destCityName,date,passengers);

@override
String toString() {
  return 'SearchCriteria(originCityId: $originCityId, originCityName: $originCityName, destCityId: $destCityId, destCityName: $destCityName, date: $date, passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class _$SearchCriteriaCopyWith<$Res> implements $SearchCriteriaCopyWith<$Res> {
  factory _$SearchCriteriaCopyWith(_SearchCriteria value, $Res Function(_SearchCriteria) _then) = __$SearchCriteriaCopyWithImpl;
@override @useResult
$Res call({
 int? originCityId, String? originCityName, int? destCityId, String? destCityName, DateTime? date, int passengers
});




}
/// @nodoc
class __$SearchCriteriaCopyWithImpl<$Res>
    implements _$SearchCriteriaCopyWith<$Res> {
  __$SearchCriteriaCopyWithImpl(this._self, this._then);

  final _SearchCriteria _self;
  final $Res Function(_SearchCriteria) _then;

/// Create a copy of SearchCriteria
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originCityId = freezed,Object? originCityName = freezed,Object? destCityId = freezed,Object? destCityName = freezed,Object? date = freezed,Object? passengers = null,}) {
  return _then(_SearchCriteria(
originCityId: freezed == originCityId ? _self.originCityId : originCityId // ignore: cast_nullable_to_non_nullable
as int?,originCityName: freezed == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String?,destCityId: freezed == destCityId ? _self.destCityId : destCityId // ignore: cast_nullable_to_non_nullable
as int?,destCityName: freezed == destCityName ? _self.destCityName : destCityName // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SearchRefinement {

 DeparturePeriod get period;/// Prix maximum en FCFA ; `null` = pas de plafond.
 num? get maxPrice;/// Type de trajet (direct / avec escale).
 TripStopFilter get stopFilter;/// Compagnies retenues (id) ; vide = toutes.
 Set<int> get companyIds;/// Note minimale de la compagnie (0–5) ; `null` = sans minimum.
 num? get minRating; TripSort get sort;
/// Create a copy of SearchRefinement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchRefinementCopyWith<SearchRefinement> get copyWith => _$SearchRefinementCopyWithImpl<SearchRefinement>(this as SearchRefinement, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchRefinement&&(identical(other.period, period) || other.period == period)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.stopFilter, stopFilter) || other.stopFilter == stopFilter)&&const DeepCollectionEquality().equals(other.companyIds, companyIds)&&(identical(other.minRating, minRating) || other.minRating == minRating)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,period,maxPrice,stopFilter,const DeepCollectionEquality().hash(companyIds),minRating,sort);

@override
String toString() {
  return 'SearchRefinement(period: $period, maxPrice: $maxPrice, stopFilter: $stopFilter, companyIds: $companyIds, minRating: $minRating, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $SearchRefinementCopyWith<$Res>  {
  factory $SearchRefinementCopyWith(SearchRefinement value, $Res Function(SearchRefinement) _then) = _$SearchRefinementCopyWithImpl;
@useResult
$Res call({
 DeparturePeriod period, num? maxPrice, TripStopFilter stopFilter, Set<int> companyIds, num? minRating, TripSort sort
});




}
/// @nodoc
class _$SearchRefinementCopyWithImpl<$Res>
    implements $SearchRefinementCopyWith<$Res> {
  _$SearchRefinementCopyWithImpl(this._self, this._then);

  final SearchRefinement _self;
  final $Res Function(SearchRefinement) _then;

/// Create a copy of SearchRefinement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? maxPrice = freezed,Object? stopFilter = null,Object? companyIds = null,Object? minRating = freezed,Object? sort = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as DeparturePeriod,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as num?,stopFilter: null == stopFilter ? _self.stopFilter : stopFilter // ignore: cast_nullable_to_non_nullable
as TripStopFilter,companyIds: null == companyIds ? _self.companyIds : companyIds // ignore: cast_nullable_to_non_nullable
as Set<int>,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as num?,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TripSort,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchRefinement].
extension SearchRefinementPatterns on SearchRefinement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchRefinement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchRefinement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchRefinement value)  $default,){
final _that = this;
switch (_that) {
case _SearchRefinement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchRefinement value)?  $default,){
final _that = this;
switch (_that) {
case _SearchRefinement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeparturePeriod period,  num? maxPrice,  TripStopFilter stopFilter,  Set<int> companyIds,  num? minRating,  TripSort sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchRefinement() when $default != null:
return $default(_that.period,_that.maxPrice,_that.stopFilter,_that.companyIds,_that.minRating,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeparturePeriod period,  num? maxPrice,  TripStopFilter stopFilter,  Set<int> companyIds,  num? minRating,  TripSort sort)  $default,) {final _that = this;
switch (_that) {
case _SearchRefinement():
return $default(_that.period,_that.maxPrice,_that.stopFilter,_that.companyIds,_that.minRating,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeparturePeriod period,  num? maxPrice,  TripStopFilter stopFilter,  Set<int> companyIds,  num? minRating,  TripSort sort)?  $default,) {final _that = this;
switch (_that) {
case _SearchRefinement() when $default != null:
return $default(_that.period,_that.maxPrice,_that.stopFilter,_that.companyIds,_that.minRating,_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class _SearchRefinement extends SearchRefinement {
  const _SearchRefinement({this.period = DeparturePeriod.all, this.maxPrice, this.stopFilter = TripStopFilter.all, final  Set<int> companyIds = const <int>{}, this.minRating, this.sort = TripSort.price}): _companyIds = companyIds,super._();
  

@override@JsonKey() final  DeparturePeriod period;
/// Prix maximum en FCFA ; `null` = pas de plafond.
@override final  num? maxPrice;
/// Type de trajet (direct / avec escale).
@override@JsonKey() final  TripStopFilter stopFilter;
/// Compagnies retenues (id) ; vide = toutes.
 final  Set<int> _companyIds;
/// Compagnies retenues (id) ; vide = toutes.
@override@JsonKey() Set<int> get companyIds {
  if (_companyIds is EqualUnmodifiableSetView) return _companyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_companyIds);
}

/// Note minimale de la compagnie (0–5) ; `null` = sans minimum.
@override final  num? minRating;
@override@JsonKey() final  TripSort sort;

/// Create a copy of SearchRefinement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchRefinementCopyWith<_SearchRefinement> get copyWith => __$SearchRefinementCopyWithImpl<_SearchRefinement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchRefinement&&(identical(other.period, period) || other.period == period)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.stopFilter, stopFilter) || other.stopFilter == stopFilter)&&const DeepCollectionEquality().equals(other._companyIds, _companyIds)&&(identical(other.minRating, minRating) || other.minRating == minRating)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,period,maxPrice,stopFilter,const DeepCollectionEquality().hash(_companyIds),minRating,sort);

@override
String toString() {
  return 'SearchRefinement(period: $period, maxPrice: $maxPrice, stopFilter: $stopFilter, companyIds: $companyIds, minRating: $minRating, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$SearchRefinementCopyWith<$Res> implements $SearchRefinementCopyWith<$Res> {
  factory _$SearchRefinementCopyWith(_SearchRefinement value, $Res Function(_SearchRefinement) _then) = __$SearchRefinementCopyWithImpl;
@override @useResult
$Res call({
 DeparturePeriod period, num? maxPrice, TripStopFilter stopFilter, Set<int> companyIds, num? minRating, TripSort sort
});




}
/// @nodoc
class __$SearchRefinementCopyWithImpl<$Res>
    implements _$SearchRefinementCopyWith<$Res> {
  __$SearchRefinementCopyWithImpl(this._self, this._then);

  final _SearchRefinement _self;
  final $Res Function(_SearchRefinement) _then;

/// Create a copy of SearchRefinement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? maxPrice = freezed,Object? stopFilter = null,Object? companyIds = null,Object? minRating = freezed,Object? sort = null,}) {
  return _then(_SearchRefinement(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as DeparturePeriod,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as num?,stopFilter: null == stopFilter ? _self.stopFilter : stopFilter // ignore: cast_nullable_to_non_nullable
as TripStopFilter,companyIds: null == companyIds ? _self._companyIds : companyIds // ignore: cast_nullable_to_non_nullable
as Set<int>,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as num?,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TripSort,
  ));
}


}

// dart format on
