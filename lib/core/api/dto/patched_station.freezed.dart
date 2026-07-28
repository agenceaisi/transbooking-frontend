// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchedStation {

 int? get id; int? get city;@JsonKey(name: 'city_name') String? get cityName; String? get name; String? get address; String? get localisation;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of PatchedStation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedStationCopyWith<PatchedStation> get copyWith => _$PatchedStationCopyWithImpl<PatchedStation>(this as PatchedStation, _$identity);

  /// Serializes this PatchedStation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedStation&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.localisation, localisation) || other.localisation == localisation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,cityName,name,address,localisation,createdAt,updatedAt);

@override
String toString() {
  return 'PatchedStation(id: $id, city: $city, cityName: $cityName, name: $name, address: $address, localisation: $localisation, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PatchedStationCopyWith<$Res>  {
  factory $PatchedStationCopyWith(PatchedStation value, $Res Function(PatchedStation) _then) = _$PatchedStationCopyWithImpl;
@useResult
$Res call({
 int? id, int? city,@JsonKey(name: 'city_name') String? cityName, String? name, String? address, String? localisation,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$PatchedStationCopyWithImpl<$Res>
    implements $PatchedStationCopyWith<$Res> {
  _$PatchedStationCopyWithImpl(this._self, this._then);

  final PatchedStation _self;
  final $Res Function(PatchedStation) _then;

/// Create a copy of PatchedStation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? city = freezed,Object? cityName = freezed,Object? name = freezed,Object? address = freezed,Object? localisation = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,localisation: freezed == localisation ? _self.localisation : localisation // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PatchedStation].
extension PatchedStationPatterns on PatchedStation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchedStation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchedStation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchedStation value)  $default,){
final _that = this;
switch (_that) {
case _PatchedStation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchedStation value)?  $default,){
final _that = this;
switch (_that) {
case _PatchedStation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? city, @JsonKey(name: 'city_name')  String? cityName,  String? name,  String? address,  String? localisation, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchedStation() when $default != null:
return $default(_that.id,_that.city,_that.cityName,_that.name,_that.address,_that.localisation,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? city, @JsonKey(name: 'city_name')  String? cityName,  String? name,  String? address,  String? localisation, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PatchedStation():
return $default(_that.id,_that.city,_that.cityName,_that.name,_that.address,_that.localisation,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? city, @JsonKey(name: 'city_name')  String? cityName,  String? name,  String? address,  String? localisation, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatchedStation() when $default != null:
return $default(_that.id,_that.city,_that.cityName,_that.name,_that.address,_that.localisation,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchedStation implements PatchedStation {
  const _PatchedStation({this.id, this.city, @JsonKey(name: 'city_name') this.cityName, this.name, this.address, this.localisation, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _PatchedStation.fromJson(Map<String, dynamic> json) => _$PatchedStationFromJson(json);

@override final  int? id;
@override final  int? city;
@override@JsonKey(name: 'city_name') final  String? cityName;
@override final  String? name;
@override final  String? address;
@override final  String? localisation;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of PatchedStation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchedStationCopyWith<_PatchedStation> get copyWith => __$PatchedStationCopyWithImpl<_PatchedStation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchedStationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchedStation&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.localisation, localisation) || other.localisation == localisation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,cityName,name,address,localisation,createdAt,updatedAt);

@override
String toString() {
  return 'PatchedStation(id: $id, city: $city, cityName: $cityName, name: $name, address: $address, localisation: $localisation, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatchedStationCopyWith<$Res> implements $PatchedStationCopyWith<$Res> {
  factory _$PatchedStationCopyWith(_PatchedStation value, $Res Function(_PatchedStation) _then) = __$PatchedStationCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? city,@JsonKey(name: 'city_name') String? cityName, String? name, String? address, String? localisation,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$PatchedStationCopyWithImpl<$Res>
    implements _$PatchedStationCopyWith<$Res> {
  __$PatchedStationCopyWithImpl(this._self, this._then);

  final _PatchedStation _self;
  final $Res Function(_PatchedStation) _then;

/// Create a copy of PatchedStation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? city = freezed,Object? cityName = freezed,Object? name = freezed,Object? address = freezed,Object? localisation = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PatchedStation(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,localisation: freezed == localisation ? _self.localisation : localisation // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
