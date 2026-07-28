// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyAgent {

 int get id; String get prenom; String get nom; String get phone; String? get email; String? get role;@JsonKey(name: 'agent_type') String get agentType; Map<String, dynamic>? get station;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of CompanyAgent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyAgentCopyWith<CompanyAgent> get copyWith => _$CompanyAgentCopyWithImpl<CompanyAgent>(this as CompanyAgent, _$identity);

  /// Serializes this CompanyAgent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyAgent&&(identical(other.id, id) || other.id == id)&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.agentType, agentType) || other.agentType == agentType)&&const DeepCollectionEquality().equals(other.station, station)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prenom,nom,phone,email,role,agentType,const DeepCollectionEquality().hash(station),isActive,createdAt);

@override
String toString() {
  return 'CompanyAgent(id: $id, prenom: $prenom, nom: $nom, phone: $phone, email: $email, role: $role, agentType: $agentType, station: $station, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CompanyAgentCopyWith<$Res>  {
  factory $CompanyAgentCopyWith(CompanyAgent value, $Res Function(CompanyAgent) _then) = _$CompanyAgentCopyWithImpl;
@useResult
$Res call({
 int id, String prenom, String nom, String phone, String? email, String? role,@JsonKey(name: 'agent_type') String agentType, Map<String, dynamic>? station,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$CompanyAgentCopyWithImpl<$Res>
    implements $CompanyAgentCopyWith<$Res> {
  _$CompanyAgentCopyWithImpl(this._self, this._then);

  final CompanyAgent _self;
  final $Res Function(CompanyAgent) _then;

/// Create a copy of CompanyAgent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? prenom = null,Object? nom = null,Object? phone = null,Object? email = freezed,Object? role = freezed,Object? agentType = null,Object? station = freezed,Object? isActive = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,prenom: null == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,agentType: null == agentType ? _self.agentType : agentType // ignore: cast_nullable_to_non_nullable
as String,station: freezed == station ? _self.station : station // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyAgent].
extension CompanyAgentPatterns on CompanyAgent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyAgent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyAgent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyAgent value)  $default,){
final _that = this;
switch (_that) {
case _CompanyAgent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyAgent value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyAgent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String prenom,  String nom,  String phone,  String? email,  String? role, @JsonKey(name: 'agent_type')  String agentType,  Map<String, dynamic>? station, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyAgent() when $default != null:
return $default(_that.id,_that.prenom,_that.nom,_that.phone,_that.email,_that.role,_that.agentType,_that.station,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String prenom,  String nom,  String phone,  String? email,  String? role, @JsonKey(name: 'agent_type')  String agentType,  Map<String, dynamic>? station, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CompanyAgent():
return $default(_that.id,_that.prenom,_that.nom,_that.phone,_that.email,_that.role,_that.agentType,_that.station,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String prenom,  String nom,  String phone,  String? email,  String? role, @JsonKey(name: 'agent_type')  String agentType,  Map<String, dynamic>? station, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CompanyAgent() when $default != null:
return $default(_that.id,_that.prenom,_that.nom,_that.phone,_that.email,_that.role,_that.agentType,_that.station,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyAgent implements CompanyAgent {
  const _CompanyAgent({required this.id, required this.prenom, required this.nom, required this.phone, this.email, required this.role, @JsonKey(name: 'agent_type') required this.agentType, required final  Map<String, dynamic>? station, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'created_at') required this.createdAt}): _station = station;
  factory _CompanyAgent.fromJson(Map<String, dynamic> json) => _$CompanyAgentFromJson(json);

@override final  int id;
@override final  String prenom;
@override final  String nom;
@override final  String phone;
@override final  String? email;
@override final  String? role;
@override@JsonKey(name: 'agent_type') final  String agentType;
 final  Map<String, dynamic>? _station;
@override Map<String, dynamic>? get station {
  final value = _station;
  if (value == null) return null;
  if (_station is EqualUnmodifiableMapView) return _station;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of CompanyAgent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyAgentCopyWith<_CompanyAgent> get copyWith => __$CompanyAgentCopyWithImpl<_CompanyAgent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyAgentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyAgent&&(identical(other.id, id) || other.id == id)&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.agentType, agentType) || other.agentType == agentType)&&const DeepCollectionEquality().equals(other._station, _station)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prenom,nom,phone,email,role,agentType,const DeepCollectionEquality().hash(_station),isActive,createdAt);

@override
String toString() {
  return 'CompanyAgent(id: $id, prenom: $prenom, nom: $nom, phone: $phone, email: $email, role: $role, agentType: $agentType, station: $station, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CompanyAgentCopyWith<$Res> implements $CompanyAgentCopyWith<$Res> {
  factory _$CompanyAgentCopyWith(_CompanyAgent value, $Res Function(_CompanyAgent) _then) = __$CompanyAgentCopyWithImpl;
@override @useResult
$Res call({
 int id, String prenom, String nom, String phone, String? email, String? role,@JsonKey(name: 'agent_type') String agentType, Map<String, dynamic>? station,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$CompanyAgentCopyWithImpl<$Res>
    implements _$CompanyAgentCopyWith<$Res> {
  __$CompanyAgentCopyWithImpl(this._self, this._then);

  final _CompanyAgent _self;
  final $Res Function(_CompanyAgent) _then;

/// Create a copy of CompanyAgent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prenom = null,Object? nom = null,Object? phone = null,Object? email = freezed,Object? role = freezed,Object? agentType = null,Object? station = freezed,Object? isActive = freezed,Object? createdAt = null,}) {
  return _then(_CompanyAgent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,prenom: null == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,agentType: null == agentType ? _self.agentType : agentType // ignore: cast_nullable_to_non_nullable
as String,station: freezed == station ? _self._station : station // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
