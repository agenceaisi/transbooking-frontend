// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_route_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyRouteSummary {

 int get id;@JsonKey(name: 'origin_city_name') String get originCityName;@JsonKey(name: 'destination_city_name') String get destinationCityName;@JsonKey(name: 'base_price') String get basePrice;@JsonKey(name: 'duration_minutes') int? get durationMinutes;
/// Create a copy of CompanyRouteSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyRouteSummaryCopyWith<CompanyRouteSummary> get copyWith => _$CompanyRouteSummaryCopyWithImpl<CompanyRouteSummary>(this as CompanyRouteSummary, _$identity);

  /// Serializes this CompanyRouteSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyRouteSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destinationCityName, destinationCityName) || other.destinationCityName == destinationCityName)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCityName,destinationCityName,basePrice,durationMinutes);

@override
String toString() {
  return 'CompanyRouteSummary(id: $id, originCityName: $originCityName, destinationCityName: $destinationCityName, basePrice: $basePrice, durationMinutes: $durationMinutes)';
}


}

/// @nodoc
abstract mixin class $CompanyRouteSummaryCopyWith<$Res>  {
  factory $CompanyRouteSummaryCopyWith(CompanyRouteSummary value, $Res Function(CompanyRouteSummary) _then) = _$CompanyRouteSummaryCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'origin_city_name') String originCityName,@JsonKey(name: 'destination_city_name') String destinationCityName,@JsonKey(name: 'base_price') String basePrice,@JsonKey(name: 'duration_minutes') int? durationMinutes
});




}
/// @nodoc
class _$CompanyRouteSummaryCopyWithImpl<$Res>
    implements $CompanyRouteSummaryCopyWith<$Res> {
  _$CompanyRouteSummaryCopyWithImpl(this._self, this._then);

  final CompanyRouteSummary _self;
  final $Res Function(CompanyRouteSummary) _then;

/// Create a copy of CompanyRouteSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originCityName = null,Object? destinationCityName = null,Object? basePrice = null,Object? durationMinutes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCityName: null == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String,destinationCityName: null == destinationCityName ? _self.destinationCityName : destinationCityName // ignore: cast_nullable_to_non_nullable
as String,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyRouteSummary].
extension CompanyRouteSummaryPatterns on CompanyRouteSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyRouteSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyRouteSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyRouteSummary value)  $default,){
final _that = this;
switch (_that) {
case _CompanyRouteSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyRouteSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyRouteSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city_name')  String originCityName, @JsonKey(name: 'destination_city_name')  String destinationCityName, @JsonKey(name: 'base_price')  String basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyRouteSummary() when $default != null:
return $default(_that.id,_that.originCityName,_that.destinationCityName,_that.basePrice,_that.durationMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'origin_city_name')  String originCityName, @JsonKey(name: 'destination_city_name')  String destinationCityName, @JsonKey(name: 'base_price')  String basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes)  $default,) {final _that = this;
switch (_that) {
case _CompanyRouteSummary():
return $default(_that.id,_that.originCityName,_that.destinationCityName,_that.basePrice,_that.durationMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'origin_city_name')  String originCityName, @JsonKey(name: 'destination_city_name')  String destinationCityName, @JsonKey(name: 'base_price')  String basePrice, @JsonKey(name: 'duration_minutes')  int? durationMinutes)?  $default,) {final _that = this;
switch (_that) {
case _CompanyRouteSummary() when $default != null:
return $default(_that.id,_that.originCityName,_that.destinationCityName,_that.basePrice,_that.durationMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyRouteSummary implements CompanyRouteSummary {
  const _CompanyRouteSummary({required this.id, @JsonKey(name: 'origin_city_name') required this.originCityName, @JsonKey(name: 'destination_city_name') required this.destinationCityName, @JsonKey(name: 'base_price') required this.basePrice, @JsonKey(name: 'duration_minutes') required this.durationMinutes});
  factory _CompanyRouteSummary.fromJson(Map<String, dynamic> json) => _$CompanyRouteSummaryFromJson(json);

@override final  int id;
@override@JsonKey(name: 'origin_city_name') final  String originCityName;
@override@JsonKey(name: 'destination_city_name') final  String destinationCityName;
@override@JsonKey(name: 'base_price') final  String basePrice;
@override@JsonKey(name: 'duration_minutes') final  int? durationMinutes;

/// Create a copy of CompanyRouteSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyRouteSummaryCopyWith<_CompanyRouteSummary> get copyWith => __$CompanyRouteSummaryCopyWithImpl<_CompanyRouteSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyRouteSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyRouteSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.originCityName, originCityName) || other.originCityName == originCityName)&&(identical(other.destinationCityName, destinationCityName) || other.destinationCityName == destinationCityName)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originCityName,destinationCityName,basePrice,durationMinutes);

@override
String toString() {
  return 'CompanyRouteSummary(id: $id, originCityName: $originCityName, destinationCityName: $destinationCityName, basePrice: $basePrice, durationMinutes: $durationMinutes)';
}


}

/// @nodoc
abstract mixin class _$CompanyRouteSummaryCopyWith<$Res> implements $CompanyRouteSummaryCopyWith<$Res> {
  factory _$CompanyRouteSummaryCopyWith(_CompanyRouteSummary value, $Res Function(_CompanyRouteSummary) _then) = __$CompanyRouteSummaryCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'origin_city_name') String originCityName,@JsonKey(name: 'destination_city_name') String destinationCityName,@JsonKey(name: 'base_price') String basePrice,@JsonKey(name: 'duration_minutes') int? durationMinutes
});




}
/// @nodoc
class __$CompanyRouteSummaryCopyWithImpl<$Res>
    implements _$CompanyRouteSummaryCopyWith<$Res> {
  __$CompanyRouteSummaryCopyWithImpl(this._self, this._then);

  final _CompanyRouteSummary _self;
  final $Res Function(_CompanyRouteSummary) _then;

/// Create a copy of CompanyRouteSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originCityName = null,Object? destinationCityName = null,Object? basePrice = null,Object? durationMinutes = freezed,}) {
  return _then(_CompanyRouteSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originCityName: null == originCityName ? _self.originCityName : originCityName // ignore: cast_nullable_to_non_nullable
as String,destinationCityName: null == destinationCityName ? _self.destinationCityName : destinationCityName // ignore: cast_nullable_to_non_nullable
as String,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: freezed == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
