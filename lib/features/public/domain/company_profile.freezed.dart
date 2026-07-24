// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompanyProfile {

 int get id; String get name; String? get sigle; String? get logoUrl; String? get description; String? get city; double? get rating; String? get phone; String? get email;/// Trajets actifs de la compagnie.
 List<CompanyRoute> get routes;/// Répartition des notes {étoile 1–5 → nombre d'avis}, agrégée côté serveur.
 Map<int, int> get ratingBreakdown;/// Nombre total d'avis pris en compte dans l'agrégat.
 int? get reviewsCount;
/// Create a copy of CompanyProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyProfileCopyWith<CompanyProfile> get copyWith => _$CompanyProfileCopyWithImpl<CompanyProfile>(this as CompanyProfile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.routes, routes)&&const DeepCollectionEquality().equals(other.ratingBreakdown, ratingBreakdown)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,logoUrl,description,city,rating,phone,email,const DeepCollectionEquality().hash(routes),const DeepCollectionEquality().hash(ratingBreakdown),reviewsCount);

@override
String toString() {
  return 'CompanyProfile(id: $id, name: $name, sigle: $sigle, logoUrl: $logoUrl, description: $description, city: $city, rating: $rating, phone: $phone, email: $email, routes: $routes, ratingBreakdown: $ratingBreakdown, reviewsCount: $reviewsCount)';
}


}

/// @nodoc
abstract mixin class $CompanyProfileCopyWith<$Res>  {
  factory $CompanyProfileCopyWith(CompanyProfile value, $Res Function(CompanyProfile) _then) = _$CompanyProfileCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? sigle, String? logoUrl, String? description, String? city, double? rating, String? phone, String? email, List<CompanyRoute> routes, Map<int, int> ratingBreakdown, int? reviewsCount
});




}
/// @nodoc
class _$CompanyProfileCopyWithImpl<$Res>
    implements $CompanyProfileCopyWith<$Res> {
  _$CompanyProfileCopyWithImpl(this._self, this._then);

  final CompanyProfile _self;
  final $Res Function(CompanyProfile) _then;

/// Create a copy of CompanyProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? logoUrl = freezed,Object? description = freezed,Object? city = freezed,Object? rating = freezed,Object? phone = freezed,Object? email = freezed,Object? routes = null,Object? ratingBreakdown = null,Object? reviewsCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as List<CompanyRoute>,ratingBreakdown: null == ratingBreakdown ? _self.ratingBreakdown : ratingBreakdown // ignore: cast_nullable_to_non_nullable
as Map<int, int>,reviewsCount: freezed == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyProfile].
extension CompanyProfilePatterns on CompanyProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyProfile value)  $default,){
final _that = this;
switch (_that) {
case _CompanyProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyProfile value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? logoUrl,  String? description,  String? city,  double? rating,  String? phone,  String? email,  List<CompanyRoute> routes,  Map<int, int> ratingBreakdown,  int? reviewsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyProfile() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.logoUrl,_that.description,_that.city,_that.rating,_that.phone,_that.email,_that.routes,_that.ratingBreakdown,_that.reviewsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? logoUrl,  String? description,  String? city,  double? rating,  String? phone,  String? email,  List<CompanyRoute> routes,  Map<int, int> ratingBreakdown,  int? reviewsCount)  $default,) {final _that = this;
switch (_that) {
case _CompanyProfile():
return $default(_that.id,_that.name,_that.sigle,_that.logoUrl,_that.description,_that.city,_that.rating,_that.phone,_that.email,_that.routes,_that.ratingBreakdown,_that.reviewsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? sigle,  String? logoUrl,  String? description,  String? city,  double? rating,  String? phone,  String? email,  List<CompanyRoute> routes,  Map<int, int> ratingBreakdown,  int? reviewsCount)?  $default,) {final _that = this;
switch (_that) {
case _CompanyProfile() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.logoUrl,_that.description,_that.city,_that.rating,_that.phone,_that.email,_that.routes,_that.ratingBreakdown,_that.reviewsCount);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyProfile extends CompanyProfile {
  const _CompanyProfile({required this.id, required this.name, this.sigle, this.logoUrl, this.description, this.city, this.rating, this.phone, this.email, final  List<CompanyRoute> routes = const <CompanyRoute>[], final  Map<int, int> ratingBreakdown = const <int, int>{}, this.reviewsCount}): _routes = routes,_ratingBreakdown = ratingBreakdown,super._();
  

@override final  int id;
@override final  String name;
@override final  String? sigle;
@override final  String? logoUrl;
@override final  String? description;
@override final  String? city;
@override final  double? rating;
@override final  String? phone;
@override final  String? email;
/// Trajets actifs de la compagnie.
 final  List<CompanyRoute> _routes;
/// Trajets actifs de la compagnie.
@override@JsonKey() List<CompanyRoute> get routes {
  if (_routes is EqualUnmodifiableListView) return _routes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routes);
}

/// Répartition des notes {étoile 1–5 → nombre d'avis}, agrégée côté serveur.
 final  Map<int, int> _ratingBreakdown;
/// Répartition des notes {étoile 1–5 → nombre d'avis}, agrégée côté serveur.
@override@JsonKey() Map<int, int> get ratingBreakdown {
  if (_ratingBreakdown is EqualUnmodifiableMapView) return _ratingBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_ratingBreakdown);
}

/// Nombre total d'avis pris en compte dans l'agrégat.
@override final  int? reviewsCount;

/// Create a copy of CompanyProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyProfileCopyWith<_CompanyProfile> get copyWith => __$CompanyProfileCopyWithImpl<_CompanyProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._routes, _routes)&&const DeepCollectionEquality().equals(other._ratingBreakdown, _ratingBreakdown)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,logoUrl,description,city,rating,phone,email,const DeepCollectionEquality().hash(_routes),const DeepCollectionEquality().hash(_ratingBreakdown),reviewsCount);

@override
String toString() {
  return 'CompanyProfile(id: $id, name: $name, sigle: $sigle, logoUrl: $logoUrl, description: $description, city: $city, rating: $rating, phone: $phone, email: $email, routes: $routes, ratingBreakdown: $ratingBreakdown, reviewsCount: $reviewsCount)';
}


}

/// @nodoc
abstract mixin class _$CompanyProfileCopyWith<$Res> implements $CompanyProfileCopyWith<$Res> {
  factory _$CompanyProfileCopyWith(_CompanyProfile value, $Res Function(_CompanyProfile) _then) = __$CompanyProfileCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? sigle, String? logoUrl, String? description, String? city, double? rating, String? phone, String? email, List<CompanyRoute> routes, Map<int, int> ratingBreakdown, int? reviewsCount
});




}
/// @nodoc
class __$CompanyProfileCopyWithImpl<$Res>
    implements _$CompanyProfileCopyWith<$Res> {
  __$CompanyProfileCopyWithImpl(this._self, this._then);

  final _CompanyProfile _self;
  final $Res Function(_CompanyProfile) _then;

/// Create a copy of CompanyProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? logoUrl = freezed,Object? description = freezed,Object? city = freezed,Object? rating = freezed,Object? phone = freezed,Object? email = freezed,Object? routes = null,Object? ratingBreakdown = null,Object? reviewsCount = freezed,}) {
  return _then(_CompanyProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,routes: null == routes ? _self._routes : routes // ignore: cast_nullable_to_non_nullable
as List<CompanyRoute>,ratingBreakdown: null == ratingBreakdown ? _self._ratingBreakdown : ratingBreakdown // ignore: cast_nullable_to_non_nullable
as Map<int, int>,reviewsCount: freezed == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
