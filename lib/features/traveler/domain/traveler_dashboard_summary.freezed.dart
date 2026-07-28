// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_dashboard_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TravelerDashboardSummary {

 List<TravelerTripPreview> get nextTrips;/// Réservations actives (non annulées) à venir.
 int get activeBookingsCount;/// Réservations en attente de paiement.
 int get pendingCount;/// Billets payés (`paid_count`) — compteur « Payé » de la carte de statut.
 int get paidCount;/// Billets annulés + remboursés (`cancelled_count`) — compteur « Annulé ».
 int get cancelledCount; List<TravelerNotificationPreview> get recentNotifications;
/// Create a copy of TravelerDashboardSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerDashboardSummaryCopyWith<TravelerDashboardSummary> get copyWith => _$TravelerDashboardSummaryCopyWithImpl<TravelerDashboardSummary>(this as TravelerDashboardSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerDashboardSummary&&const DeepCollectionEquality().equals(other.nextTrips, nextTrips)&&(identical(other.activeBookingsCount, activeBookingsCount) || other.activeBookingsCount == activeBookingsCount)&&(identical(other.pendingCount, pendingCount) || other.pendingCount == pendingCount)&&(identical(other.paidCount, paidCount) || other.paidCount == paidCount)&&(identical(other.cancelledCount, cancelledCount) || other.cancelledCount == cancelledCount)&&const DeepCollectionEquality().equals(other.recentNotifications, recentNotifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nextTrips),activeBookingsCount,pendingCount,paidCount,cancelledCount,const DeepCollectionEquality().hash(recentNotifications));

@override
String toString() {
  return 'TravelerDashboardSummary(nextTrips: $nextTrips, activeBookingsCount: $activeBookingsCount, pendingCount: $pendingCount, paidCount: $paidCount, cancelledCount: $cancelledCount, recentNotifications: $recentNotifications)';
}


}

/// @nodoc
abstract mixin class $TravelerDashboardSummaryCopyWith<$Res>  {
  factory $TravelerDashboardSummaryCopyWith(TravelerDashboardSummary value, $Res Function(TravelerDashboardSummary) _then) = _$TravelerDashboardSummaryCopyWithImpl;
@useResult
$Res call({
 List<TravelerTripPreview> nextTrips, int activeBookingsCount, int pendingCount, int paidCount, int cancelledCount, List<TravelerNotificationPreview> recentNotifications
});




}
/// @nodoc
class _$TravelerDashboardSummaryCopyWithImpl<$Res>
    implements $TravelerDashboardSummaryCopyWith<$Res> {
  _$TravelerDashboardSummaryCopyWithImpl(this._self, this._then);

  final TravelerDashboardSummary _self;
  final $Res Function(TravelerDashboardSummary) _then;

/// Create a copy of TravelerDashboardSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextTrips = null,Object? activeBookingsCount = null,Object? pendingCount = null,Object? paidCount = null,Object? cancelledCount = null,Object? recentNotifications = null,}) {
  return _then(_self.copyWith(
nextTrips: null == nextTrips ? _self.nextTrips : nextTrips // ignore: cast_nullable_to_non_nullable
as List<TravelerTripPreview>,activeBookingsCount: null == activeBookingsCount ? _self.activeBookingsCount : activeBookingsCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,paidCount: null == paidCount ? _self.paidCount : paidCount // ignore: cast_nullable_to_non_nullable
as int,cancelledCount: null == cancelledCount ? _self.cancelledCount : cancelledCount // ignore: cast_nullable_to_non_nullable
as int,recentNotifications: null == recentNotifications ? _self.recentNotifications : recentNotifications // ignore: cast_nullable_to_non_nullable
as List<TravelerNotificationPreview>,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerDashboardSummary].
extension TravelerDashboardSummaryPatterns on TravelerDashboardSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerDashboardSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerDashboardSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerDashboardSummary value)  $default,){
final _that = this;
switch (_that) {
case _TravelerDashboardSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerDashboardSummary value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerDashboardSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TravelerTripPreview> nextTrips,  int activeBookingsCount,  int pendingCount,  int paidCount,  int cancelledCount,  List<TravelerNotificationPreview> recentNotifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerDashboardSummary() when $default != null:
return $default(_that.nextTrips,_that.activeBookingsCount,_that.pendingCount,_that.paidCount,_that.cancelledCount,_that.recentNotifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TravelerTripPreview> nextTrips,  int activeBookingsCount,  int pendingCount,  int paidCount,  int cancelledCount,  List<TravelerNotificationPreview> recentNotifications)  $default,) {final _that = this;
switch (_that) {
case _TravelerDashboardSummary():
return $default(_that.nextTrips,_that.activeBookingsCount,_that.pendingCount,_that.paidCount,_that.cancelledCount,_that.recentNotifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TravelerTripPreview> nextTrips,  int activeBookingsCount,  int pendingCount,  int paidCount,  int cancelledCount,  List<TravelerNotificationPreview> recentNotifications)?  $default,) {final _that = this;
switch (_that) {
case _TravelerDashboardSummary() when $default != null:
return $default(_that.nextTrips,_that.activeBookingsCount,_that.pendingCount,_that.paidCount,_that.cancelledCount,_that.recentNotifications);case _:
  return null;

}
}

}

/// @nodoc


class _TravelerDashboardSummary implements TravelerDashboardSummary {
  const _TravelerDashboardSummary({required final  List<TravelerTripPreview> nextTrips, required this.activeBookingsCount, required this.pendingCount, required this.paidCount, required this.cancelledCount, required final  List<TravelerNotificationPreview> recentNotifications}): _nextTrips = nextTrips,_recentNotifications = recentNotifications;
  

 final  List<TravelerTripPreview> _nextTrips;
@override List<TravelerTripPreview> get nextTrips {
  if (_nextTrips is EqualUnmodifiableListView) return _nextTrips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nextTrips);
}

/// Réservations actives (non annulées) à venir.
@override final  int activeBookingsCount;
/// Réservations en attente de paiement.
@override final  int pendingCount;
/// Billets payés (`paid_count`) — compteur « Payé » de la carte de statut.
@override final  int paidCount;
/// Billets annulés + remboursés (`cancelled_count`) — compteur « Annulé ».
@override final  int cancelledCount;
 final  List<TravelerNotificationPreview> _recentNotifications;
@override List<TravelerNotificationPreview> get recentNotifications {
  if (_recentNotifications is EqualUnmodifiableListView) return _recentNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentNotifications);
}


/// Create a copy of TravelerDashboardSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerDashboardSummaryCopyWith<_TravelerDashboardSummary> get copyWith => __$TravelerDashboardSummaryCopyWithImpl<_TravelerDashboardSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerDashboardSummary&&const DeepCollectionEquality().equals(other._nextTrips, _nextTrips)&&(identical(other.activeBookingsCount, activeBookingsCount) || other.activeBookingsCount == activeBookingsCount)&&(identical(other.pendingCount, pendingCount) || other.pendingCount == pendingCount)&&(identical(other.paidCount, paidCount) || other.paidCount == paidCount)&&(identical(other.cancelledCount, cancelledCount) || other.cancelledCount == cancelledCount)&&const DeepCollectionEquality().equals(other._recentNotifications, _recentNotifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nextTrips),activeBookingsCount,pendingCount,paidCount,cancelledCount,const DeepCollectionEquality().hash(_recentNotifications));

@override
String toString() {
  return 'TravelerDashboardSummary(nextTrips: $nextTrips, activeBookingsCount: $activeBookingsCount, pendingCount: $pendingCount, paidCount: $paidCount, cancelledCount: $cancelledCount, recentNotifications: $recentNotifications)';
}


}

/// @nodoc
abstract mixin class _$TravelerDashboardSummaryCopyWith<$Res> implements $TravelerDashboardSummaryCopyWith<$Res> {
  factory _$TravelerDashboardSummaryCopyWith(_TravelerDashboardSummary value, $Res Function(_TravelerDashboardSummary) _then) = __$TravelerDashboardSummaryCopyWithImpl;
@override @useResult
$Res call({
 List<TravelerTripPreview> nextTrips, int activeBookingsCount, int pendingCount, int paidCount, int cancelledCount, List<TravelerNotificationPreview> recentNotifications
});




}
/// @nodoc
class __$TravelerDashboardSummaryCopyWithImpl<$Res>
    implements _$TravelerDashboardSummaryCopyWith<$Res> {
  __$TravelerDashboardSummaryCopyWithImpl(this._self, this._then);

  final _TravelerDashboardSummary _self;
  final $Res Function(_TravelerDashboardSummary) _then;

/// Create a copy of TravelerDashboardSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextTrips = null,Object? activeBookingsCount = null,Object? pendingCount = null,Object? paidCount = null,Object? cancelledCount = null,Object? recentNotifications = null,}) {
  return _then(_TravelerDashboardSummary(
nextTrips: null == nextTrips ? _self._nextTrips : nextTrips // ignore: cast_nullable_to_non_nullable
as List<TravelerTripPreview>,activeBookingsCount: null == activeBookingsCount ? _self.activeBookingsCount : activeBookingsCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,paidCount: null == paidCount ? _self.paidCount : paidCount // ignore: cast_nullable_to_non_nullable
as int,cancelledCount: null == cancelledCount ? _self.cancelledCount : cancelledCount // ignore: cast_nullable_to_non_nullable
as int,recentNotifications: null == recentNotifications ? _self._recentNotifications : recentNotifications // ignore: cast_nullable_to_non_nullable
as List<TravelerNotificationPreview>,
  ));
}


}

/// @nodoc
mixin _$TravelerTripPreview {

 String get ticketNumber; String get origin; String get destination; DateTime get departureTime; String get seatNumber;/// Nom de la compagnie du trajet (`company_name`).
 String get companyName;/// Sigle de la compagnie (`company_sigle`), `null` si absent.
 String? get companySigle;/// Valeur technique du statut (`paid`, `pending`, `scheduled`…). Le libellé
/// et la couleur sont dérivés côté présentation.
 String get status;
/// Create a copy of TravelerTripPreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerTripPreviewCopyWith<TravelerTripPreview> get copyWith => _$TravelerTripPreviewCopyWithImpl<TravelerTripPreview>(this as TravelerTripPreview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerTripPreview&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,origin,destination,departureTime,seatNumber,companyName,companySigle,status);

@override
String toString() {
  return 'TravelerTripPreview(ticketNumber: $ticketNumber, origin: $origin, destination: $destination, departureTime: $departureTime, seatNumber: $seatNumber, companyName: $companyName, companySigle: $companySigle, status: $status)';
}


}

/// @nodoc
abstract mixin class $TravelerTripPreviewCopyWith<$Res>  {
  factory $TravelerTripPreviewCopyWith(TravelerTripPreview value, $Res Function(TravelerTripPreview) _then) = _$TravelerTripPreviewCopyWithImpl;
@useResult
$Res call({
 String ticketNumber, String origin, String destination, DateTime departureTime, String seatNumber, String companyName, String? companySigle, String status
});




}
/// @nodoc
class _$TravelerTripPreviewCopyWithImpl<$Res>
    implements $TravelerTripPreviewCopyWith<$Res> {
  _$TravelerTripPreviewCopyWithImpl(this._self, this._then);

  final TravelerTripPreview _self;
  final $Res Function(TravelerTripPreview) _then;

/// Create a copy of TravelerTripPreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketNumber = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? seatNumber = null,Object? companyName = null,Object? companySigle = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerTripPreview].
extension TravelerTripPreviewPatterns on TravelerTripPreview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerTripPreview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerTripPreview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerTripPreview value)  $default,){
final _that = this;
switch (_that) {
case _TravelerTripPreview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerTripPreview value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerTripPreview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticketNumber,  String origin,  String destination,  DateTime departureTime,  String seatNumber,  String companyName,  String? companySigle,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerTripPreview() when $default != null:
return $default(_that.ticketNumber,_that.origin,_that.destination,_that.departureTime,_that.seatNumber,_that.companyName,_that.companySigle,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticketNumber,  String origin,  String destination,  DateTime departureTime,  String seatNumber,  String companyName,  String? companySigle,  String status)  $default,) {final _that = this;
switch (_that) {
case _TravelerTripPreview():
return $default(_that.ticketNumber,_that.origin,_that.destination,_that.departureTime,_that.seatNumber,_that.companyName,_that.companySigle,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticketNumber,  String origin,  String destination,  DateTime departureTime,  String seatNumber,  String companyName,  String? companySigle,  String status)?  $default,) {final _that = this;
switch (_that) {
case _TravelerTripPreview() when $default != null:
return $default(_that.ticketNumber,_that.origin,_that.destination,_that.departureTime,_that.seatNumber,_that.companyName,_that.companySigle,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _TravelerTripPreview implements TravelerTripPreview {
  const _TravelerTripPreview({required this.ticketNumber, required this.origin, required this.destination, required this.departureTime, required this.seatNumber, required this.companyName, this.companySigle, required this.status});
  

@override final  String ticketNumber;
@override final  String origin;
@override final  String destination;
@override final  DateTime departureTime;
@override final  String seatNumber;
/// Nom de la compagnie du trajet (`company_name`).
@override final  String companyName;
/// Sigle de la compagnie (`company_sigle`), `null` si absent.
@override final  String? companySigle;
/// Valeur technique du statut (`paid`, `pending`, `scheduled`…). Le libellé
/// et la couleur sont dérivés côté présentation.
@override final  String status;

/// Create a copy of TravelerTripPreview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerTripPreviewCopyWith<_TravelerTripPreview> get copyWith => __$TravelerTripPreviewCopyWithImpl<_TravelerTripPreview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerTripPreview&&(identical(other.ticketNumber, ticketNumber) || other.ticketNumber == ticketNumber)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companySigle, companySigle) || other.companySigle == companySigle)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,ticketNumber,origin,destination,departureTime,seatNumber,companyName,companySigle,status);

@override
String toString() {
  return 'TravelerTripPreview(ticketNumber: $ticketNumber, origin: $origin, destination: $destination, departureTime: $departureTime, seatNumber: $seatNumber, companyName: $companyName, companySigle: $companySigle, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TravelerTripPreviewCopyWith<$Res> implements $TravelerTripPreviewCopyWith<$Res> {
  factory _$TravelerTripPreviewCopyWith(_TravelerTripPreview value, $Res Function(_TravelerTripPreview) _then) = __$TravelerTripPreviewCopyWithImpl;
@override @useResult
$Res call({
 String ticketNumber, String origin, String destination, DateTime departureTime, String seatNumber, String companyName, String? companySigle, String status
});




}
/// @nodoc
class __$TravelerTripPreviewCopyWithImpl<$Res>
    implements _$TravelerTripPreviewCopyWith<$Res> {
  __$TravelerTripPreviewCopyWithImpl(this._self, this._then);

  final _TravelerTripPreview _self;
  final $Res Function(_TravelerTripPreview) _then;

/// Create a copy of TravelerTripPreview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketNumber = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? seatNumber = null,Object? companyName = null,Object? companySigle = freezed,Object? status = null,}) {
  return _then(_TravelerTripPreview(
ticketNumber: null == ticketNumber ? _self.ticketNumber : ticketNumber // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companySigle: freezed == companySigle ? _self.companySigle : companySigle // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TravelerNotificationPreview {

 int get id; String get title; String get body;/// Type technique (`type`) → choix de l'icône et de la couleur côté UI.
 NotificationKind get kind;/// Libellé FR du type (`type_display`), facultatif.
 String? get typeDisplay; bool get isRead; DateTime get createdAt;
/// Create a copy of TravelerNotificationPreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelerNotificationPreviewCopyWith<TravelerNotificationPreview> get copyWith => _$TravelerNotificationPreviewCopyWithImpl<TravelerNotificationPreview>(this as TravelerNotificationPreview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelerNotificationPreview&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.typeDisplay, typeDisplay) || other.typeDisplay == typeDisplay)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,kind,typeDisplay,isRead,createdAt);

@override
String toString() {
  return 'TravelerNotificationPreview(id: $id, title: $title, body: $body, kind: $kind, typeDisplay: $typeDisplay, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TravelerNotificationPreviewCopyWith<$Res>  {
  factory $TravelerNotificationPreviewCopyWith(TravelerNotificationPreview value, $Res Function(TravelerNotificationPreview) _then) = _$TravelerNotificationPreviewCopyWithImpl;
@useResult
$Res call({
 int id, String title, String body, NotificationKind kind, String? typeDisplay, bool isRead, DateTime createdAt
});




}
/// @nodoc
class _$TravelerNotificationPreviewCopyWithImpl<$Res>
    implements $TravelerNotificationPreviewCopyWith<$Res> {
  _$TravelerNotificationPreviewCopyWithImpl(this._self, this._then);

  final TravelerNotificationPreview _self;
  final $Res Function(TravelerNotificationPreview) _then;

/// Create a copy of TravelerNotificationPreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? kind = null,Object? typeDisplay = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as NotificationKind,typeDisplay: freezed == typeDisplay ? _self.typeDisplay : typeDisplay // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelerNotificationPreview].
extension TravelerNotificationPreviewPatterns on TravelerNotificationPreview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelerNotificationPreview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelerNotificationPreview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelerNotificationPreview value)  $default,){
final _that = this;
switch (_that) {
case _TravelerNotificationPreview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelerNotificationPreview value)?  $default,){
final _that = this;
switch (_that) {
case _TravelerNotificationPreview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String body,  NotificationKind kind,  String? typeDisplay,  bool isRead,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelerNotificationPreview() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.kind,_that.typeDisplay,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String body,  NotificationKind kind,  String? typeDisplay,  bool isRead,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _TravelerNotificationPreview():
return $default(_that.id,_that.title,_that.body,_that.kind,_that.typeDisplay,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String body,  NotificationKind kind,  String? typeDisplay,  bool isRead,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TravelerNotificationPreview() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.kind,_that.typeDisplay,_that.isRead,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _TravelerNotificationPreview implements TravelerNotificationPreview {
  const _TravelerNotificationPreview({required this.id, required this.title, required this.body, required this.kind, this.typeDisplay, required this.isRead, required this.createdAt});
  

@override final  int id;
@override final  String title;
@override final  String body;
/// Type technique (`type`) → choix de l'icône et de la couleur côté UI.
@override final  NotificationKind kind;
/// Libellé FR du type (`type_display`), facultatif.
@override final  String? typeDisplay;
@override final  bool isRead;
@override final  DateTime createdAt;

/// Create a copy of TravelerNotificationPreview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelerNotificationPreviewCopyWith<_TravelerNotificationPreview> get copyWith => __$TravelerNotificationPreviewCopyWithImpl<_TravelerNotificationPreview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelerNotificationPreview&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.typeDisplay, typeDisplay) || other.typeDisplay == typeDisplay)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,kind,typeDisplay,isRead,createdAt);

@override
String toString() {
  return 'TravelerNotificationPreview(id: $id, title: $title, body: $body, kind: $kind, typeDisplay: $typeDisplay, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TravelerNotificationPreviewCopyWith<$Res> implements $TravelerNotificationPreviewCopyWith<$Res> {
  factory _$TravelerNotificationPreviewCopyWith(_TravelerNotificationPreview value, $Res Function(_TravelerNotificationPreview) _then) = __$TravelerNotificationPreviewCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String body, NotificationKind kind, String? typeDisplay, bool isRead, DateTime createdAt
});




}
/// @nodoc
class __$TravelerNotificationPreviewCopyWithImpl<$Res>
    implements _$TravelerNotificationPreviewCopyWith<$Res> {
  __$TravelerNotificationPreviewCopyWithImpl(this._self, this._then);

  final _TravelerNotificationPreview _self;
  final $Res Function(_TravelerNotificationPreview) _then;

/// Create a copy of TravelerNotificationPreview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? kind = null,Object? typeDisplay = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(_TravelerNotificationPreview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as NotificationKind,typeDisplay: freezed == typeDisplay ? _self.typeDisplay : typeDisplay // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
