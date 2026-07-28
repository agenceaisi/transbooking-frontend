// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyPublic {

 int get id; String get name; String? get sigle; String? get logo; String? get description; String? get city; double? get rating;
/// Create a copy of CompanyPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyPublicCopyWith<CompanyPublic> get copyWith => _$CompanyPublicCopyWithImpl<CompanyPublic>(this as CompanyPublic, _$identity);

  /// Serializes this CompanyPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyPublic&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,logo,description,city,rating);

@override
String toString() {
  return 'CompanyPublic(id: $id, name: $name, sigle: $sigle, logo: $logo, description: $description, city: $city, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $CompanyPublicCopyWith<$Res>  {
  factory $CompanyPublicCopyWith(CompanyPublic value, $Res Function(CompanyPublic) _then) = _$CompanyPublicCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? sigle, String? logo, String? description, String? city, double? rating
});




}
/// @nodoc
class _$CompanyPublicCopyWithImpl<$Res>
    implements $CompanyPublicCopyWith<$Res> {
  _$CompanyPublicCopyWithImpl(this._self, this._then);

  final CompanyPublic _self;
  final $Res Function(CompanyPublic) _then;

/// Create a copy of CompanyPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? logo = freezed,Object? description = freezed,Object? city = freezed,Object? rating = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyPublic].
extension CompanyPublicPatterns on CompanyPublic {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyPublic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyPublic() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyPublic value)  $default,){
final _that = this;
switch (_that) {
case _CompanyPublic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyPublic value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyPublic() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? logo,  String? description,  String? city,  double? rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyPublic() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.logo,_that.description,_that.city,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? logo,  String? description,  String? city,  double? rating)  $default,) {final _that = this;
switch (_that) {
case _CompanyPublic():
return $default(_that.id,_that.name,_that.sigle,_that.logo,_that.description,_that.city,_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? sigle,  String? logo,  String? description,  String? city,  double? rating)?  $default,) {final _that = this;
switch (_that) {
case _CompanyPublic() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.logo,_that.description,_that.city,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyPublic implements CompanyPublic {
  const _CompanyPublic({required this.id, required this.name, this.sigle, required this.logo, this.description, this.city, required this.rating});
  factory _CompanyPublic.fromJson(Map<String, dynamic> json) => _$CompanyPublicFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? sigle;
@override final  String? logo;
@override final  String? description;
@override final  String? city;
@override final  double? rating;

/// Create a copy of CompanyPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyPublicCopyWith<_CompanyPublic> get copyWith => __$CompanyPublicCopyWithImpl<_CompanyPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyPublic&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,logo,description,city,rating);

@override
String toString() {
  return 'CompanyPublic(id: $id, name: $name, sigle: $sigle, logo: $logo, description: $description, city: $city, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$CompanyPublicCopyWith<$Res> implements $CompanyPublicCopyWith<$Res> {
  factory _$CompanyPublicCopyWith(_CompanyPublic value, $Res Function(_CompanyPublic) _then) = __$CompanyPublicCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? sigle, String? logo, String? description, String? city, double? rating
});




}
/// @nodoc
class __$CompanyPublicCopyWithImpl<$Res>
    implements _$CompanyPublicCopyWith<$Res> {
  __$CompanyPublicCopyWithImpl(this._self, this._then);

  final _CompanyPublic _self;
  final $Res Function(_CompanyPublic) _then;

/// Create a copy of CompanyPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? logo = freezed,Object? description = freezed,Object? city = freezed,Object? rating = freezed,}) {
  return _then(_CompanyPublic(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
