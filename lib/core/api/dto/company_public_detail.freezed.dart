// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_public_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyPublicDetail {

 int get id; String get name; String? get sigle; String? get logo; String? get description; String? get city; double? get rating; String? get phone; String? get email; List<CompanyRouteSummary> get routes;@JsonKey(name: 'reviews_count') int get reviewsCount;@JsonKey(name: 'rating_breakdown') Map<String, dynamic> get ratingBreakdown; List<dynamic> get reviews;
/// Create a copy of CompanyPublicDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyPublicDetailCopyWith<CompanyPublicDetail> get copyWith => _$CompanyPublicDetailCopyWithImpl<CompanyPublicDetail>(this as CompanyPublicDetail, _$identity);

  /// Serializes this CompanyPublicDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyPublicDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.routes, routes)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other.ratingBreakdown, ratingBreakdown)&&const DeepCollectionEquality().equals(other.reviews, reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,logo,description,city,rating,phone,email,const DeepCollectionEquality().hash(routes),reviewsCount,const DeepCollectionEquality().hash(ratingBreakdown),const DeepCollectionEquality().hash(reviews));

@override
String toString() {
  return 'CompanyPublicDetail(id: $id, name: $name, sigle: $sigle, logo: $logo, description: $description, city: $city, rating: $rating, phone: $phone, email: $email, routes: $routes, reviewsCount: $reviewsCount, ratingBreakdown: $ratingBreakdown, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class $CompanyPublicDetailCopyWith<$Res>  {
  factory $CompanyPublicDetailCopyWith(CompanyPublicDetail value, $Res Function(CompanyPublicDetail) _then) = _$CompanyPublicDetailCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? sigle, String? logo, String? description, String? city, double? rating, String? phone, String? email, List<CompanyRouteSummary> routes,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'rating_breakdown') Map<String, dynamic> ratingBreakdown, List<dynamic> reviews
});




}
/// @nodoc
class _$CompanyPublicDetailCopyWithImpl<$Res>
    implements $CompanyPublicDetailCopyWith<$Res> {
  _$CompanyPublicDetailCopyWithImpl(this._self, this._then);

  final CompanyPublicDetail _self;
  final $Res Function(CompanyPublicDetail) _then;

/// Create a copy of CompanyPublicDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? logo = freezed,Object? description = freezed,Object? city = freezed,Object? rating = freezed,Object? phone = freezed,Object? email = freezed,Object? routes = null,Object? reviewsCount = null,Object? ratingBreakdown = null,Object? reviews = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as List<CompanyRouteSummary>,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,ratingBreakdown: null == ratingBreakdown ? _self.ratingBreakdown : ratingBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyPublicDetail].
extension CompanyPublicDetailPatterns on CompanyPublicDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyPublicDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyPublicDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyPublicDetail value)  $default,){
final _that = this;
switch (_that) {
case _CompanyPublicDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyPublicDetail value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyPublicDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? logo,  String? description,  String? city,  double? rating,  String? phone,  String? email,  List<CompanyRouteSummary> routes, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'rating_breakdown')  Map<String, dynamic> ratingBreakdown,  List<dynamic> reviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyPublicDetail() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.logo,_that.description,_that.city,_that.rating,_that.phone,_that.email,_that.routes,_that.reviewsCount,_that.ratingBreakdown,_that.reviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? sigle,  String? logo,  String? description,  String? city,  double? rating,  String? phone,  String? email,  List<CompanyRouteSummary> routes, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'rating_breakdown')  Map<String, dynamic> ratingBreakdown,  List<dynamic> reviews)  $default,) {final _that = this;
switch (_that) {
case _CompanyPublicDetail():
return $default(_that.id,_that.name,_that.sigle,_that.logo,_that.description,_that.city,_that.rating,_that.phone,_that.email,_that.routes,_that.reviewsCount,_that.ratingBreakdown,_that.reviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? sigle,  String? logo,  String? description,  String? city,  double? rating,  String? phone,  String? email,  List<CompanyRouteSummary> routes, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'rating_breakdown')  Map<String, dynamic> ratingBreakdown,  List<dynamic> reviews)?  $default,) {final _that = this;
switch (_that) {
case _CompanyPublicDetail() when $default != null:
return $default(_that.id,_that.name,_that.sigle,_that.logo,_that.description,_that.city,_that.rating,_that.phone,_that.email,_that.routes,_that.reviewsCount,_that.ratingBreakdown,_that.reviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyPublicDetail implements CompanyPublicDetail {
  const _CompanyPublicDetail({required this.id, required this.name, this.sigle, required this.logo, this.description, this.city, required this.rating, this.phone, this.email, required final  List<CompanyRouteSummary> routes, @JsonKey(name: 'reviews_count') required this.reviewsCount, @JsonKey(name: 'rating_breakdown') required final  Map<String, dynamic> ratingBreakdown, required final  List<dynamic> reviews}): _routes = routes,_ratingBreakdown = ratingBreakdown,_reviews = reviews;
  factory _CompanyPublicDetail.fromJson(Map<String, dynamic> json) => _$CompanyPublicDetailFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? sigle;
@override final  String? logo;
@override final  String? description;
@override final  String? city;
@override final  double? rating;
@override final  String? phone;
@override final  String? email;
 final  List<CompanyRouteSummary> _routes;
@override List<CompanyRouteSummary> get routes {
  if (_routes is EqualUnmodifiableListView) return _routes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routes);
}

@override@JsonKey(name: 'reviews_count') final  int reviewsCount;
 final  Map<String, dynamic> _ratingBreakdown;
@override@JsonKey(name: 'rating_breakdown') Map<String, dynamic> get ratingBreakdown {
  if (_ratingBreakdown is EqualUnmodifiableMapView) return _ratingBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_ratingBreakdown);
}

 final  List<dynamic> _reviews;
@override List<dynamic> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}


/// Create a copy of CompanyPublicDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyPublicDetailCopyWith<_CompanyPublicDetail> get copyWith => __$CompanyPublicDetailCopyWithImpl<_CompanyPublicDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyPublicDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyPublicDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sigle, sigle) || other.sigle == sigle)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.city, city) || other.city == city)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._routes, _routes)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other._ratingBreakdown, _ratingBreakdown)&&const DeepCollectionEquality().equals(other._reviews, _reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sigle,logo,description,city,rating,phone,email,const DeepCollectionEquality().hash(_routes),reviewsCount,const DeepCollectionEquality().hash(_ratingBreakdown),const DeepCollectionEquality().hash(_reviews));

@override
String toString() {
  return 'CompanyPublicDetail(id: $id, name: $name, sigle: $sigle, logo: $logo, description: $description, city: $city, rating: $rating, phone: $phone, email: $email, routes: $routes, reviewsCount: $reviewsCount, ratingBreakdown: $ratingBreakdown, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$CompanyPublicDetailCopyWith<$Res> implements $CompanyPublicDetailCopyWith<$Res> {
  factory _$CompanyPublicDetailCopyWith(_CompanyPublicDetail value, $Res Function(_CompanyPublicDetail) _then) = __$CompanyPublicDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? sigle, String? logo, String? description, String? city, double? rating, String? phone, String? email, List<CompanyRouteSummary> routes,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'rating_breakdown') Map<String, dynamic> ratingBreakdown, List<dynamic> reviews
});




}
/// @nodoc
class __$CompanyPublicDetailCopyWithImpl<$Res>
    implements _$CompanyPublicDetailCopyWith<$Res> {
  __$CompanyPublicDetailCopyWithImpl(this._self, this._then);

  final _CompanyPublicDetail _self;
  final $Res Function(_CompanyPublicDetail) _then;

/// Create a copy of CompanyPublicDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? sigle = freezed,Object? logo = freezed,Object? description = freezed,Object? city = freezed,Object? rating = freezed,Object? phone = freezed,Object? email = freezed,Object? routes = null,Object? reviewsCount = null,Object? ratingBreakdown = null,Object? reviews = null,}) {
  return _then(_CompanyPublicDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sigle: freezed == sigle ? _self.sigle : sigle // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,routes: null == routes ? _self._routes : routes // ignore: cast_nullable_to_non_nullable
as List<CompanyRouteSummary>,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,ratingBreakdown: null == ratingBreakdown ? _self._ratingBreakdown : ratingBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
