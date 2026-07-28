// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class $CachedTripsTable extends CachedTrips
    with TableInfo<$CachedTripsTable, CachedTrip> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedTripsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _originCityMeta = const VerificationMeta(
    'originCity',
  );
  @override
  late final GeneratedColumn<String> originCity = GeneratedColumn<String>(
    'origin_city',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _destinationCityMeta = const VerificationMeta(
    'destinationCity',
  );
  @override
  late final GeneratedColumn<String> destinationCity = GeneratedColumn<String>(
    'destination_city',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _departureTimeMeta = const VerificationMeta(
    'departureTime',
  );
  @override
  late final GeneratedColumn<DateTime> departureTime =
      GeneratedColumn<DateTime>(
        'departure_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _availableSeatsMeta = const VerificationMeta(
    'availableSeats',
  );
  @override
  late final GeneratedColumn<int> availableSeats = GeneratedColumn<int>(
    'available_seats',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vehicleMeta = const VerificationMeta(
    'vehicle',
  );
  @override
  late final GeneratedColumn<String> vehicle = GeneratedColumn<String>(
    'vehicle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seatPlanMeta = const VerificationMeta(
    'seatPlan',
  );
  @override
  late final GeneratedColumn<String> seatPlan = GeneratedColumn<String>(
    'seat_plan',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    originCity,
    destinationCity,
    departureTime,
    availableSeats,
    vehicle,
    seatPlan,
    status,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_trips';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedTrip> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('origin_city')) {
      context.handle(
        _originCityMeta,
        originCity.isAcceptableOrUnknown(data['origin_city']!, _originCityMeta),
      );
    } else if (isInserting) {
      context.missing(_originCityMeta);
    }
    if (data.containsKey('destination_city')) {
      context.handle(
        _destinationCityMeta,
        destinationCity.isAcceptableOrUnknown(
          data['destination_city']!,
          _destinationCityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_destinationCityMeta);
    }
    if (data.containsKey('departure_time')) {
      context.handle(
        _departureTimeMeta,
        departureTime.isAcceptableOrUnknown(
          data['departure_time']!,
          _departureTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_departureTimeMeta);
    }
    if (data.containsKey('available_seats')) {
      context.handle(
        _availableSeatsMeta,
        availableSeats.isAcceptableOrUnknown(
          data['available_seats']!,
          _availableSeatsMeta,
        ),
      );
    }
    if (data.containsKey('vehicle')) {
      context.handle(
        _vehicleMeta,
        vehicle.isAcceptableOrUnknown(data['vehicle']!, _vehicleMeta),
      );
    } else if (isInserting) {
      context.missing(_vehicleMeta);
    }
    if (data.containsKey('seat_plan')) {
      context.handle(
        _seatPlanMeta,
        seatPlan.isAcceptableOrUnknown(data['seat_plan']!, _seatPlanMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedTrip map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedTrip(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      originCity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}origin_city'],
      )!,
      destinationCity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}destination_city'],
      )!,
      departureTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}departure_time'],
      )!,
      availableSeats: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}available_seats'],
      ),
      vehicle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}vehicle'],
      )!,
      seatPlan: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seat_plan'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $CachedTripsTable createAlias(String alias) {
    return $CachedTripsTable(attachedDatabase, alias);
  }
}

class CachedTrip extends DataClass implements Insertable<CachedTrip> {
  /// Identifiant serveur du voyage.
  final int id;
  final String originCity;
  final String destinationCity;
  final DateTime departureTime;
  final int? availableSeats;
  final String vehicle;

  /// Plan de salle brut (JSON), rendu tel quel par l'écran d'embarquement.
  final String? seatPlan;

  /// Valeur technique de `StatusF60Enum` (scheduled, in_progress, …).
  final String? status;

  /// Horodatage du téléchargement, pour l'affichage
  /// « Dernière mise à jour à HHhMM ».
  final DateTime cachedAt;
  const CachedTrip({
    required this.id,
    required this.originCity,
    required this.destinationCity,
    required this.departureTime,
    this.availableSeats,
    required this.vehicle,
    this.seatPlan,
    this.status,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['origin_city'] = Variable<String>(originCity);
    map['destination_city'] = Variable<String>(destinationCity);
    map['departure_time'] = Variable<DateTime>(departureTime);
    if (!nullToAbsent || availableSeats != null) {
      map['available_seats'] = Variable<int>(availableSeats);
    }
    map['vehicle'] = Variable<String>(vehicle);
    if (!nullToAbsent || seatPlan != null) {
      map['seat_plan'] = Variable<String>(seatPlan);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  CachedTripsCompanion toCompanion(bool nullToAbsent) {
    return CachedTripsCompanion(
      id: Value(id),
      originCity: Value(originCity),
      destinationCity: Value(destinationCity),
      departureTime: Value(departureTime),
      availableSeats: availableSeats == null && nullToAbsent
          ? const Value.absent()
          : Value(availableSeats),
      vehicle: Value(vehicle),
      seatPlan: seatPlan == null && nullToAbsent
          ? const Value.absent()
          : Value(seatPlan),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      cachedAt: Value(cachedAt),
    );
  }

  factory CachedTrip.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedTrip(
      id: serializer.fromJson<int>(json['id']),
      originCity: serializer.fromJson<String>(json['originCity']),
      destinationCity: serializer.fromJson<String>(json['destinationCity']),
      departureTime: serializer.fromJson<DateTime>(json['departureTime']),
      availableSeats: serializer.fromJson<int?>(json['availableSeats']),
      vehicle: serializer.fromJson<String>(json['vehicle']),
      seatPlan: serializer.fromJson<String?>(json['seatPlan']),
      status: serializer.fromJson<String?>(json['status']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'originCity': serializer.toJson<String>(originCity),
      'destinationCity': serializer.toJson<String>(destinationCity),
      'departureTime': serializer.toJson<DateTime>(departureTime),
      'availableSeats': serializer.toJson<int?>(availableSeats),
      'vehicle': serializer.toJson<String>(vehicle),
      'seatPlan': serializer.toJson<String?>(seatPlan),
      'status': serializer.toJson<String?>(status),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  CachedTrip copyWith({
    int? id,
    String? originCity,
    String? destinationCity,
    DateTime? departureTime,
    Value<int?> availableSeats = const Value.absent(),
    String? vehicle,
    Value<String?> seatPlan = const Value.absent(),
    Value<String?> status = const Value.absent(),
    DateTime? cachedAt,
  }) => CachedTrip(
    id: id ?? this.id,
    originCity: originCity ?? this.originCity,
    destinationCity: destinationCity ?? this.destinationCity,
    departureTime: departureTime ?? this.departureTime,
    availableSeats: availableSeats.present
        ? availableSeats.value
        : this.availableSeats,
    vehicle: vehicle ?? this.vehicle,
    seatPlan: seatPlan.present ? seatPlan.value : this.seatPlan,
    status: status.present ? status.value : this.status,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  CachedTrip copyWithCompanion(CachedTripsCompanion data) {
    return CachedTrip(
      id: data.id.present ? data.id.value : this.id,
      originCity: data.originCity.present
          ? data.originCity.value
          : this.originCity,
      destinationCity: data.destinationCity.present
          ? data.destinationCity.value
          : this.destinationCity,
      departureTime: data.departureTime.present
          ? data.departureTime.value
          : this.departureTime,
      availableSeats: data.availableSeats.present
          ? data.availableSeats.value
          : this.availableSeats,
      vehicle: data.vehicle.present ? data.vehicle.value : this.vehicle,
      seatPlan: data.seatPlan.present ? data.seatPlan.value : this.seatPlan,
      status: data.status.present ? data.status.value : this.status,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedTrip(')
          ..write('id: $id, ')
          ..write('originCity: $originCity, ')
          ..write('destinationCity: $destinationCity, ')
          ..write('departureTime: $departureTime, ')
          ..write('availableSeats: $availableSeats, ')
          ..write('vehicle: $vehicle, ')
          ..write('seatPlan: $seatPlan, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    originCity,
    destinationCity,
    departureTime,
    availableSeats,
    vehicle,
    seatPlan,
    status,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedTrip &&
          other.id == this.id &&
          other.originCity == this.originCity &&
          other.destinationCity == this.destinationCity &&
          other.departureTime == this.departureTime &&
          other.availableSeats == this.availableSeats &&
          other.vehicle == this.vehicle &&
          other.seatPlan == this.seatPlan &&
          other.status == this.status &&
          other.cachedAt == this.cachedAt);
}

class CachedTripsCompanion extends UpdateCompanion<CachedTrip> {
  final Value<int> id;
  final Value<String> originCity;
  final Value<String> destinationCity;
  final Value<DateTime> departureTime;
  final Value<int?> availableSeats;
  final Value<String> vehicle;
  final Value<String?> seatPlan;
  final Value<String?> status;
  final Value<DateTime> cachedAt;
  const CachedTripsCompanion({
    this.id = const Value.absent(),
    this.originCity = const Value.absent(),
    this.destinationCity = const Value.absent(),
    this.departureTime = const Value.absent(),
    this.availableSeats = const Value.absent(),
    this.vehicle = const Value.absent(),
    this.seatPlan = const Value.absent(),
    this.status = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  CachedTripsCompanion.insert({
    this.id = const Value.absent(),
    required String originCity,
    required String destinationCity,
    required DateTime departureTime,
    this.availableSeats = const Value.absent(),
    required String vehicle,
    this.seatPlan = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime cachedAt,
  }) : originCity = Value(originCity),
       destinationCity = Value(destinationCity),
       departureTime = Value(departureTime),
       vehicle = Value(vehicle),
       cachedAt = Value(cachedAt);
  static Insertable<CachedTrip> custom({
    Expression<int>? id,
    Expression<String>? originCity,
    Expression<String>? destinationCity,
    Expression<DateTime>? departureTime,
    Expression<int>? availableSeats,
    Expression<String>? vehicle,
    Expression<String>? seatPlan,
    Expression<String>? status,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (originCity != null) 'origin_city': originCity,
      if (destinationCity != null) 'destination_city': destinationCity,
      if (departureTime != null) 'departure_time': departureTime,
      if (availableSeats != null) 'available_seats': availableSeats,
      if (vehicle != null) 'vehicle': vehicle,
      if (seatPlan != null) 'seat_plan': seatPlan,
      if (status != null) 'status': status,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  CachedTripsCompanion copyWith({
    Value<int>? id,
    Value<String>? originCity,
    Value<String>? destinationCity,
    Value<DateTime>? departureTime,
    Value<int?>? availableSeats,
    Value<String>? vehicle,
    Value<String?>? seatPlan,
    Value<String?>? status,
    Value<DateTime>? cachedAt,
  }) {
    return CachedTripsCompanion(
      id: id ?? this.id,
      originCity: originCity ?? this.originCity,
      destinationCity: destinationCity ?? this.destinationCity,
      departureTime: departureTime ?? this.departureTime,
      availableSeats: availableSeats ?? this.availableSeats,
      vehicle: vehicle ?? this.vehicle,
      seatPlan: seatPlan ?? this.seatPlan,
      status: status ?? this.status,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (originCity.present) {
      map['origin_city'] = Variable<String>(originCity.value);
    }
    if (destinationCity.present) {
      map['destination_city'] = Variable<String>(destinationCity.value);
    }
    if (departureTime.present) {
      map['departure_time'] = Variable<DateTime>(departureTime.value);
    }
    if (availableSeats.present) {
      map['available_seats'] = Variable<int>(availableSeats.value);
    }
    if (vehicle.present) {
      map['vehicle'] = Variable<String>(vehicle.value);
    }
    if (seatPlan.present) {
      map['seat_plan'] = Variable<String>(seatPlan.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedTripsCompanion(')
          ..write('id: $id, ')
          ..write('originCity: $originCity, ')
          ..write('destinationCity: $destinationCity, ')
          ..write('departureTime: $departureTime, ')
          ..write('availableSeats: $availableSeats, ')
          ..write('vehicle: $vehicle, ')
          ..write('seatPlan: $seatPlan, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $CachedBookingsTable extends CachedBookings
    with TableInfo<$CachedBookingsTable, CachedBooking> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedBookingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ticketNumberMeta = const VerificationMeta(
    'ticketNumber',
  );
  @override
  late final GeneratedColumn<String> ticketNumber = GeneratedColumn<String>(
    'ticket_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tripIdMeta = const VerificationMeta('tripId');
  @override
  late final GeneratedColumn<int> tripId = GeneratedColumn<int>(
    'trip_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passengerNameMeta = const VerificationMeta(
    'passengerName',
  );
  @override
  late final GeneratedColumn<String> passengerName = GeneratedColumn<String>(
    'passenger_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _seatNumberMeta = const VerificationMeta(
    'seatNumber',
  );
  @override
  late final GeneratedColumn<String> seatNumber = GeneratedColumn<String>(
    'seat_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedColumn<String> qrCode = GeneratedColumn<String>(
    'qr_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    ticketNumber,
    tripId,
    passengerName,
    phone,
    seatNumber,
    qrCode,
    status,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_bookings';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedBooking> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ticket_number')) {
      context.handle(
        _ticketNumberMeta,
        ticketNumber.isAcceptableOrUnknown(
          data['ticket_number']!,
          _ticketNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ticketNumberMeta);
    }
    if (data.containsKey('trip_id')) {
      context.handle(
        _tripIdMeta,
        tripId.isAcceptableOrUnknown(data['trip_id']!, _tripIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tripIdMeta);
    }
    if (data.containsKey('passenger_name')) {
      context.handle(
        _passengerNameMeta,
        passengerName.isAcceptableOrUnknown(
          data['passenger_name']!,
          _passengerNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_passengerNameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('seat_number')) {
      context.handle(
        _seatNumberMeta,
        seatNumber.isAcceptableOrUnknown(data['seat_number']!, _seatNumberMeta),
      );
    }
    if (data.containsKey('qr_code')) {
      context.handle(
        _qrCodeMeta,
        qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ticketNumber};
  @override
  CachedBooking map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedBooking(
      ticketNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ticket_number'],
      )!,
      tripId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trip_id'],
      )!,
      passengerName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}passenger_name'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      seatNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seat_number'],
      ),
      qrCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}qr_code'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $CachedBookingsTable createAlias(String alias) {
    return $CachedBookingsTable(attachedDatabase, alias);
  }
}

class CachedBooking extends DataClass implements Insertable<CachedBooking> {
  /// Numéro de billet officiel (`BF2026…`) — identifiant naturel.
  final String ticketNumber;
  final int tripId;
  final String passengerName;
  final String? phone;
  final String? seatNumber;

  /// Contenu du QR code, pour la validation hors ligne.
  final String? qrCode;

  /// Valeur technique de `BookingReadStatusEnum`.
  final String? status;
  final DateTime cachedAt;
  const CachedBooking({
    required this.ticketNumber,
    required this.tripId,
    required this.passengerName,
    this.phone,
    this.seatNumber,
    this.qrCode,
    this.status,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ticket_number'] = Variable<String>(ticketNumber);
    map['trip_id'] = Variable<int>(tripId);
    map['passenger_name'] = Variable<String>(passengerName);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || seatNumber != null) {
      map['seat_number'] = Variable<String>(seatNumber);
    }
    if (!nullToAbsent || qrCode != null) {
      map['qr_code'] = Variable<String>(qrCode);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  CachedBookingsCompanion toCompanion(bool nullToAbsent) {
    return CachedBookingsCompanion(
      ticketNumber: Value(ticketNumber),
      tripId: Value(tripId),
      passengerName: Value(passengerName),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      seatNumber: seatNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(seatNumber),
      qrCode: qrCode == null && nullToAbsent
          ? const Value.absent()
          : Value(qrCode),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      cachedAt: Value(cachedAt),
    );
  }

  factory CachedBooking.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedBooking(
      ticketNumber: serializer.fromJson<String>(json['ticketNumber']),
      tripId: serializer.fromJson<int>(json['tripId']),
      passengerName: serializer.fromJson<String>(json['passengerName']),
      phone: serializer.fromJson<String?>(json['phone']),
      seatNumber: serializer.fromJson<String?>(json['seatNumber']),
      qrCode: serializer.fromJson<String?>(json['qrCode']),
      status: serializer.fromJson<String?>(json['status']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ticketNumber': serializer.toJson<String>(ticketNumber),
      'tripId': serializer.toJson<int>(tripId),
      'passengerName': serializer.toJson<String>(passengerName),
      'phone': serializer.toJson<String?>(phone),
      'seatNumber': serializer.toJson<String?>(seatNumber),
      'qrCode': serializer.toJson<String?>(qrCode),
      'status': serializer.toJson<String?>(status),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  CachedBooking copyWith({
    String? ticketNumber,
    int? tripId,
    String? passengerName,
    Value<String?> phone = const Value.absent(),
    Value<String?> seatNumber = const Value.absent(),
    Value<String?> qrCode = const Value.absent(),
    Value<String?> status = const Value.absent(),
    DateTime? cachedAt,
  }) => CachedBooking(
    ticketNumber: ticketNumber ?? this.ticketNumber,
    tripId: tripId ?? this.tripId,
    passengerName: passengerName ?? this.passengerName,
    phone: phone.present ? phone.value : this.phone,
    seatNumber: seatNumber.present ? seatNumber.value : this.seatNumber,
    qrCode: qrCode.present ? qrCode.value : this.qrCode,
    status: status.present ? status.value : this.status,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  CachedBooking copyWithCompanion(CachedBookingsCompanion data) {
    return CachedBooking(
      ticketNumber: data.ticketNumber.present
          ? data.ticketNumber.value
          : this.ticketNumber,
      tripId: data.tripId.present ? data.tripId.value : this.tripId,
      passengerName: data.passengerName.present
          ? data.passengerName.value
          : this.passengerName,
      phone: data.phone.present ? data.phone.value : this.phone,
      seatNumber: data.seatNumber.present
          ? data.seatNumber.value
          : this.seatNumber,
      qrCode: data.qrCode.present ? data.qrCode.value : this.qrCode,
      status: data.status.present ? data.status.value : this.status,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedBooking(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('tripId: $tripId, ')
          ..write('passengerName: $passengerName, ')
          ..write('phone: $phone, ')
          ..write('seatNumber: $seatNumber, ')
          ..write('qrCode: $qrCode, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    ticketNumber,
    tripId,
    passengerName,
    phone,
    seatNumber,
    qrCode,
    status,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedBooking &&
          other.ticketNumber == this.ticketNumber &&
          other.tripId == this.tripId &&
          other.passengerName == this.passengerName &&
          other.phone == this.phone &&
          other.seatNumber == this.seatNumber &&
          other.qrCode == this.qrCode &&
          other.status == this.status &&
          other.cachedAt == this.cachedAt);
}

class CachedBookingsCompanion extends UpdateCompanion<CachedBooking> {
  final Value<String> ticketNumber;
  final Value<int> tripId;
  final Value<String> passengerName;
  final Value<String?> phone;
  final Value<String?> seatNumber;
  final Value<String?> qrCode;
  final Value<String?> status;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const CachedBookingsCompanion({
    this.ticketNumber = const Value.absent(),
    this.tripId = const Value.absent(),
    this.passengerName = const Value.absent(),
    this.phone = const Value.absent(),
    this.seatNumber = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.status = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedBookingsCompanion.insert({
    required String ticketNumber,
    required int tripId,
    required String passengerName,
    this.phone = const Value.absent(),
    this.seatNumber = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  }) : ticketNumber = Value(ticketNumber),
       tripId = Value(tripId),
       passengerName = Value(passengerName),
       cachedAt = Value(cachedAt);
  static Insertable<CachedBooking> custom({
    Expression<String>? ticketNumber,
    Expression<int>? tripId,
    Expression<String>? passengerName,
    Expression<String>? phone,
    Expression<String>? seatNumber,
    Expression<String>? qrCode,
    Expression<String>? status,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ticketNumber != null) 'ticket_number': ticketNumber,
      if (tripId != null) 'trip_id': tripId,
      if (passengerName != null) 'passenger_name': passengerName,
      if (phone != null) 'phone': phone,
      if (seatNumber != null) 'seat_number': seatNumber,
      if (qrCode != null) 'qr_code': qrCode,
      if (status != null) 'status': status,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedBookingsCompanion copyWith({
    Value<String>? ticketNumber,
    Value<int>? tripId,
    Value<String>? passengerName,
    Value<String?>? phone,
    Value<String?>? seatNumber,
    Value<String?>? qrCode,
    Value<String?>? status,
    Value<DateTime>? cachedAt,
    Value<int>? rowid,
  }) {
    return CachedBookingsCompanion(
      ticketNumber: ticketNumber ?? this.ticketNumber,
      tripId: tripId ?? this.tripId,
      passengerName: passengerName ?? this.passengerName,
      phone: phone ?? this.phone,
      seatNumber: seatNumber ?? this.seatNumber,
      qrCode: qrCode ?? this.qrCode,
      status: status ?? this.status,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ticketNumber.present) {
      map['ticket_number'] = Variable<String>(ticketNumber.value);
    }
    if (tripId.present) {
      map['trip_id'] = Variable<int>(tripId.value);
    }
    if (passengerName.present) {
      map['passenger_name'] = Variable<String>(passengerName.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (seatNumber.present) {
      map['seat_number'] = Variable<String>(seatNumber.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedBookingsCompanion(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('tripId: $tripId, ')
          ..write('passengerName: $passengerName, ')
          ..write('phone: $phone, ')
          ..write('seatNumber: $seatNumber, ')
          ..write('qrCode: $qrCode, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CachedParcelArrivalsTable extends CachedParcelArrivals
    with TableInfo<$CachedParcelArrivalsTable, CachedParcelArrival> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedParcelArrivalsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _trackingNumberMeta = const VerificationMeta(
    'trackingNumber',
  );
  @override
  late final GeneratedColumn<String> trackingNumber = GeneratedColumn<String>(
    'tracking_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipientNameMeta = const VerificationMeta(
    'recipientName',
  );
  @override
  late final GeneratedColumn<String> recipientName = GeneratedColumn<String>(
    'recipient_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipientPhoneMeta = const VerificationMeta(
    'recipientPhone',
  );
  @override
  late final GeneratedColumn<String> recipientPhone = GeneratedColumn<String>(
    'recipient_phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _destinationCityMeta = const VerificationMeta(
    'destinationCity',
  );
  @override
  late final GeneratedColumn<String> destinationCity = GeneratedColumn<String>(
    'destination_city',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    trackingNumber,
    recipientName,
    recipientPhone,
    destinationCity,
    status,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_parcel_arrivals';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedParcelArrival> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tracking_number')) {
      context.handle(
        _trackingNumberMeta,
        trackingNumber.isAcceptableOrUnknown(
          data['tracking_number']!,
          _trackingNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_trackingNumberMeta);
    }
    if (data.containsKey('recipient_name')) {
      context.handle(
        _recipientNameMeta,
        recipientName.isAcceptableOrUnknown(
          data['recipient_name']!,
          _recipientNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recipientNameMeta);
    }
    if (data.containsKey('recipient_phone')) {
      context.handle(
        _recipientPhoneMeta,
        recipientPhone.isAcceptableOrUnknown(
          data['recipient_phone']!,
          _recipientPhoneMeta,
        ),
      );
    }
    if (data.containsKey('destination_city')) {
      context.handle(
        _destinationCityMeta,
        destinationCity.isAcceptableOrUnknown(
          data['destination_city']!,
          _destinationCityMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {trackingNumber};
  @override
  CachedParcelArrival map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedParcelArrival(
      trackingNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_number'],
      )!,
      recipientName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipient_name'],
      )!,
      recipientPhone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipient_phone'],
      ),
      destinationCity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}destination_city'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $CachedParcelArrivalsTable createAlias(String alias) {
    return $CachedParcelArrivalsTable(attachedDatabase, alias);
  }
}

class CachedParcelArrival extends DataClass
    implements Insertable<CachedParcelArrival> {
  /// Code de suivi officiel (`COL2026…`).
  final String trackingNumber;
  final String recipientName;
  final String? recipientPhone;
  final String? destinationCity;

  /// Valeur technique de `Status62aEnum` (registered, arrived, …).
  final String? status;
  final DateTime cachedAt;
  const CachedParcelArrival({
    required this.trackingNumber,
    required this.recipientName,
    this.recipientPhone,
    this.destinationCity,
    this.status,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['tracking_number'] = Variable<String>(trackingNumber);
    map['recipient_name'] = Variable<String>(recipientName);
    if (!nullToAbsent || recipientPhone != null) {
      map['recipient_phone'] = Variable<String>(recipientPhone);
    }
    if (!nullToAbsent || destinationCity != null) {
      map['destination_city'] = Variable<String>(destinationCity);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  CachedParcelArrivalsCompanion toCompanion(bool nullToAbsent) {
    return CachedParcelArrivalsCompanion(
      trackingNumber: Value(trackingNumber),
      recipientName: Value(recipientName),
      recipientPhone: recipientPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(recipientPhone),
      destinationCity: destinationCity == null && nullToAbsent
          ? const Value.absent()
          : Value(destinationCity),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      cachedAt: Value(cachedAt),
    );
  }

  factory CachedParcelArrival.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedParcelArrival(
      trackingNumber: serializer.fromJson<String>(json['trackingNumber']),
      recipientName: serializer.fromJson<String>(json['recipientName']),
      recipientPhone: serializer.fromJson<String?>(json['recipientPhone']),
      destinationCity: serializer.fromJson<String?>(json['destinationCity']),
      status: serializer.fromJson<String?>(json['status']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'trackingNumber': serializer.toJson<String>(trackingNumber),
      'recipientName': serializer.toJson<String>(recipientName),
      'recipientPhone': serializer.toJson<String?>(recipientPhone),
      'destinationCity': serializer.toJson<String?>(destinationCity),
      'status': serializer.toJson<String?>(status),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  CachedParcelArrival copyWith({
    String? trackingNumber,
    String? recipientName,
    Value<String?> recipientPhone = const Value.absent(),
    Value<String?> destinationCity = const Value.absent(),
    Value<String?> status = const Value.absent(),
    DateTime? cachedAt,
  }) => CachedParcelArrival(
    trackingNumber: trackingNumber ?? this.trackingNumber,
    recipientName: recipientName ?? this.recipientName,
    recipientPhone: recipientPhone.present
        ? recipientPhone.value
        : this.recipientPhone,
    destinationCity: destinationCity.present
        ? destinationCity.value
        : this.destinationCity,
    status: status.present ? status.value : this.status,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  CachedParcelArrival copyWithCompanion(CachedParcelArrivalsCompanion data) {
    return CachedParcelArrival(
      trackingNumber: data.trackingNumber.present
          ? data.trackingNumber.value
          : this.trackingNumber,
      recipientName: data.recipientName.present
          ? data.recipientName.value
          : this.recipientName,
      recipientPhone: data.recipientPhone.present
          ? data.recipientPhone.value
          : this.recipientPhone,
      destinationCity: data.destinationCity.present
          ? data.destinationCity.value
          : this.destinationCity,
      status: data.status.present ? data.status.value : this.status,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedParcelArrival(')
          ..write('trackingNumber: $trackingNumber, ')
          ..write('recipientName: $recipientName, ')
          ..write('recipientPhone: $recipientPhone, ')
          ..write('destinationCity: $destinationCity, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    trackingNumber,
    recipientName,
    recipientPhone,
    destinationCity,
    status,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedParcelArrival &&
          other.trackingNumber == this.trackingNumber &&
          other.recipientName == this.recipientName &&
          other.recipientPhone == this.recipientPhone &&
          other.destinationCity == this.destinationCity &&
          other.status == this.status &&
          other.cachedAt == this.cachedAt);
}

class CachedParcelArrivalsCompanion
    extends UpdateCompanion<CachedParcelArrival> {
  final Value<String> trackingNumber;
  final Value<String> recipientName;
  final Value<String?> recipientPhone;
  final Value<String?> destinationCity;
  final Value<String?> status;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const CachedParcelArrivalsCompanion({
    this.trackingNumber = const Value.absent(),
    this.recipientName = const Value.absent(),
    this.recipientPhone = const Value.absent(),
    this.destinationCity = const Value.absent(),
    this.status = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedParcelArrivalsCompanion.insert({
    required String trackingNumber,
    required String recipientName,
    this.recipientPhone = const Value.absent(),
    this.destinationCity = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  }) : trackingNumber = Value(trackingNumber),
       recipientName = Value(recipientName),
       cachedAt = Value(cachedAt);
  static Insertable<CachedParcelArrival> custom({
    Expression<String>? trackingNumber,
    Expression<String>? recipientName,
    Expression<String>? recipientPhone,
    Expression<String>? destinationCity,
    Expression<String>? status,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (trackingNumber != null) 'tracking_number': trackingNumber,
      if (recipientName != null) 'recipient_name': recipientName,
      if (recipientPhone != null) 'recipient_phone': recipientPhone,
      if (destinationCity != null) 'destination_city': destinationCity,
      if (status != null) 'status': status,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedParcelArrivalsCompanion copyWith({
    Value<String>? trackingNumber,
    Value<String>? recipientName,
    Value<String?>? recipientPhone,
    Value<String?>? destinationCity,
    Value<String?>? status,
    Value<DateTime>? cachedAt,
    Value<int>? rowid,
  }) {
    return CachedParcelArrivalsCompanion(
      trackingNumber: trackingNumber ?? this.trackingNumber,
      recipientName: recipientName ?? this.recipientName,
      recipientPhone: recipientPhone ?? this.recipientPhone,
      destinationCity: destinationCity ?? this.destinationCity,
      status: status ?? this.status,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (trackingNumber.present) {
      map['tracking_number'] = Variable<String>(trackingNumber.value);
    }
    if (recipientName.present) {
      map['recipient_name'] = Variable<String>(recipientName.value);
    }
    if (recipientPhone.present) {
      map['recipient_phone'] = Variable<String>(recipientPhone.value);
    }
    if (destinationCity.present) {
      map['destination_city'] = Variable<String>(destinationCity.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedParcelArrivalsCompanion(')
          ..write('trackingNumber: $trackingNumber, ')
          ..write('recipientName: $recipientName, ')
          ..write('recipientPhone: $recipientPhone, ')
          ..write('destinationCity: $destinationCity, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CachedAgentDeparturesTable extends CachedAgentDepartures
    with TableInfo<$CachedAgentDeparturesTable, CachedAgentDeparture> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedAgentDeparturesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tripIdMeta = const VerificationMeta('tripId');
  @override
  late final GeneratedColumn<int> tripId = GeneratedColumn<int>(
    'trip_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _originMeta = const VerificationMeta('origin');
  @override
  late final GeneratedColumn<String> origin = GeneratedColumn<String>(
    'origin',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _destinationMeta = const VerificationMeta(
    'destination',
  );
  @override
  late final GeneratedColumn<String> destination = GeneratedColumn<String>(
    'destination',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _departureTimeMeta = const VerificationMeta(
    'departureTime',
  );
  @override
  late final GeneratedColumn<DateTime> departureTime =
      GeneratedColumn<DateTime>(
        'departure_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _availableSeatsMeta = const VerificationMeta(
    'availableSeats',
  );
  @override
  late final GeneratedColumn<int> availableSeats = GeneratedColumn<int>(
    'available_seats',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passengerCountMeta = const VerificationMeta(
    'passengerCount',
  );
  @override
  late final GeneratedColumn<int> passengerCount = GeneratedColumn<int>(
    'passenger_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _vehicleRegistrationMeta =
      const VerificationMeta('vehicleRegistration');
  @override
  late final GeneratedColumn<String> vehicleRegistration =
      GeneratedColumn<String>(
        'vehicle_registration',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    tripId,
    origin,
    destination,
    departureTime,
    availableSeats,
    passengerCount,
    vehicleRegistration,
    status,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_agent_departures';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedAgentDeparture> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('trip_id')) {
      context.handle(
        _tripIdMeta,
        tripId.isAcceptableOrUnknown(data['trip_id']!, _tripIdMeta),
      );
    }
    if (data.containsKey('origin')) {
      context.handle(
        _originMeta,
        origin.isAcceptableOrUnknown(data['origin']!, _originMeta),
      );
    } else if (isInserting) {
      context.missing(_originMeta);
    }
    if (data.containsKey('destination')) {
      context.handle(
        _destinationMeta,
        destination.isAcceptableOrUnknown(
          data['destination']!,
          _destinationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_destinationMeta);
    }
    if (data.containsKey('departure_time')) {
      context.handle(
        _departureTimeMeta,
        departureTime.isAcceptableOrUnknown(
          data['departure_time']!,
          _departureTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_departureTimeMeta);
    }
    if (data.containsKey('available_seats')) {
      context.handle(
        _availableSeatsMeta,
        availableSeats.isAcceptableOrUnknown(
          data['available_seats']!,
          _availableSeatsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_availableSeatsMeta);
    }
    if (data.containsKey('passenger_count')) {
      context.handle(
        _passengerCountMeta,
        passengerCount.isAcceptableOrUnknown(
          data['passenger_count']!,
          _passengerCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_passengerCountMeta);
    }
    if (data.containsKey('vehicle_registration')) {
      context.handle(
        _vehicleRegistrationMeta,
        vehicleRegistration.isAcceptableOrUnknown(
          data['vehicle_registration']!,
          _vehicleRegistrationMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tripId};
  @override
  CachedAgentDeparture map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedAgentDeparture(
      tripId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trip_id'],
      )!,
      origin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}origin'],
      )!,
      destination: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}destination'],
      )!,
      departureTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}departure_time'],
      )!,
      availableSeats: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}available_seats'],
      )!,
      passengerCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}passenger_count'],
      )!,
      vehicleRegistration: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}vehicle_registration'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $CachedAgentDeparturesTable createAlias(String alias) {
    return $CachedAgentDeparturesTable(attachedDatabase, alias);
  }
}

class CachedAgentDeparture extends DataClass
    implements Insertable<CachedAgentDeparture> {
  /// Identifiant serveur du voyage.
  final int tripId;
  final String origin;
  final String destination;
  final DateTime departureTime;
  final int availableSeats;

  /// Passagers déjà enregistrés sur ce départ.
  final int passengerCount;

  /// Immatriculation du véhicule — absente si `agent/trips/today/` n'a pas
  /// répondu lors du dernier chargement.
  final String? vehicleRegistration;

  /// Valeur technique de `StatusF60Enum` (scheduled, delayed, …).
  final String? status;
  final DateTime cachedAt;
  const CachedAgentDeparture({
    required this.tripId,
    required this.origin,
    required this.destination,
    required this.departureTime,
    required this.availableSeats,
    required this.passengerCount,
    this.vehicleRegistration,
    this.status,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['trip_id'] = Variable<int>(tripId);
    map['origin'] = Variable<String>(origin);
    map['destination'] = Variable<String>(destination);
    map['departure_time'] = Variable<DateTime>(departureTime);
    map['available_seats'] = Variable<int>(availableSeats);
    map['passenger_count'] = Variable<int>(passengerCount);
    if (!nullToAbsent || vehicleRegistration != null) {
      map['vehicle_registration'] = Variable<String>(vehicleRegistration);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  CachedAgentDeparturesCompanion toCompanion(bool nullToAbsent) {
    return CachedAgentDeparturesCompanion(
      tripId: Value(tripId),
      origin: Value(origin),
      destination: Value(destination),
      departureTime: Value(departureTime),
      availableSeats: Value(availableSeats),
      passengerCount: Value(passengerCount),
      vehicleRegistration: vehicleRegistration == null && nullToAbsent
          ? const Value.absent()
          : Value(vehicleRegistration),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      cachedAt: Value(cachedAt),
    );
  }

  factory CachedAgentDeparture.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedAgentDeparture(
      tripId: serializer.fromJson<int>(json['tripId']),
      origin: serializer.fromJson<String>(json['origin']),
      destination: serializer.fromJson<String>(json['destination']),
      departureTime: serializer.fromJson<DateTime>(json['departureTime']),
      availableSeats: serializer.fromJson<int>(json['availableSeats']),
      passengerCount: serializer.fromJson<int>(json['passengerCount']),
      vehicleRegistration: serializer.fromJson<String?>(
        json['vehicleRegistration'],
      ),
      status: serializer.fromJson<String?>(json['status']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tripId': serializer.toJson<int>(tripId),
      'origin': serializer.toJson<String>(origin),
      'destination': serializer.toJson<String>(destination),
      'departureTime': serializer.toJson<DateTime>(departureTime),
      'availableSeats': serializer.toJson<int>(availableSeats),
      'passengerCount': serializer.toJson<int>(passengerCount),
      'vehicleRegistration': serializer.toJson<String?>(vehicleRegistration),
      'status': serializer.toJson<String?>(status),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  CachedAgentDeparture copyWith({
    int? tripId,
    String? origin,
    String? destination,
    DateTime? departureTime,
    int? availableSeats,
    int? passengerCount,
    Value<String?> vehicleRegistration = const Value.absent(),
    Value<String?> status = const Value.absent(),
    DateTime? cachedAt,
  }) => CachedAgentDeparture(
    tripId: tripId ?? this.tripId,
    origin: origin ?? this.origin,
    destination: destination ?? this.destination,
    departureTime: departureTime ?? this.departureTime,
    availableSeats: availableSeats ?? this.availableSeats,
    passengerCount: passengerCount ?? this.passengerCount,
    vehicleRegistration: vehicleRegistration.present
        ? vehicleRegistration.value
        : this.vehicleRegistration,
    status: status.present ? status.value : this.status,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  CachedAgentDeparture copyWithCompanion(CachedAgentDeparturesCompanion data) {
    return CachedAgentDeparture(
      tripId: data.tripId.present ? data.tripId.value : this.tripId,
      origin: data.origin.present ? data.origin.value : this.origin,
      destination: data.destination.present
          ? data.destination.value
          : this.destination,
      departureTime: data.departureTime.present
          ? data.departureTime.value
          : this.departureTime,
      availableSeats: data.availableSeats.present
          ? data.availableSeats.value
          : this.availableSeats,
      passengerCount: data.passengerCount.present
          ? data.passengerCount.value
          : this.passengerCount,
      vehicleRegistration: data.vehicleRegistration.present
          ? data.vehicleRegistration.value
          : this.vehicleRegistration,
      status: data.status.present ? data.status.value : this.status,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedAgentDeparture(')
          ..write('tripId: $tripId, ')
          ..write('origin: $origin, ')
          ..write('destination: $destination, ')
          ..write('departureTime: $departureTime, ')
          ..write('availableSeats: $availableSeats, ')
          ..write('passengerCount: $passengerCount, ')
          ..write('vehicleRegistration: $vehicleRegistration, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    tripId,
    origin,
    destination,
    departureTime,
    availableSeats,
    passengerCount,
    vehicleRegistration,
    status,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedAgentDeparture &&
          other.tripId == this.tripId &&
          other.origin == this.origin &&
          other.destination == this.destination &&
          other.departureTime == this.departureTime &&
          other.availableSeats == this.availableSeats &&
          other.passengerCount == this.passengerCount &&
          other.vehicleRegistration == this.vehicleRegistration &&
          other.status == this.status &&
          other.cachedAt == this.cachedAt);
}

class CachedAgentDeparturesCompanion
    extends UpdateCompanion<CachedAgentDeparture> {
  final Value<int> tripId;
  final Value<String> origin;
  final Value<String> destination;
  final Value<DateTime> departureTime;
  final Value<int> availableSeats;
  final Value<int> passengerCount;
  final Value<String?> vehicleRegistration;
  final Value<String?> status;
  final Value<DateTime> cachedAt;
  const CachedAgentDeparturesCompanion({
    this.tripId = const Value.absent(),
    this.origin = const Value.absent(),
    this.destination = const Value.absent(),
    this.departureTime = const Value.absent(),
    this.availableSeats = const Value.absent(),
    this.passengerCount = const Value.absent(),
    this.vehicleRegistration = const Value.absent(),
    this.status = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  CachedAgentDeparturesCompanion.insert({
    this.tripId = const Value.absent(),
    required String origin,
    required String destination,
    required DateTime departureTime,
    required int availableSeats,
    required int passengerCount,
    this.vehicleRegistration = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime cachedAt,
  }) : origin = Value(origin),
       destination = Value(destination),
       departureTime = Value(departureTime),
       availableSeats = Value(availableSeats),
       passengerCount = Value(passengerCount),
       cachedAt = Value(cachedAt);
  static Insertable<CachedAgentDeparture> custom({
    Expression<int>? tripId,
    Expression<String>? origin,
    Expression<String>? destination,
    Expression<DateTime>? departureTime,
    Expression<int>? availableSeats,
    Expression<int>? passengerCount,
    Expression<String>? vehicleRegistration,
    Expression<String>? status,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (tripId != null) 'trip_id': tripId,
      if (origin != null) 'origin': origin,
      if (destination != null) 'destination': destination,
      if (departureTime != null) 'departure_time': departureTime,
      if (availableSeats != null) 'available_seats': availableSeats,
      if (passengerCount != null) 'passenger_count': passengerCount,
      if (vehicleRegistration != null)
        'vehicle_registration': vehicleRegistration,
      if (status != null) 'status': status,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  CachedAgentDeparturesCompanion copyWith({
    Value<int>? tripId,
    Value<String>? origin,
    Value<String>? destination,
    Value<DateTime>? departureTime,
    Value<int>? availableSeats,
    Value<int>? passengerCount,
    Value<String?>? vehicleRegistration,
    Value<String?>? status,
    Value<DateTime>? cachedAt,
  }) {
    return CachedAgentDeparturesCompanion(
      tripId: tripId ?? this.tripId,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      departureTime: departureTime ?? this.departureTime,
      availableSeats: availableSeats ?? this.availableSeats,
      passengerCount: passengerCount ?? this.passengerCount,
      vehicleRegistration: vehicleRegistration ?? this.vehicleRegistration,
      status: status ?? this.status,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tripId.present) {
      map['trip_id'] = Variable<int>(tripId.value);
    }
    if (origin.present) {
      map['origin'] = Variable<String>(origin.value);
    }
    if (destination.present) {
      map['destination'] = Variable<String>(destination.value);
    }
    if (departureTime.present) {
      map['departure_time'] = Variable<DateTime>(departureTime.value);
    }
    if (availableSeats.present) {
      map['available_seats'] = Variable<int>(availableSeats.value);
    }
    if (passengerCount.present) {
      map['passenger_count'] = Variable<int>(passengerCount.value);
    }
    if (vehicleRegistration.present) {
      map['vehicle_registration'] = Variable<String>(vehicleRegistration.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedAgentDeparturesCompanion(')
          ..write('tripId: $tripId, ')
          ..write('origin: $origin, ')
          ..write('destination: $destination, ')
          ..write('departureTime: $departureTime, ')
          ..write('availableSeats: $availableSeats, ')
          ..write('passengerCount: $passengerCount, ')
          ..write('vehicleRegistration: $vehicleRegistration, ')
          ..write('status: $status, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $CachedAgentAlertsTable extends CachedAgentAlerts
    with TableInfo<$CachedAgentAlertsTable, CachedAgentAlert> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedAgentAlertsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    body,
    type,
    createdAt,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_agent_alerts';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedAgentAlert> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedAgentAlert map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedAgentAlert(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $CachedAgentAlertsTable createAlias(String alias) {
    return $CachedAgentAlertsTable(attachedDatabase, alias);
  }
}

class CachedAgentAlert extends DataClass
    implements Insertable<CachedAgentAlert> {
  /// Identifiant serveur de la notification.
  final int id;
  final String title;
  final String body;

  /// Valeur technique de `TypeEnum` (parcel, trip, system, …).
  final String type;
  final DateTime createdAt;
  final DateTime cachedAt;
  const CachedAgentAlert({
    required this.id,
    required this.title,
    required this.body,
    required this.type,
    required this.createdAt,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    map['type'] = Variable<String>(type);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  CachedAgentAlertsCompanion toCompanion(bool nullToAbsent) {
    return CachedAgentAlertsCompanion(
      id: Value(id),
      title: Value(title),
      body: Value(body),
      type: Value(type),
      createdAt: Value(createdAt),
      cachedAt: Value(cachedAt),
    );
  }

  factory CachedAgentAlert.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedAgentAlert(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      type: serializer.fromJson<String>(json['type']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'type': serializer.toJson<String>(type),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  CachedAgentAlert copyWith({
    int? id,
    String? title,
    String? body,
    String? type,
    DateTime? createdAt,
    DateTime? cachedAt,
  }) => CachedAgentAlert(
    id: id ?? this.id,
    title: title ?? this.title,
    body: body ?? this.body,
    type: type ?? this.type,
    createdAt: createdAt ?? this.createdAt,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  CachedAgentAlert copyWithCompanion(CachedAgentAlertsCompanion data) {
    return CachedAgentAlert(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      body: data.body.present ? data.body.value : this.body,
      type: data.type.present ? data.type.value : this.type,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedAgentAlert(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, body, type, createdAt, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedAgentAlert &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.type == this.type &&
          other.createdAt == this.createdAt &&
          other.cachedAt == this.cachedAt);
}

class CachedAgentAlertsCompanion extends UpdateCompanion<CachedAgentAlert> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> body;
  final Value<String> type;
  final Value<DateTime> createdAt;
  final Value<DateTime> cachedAt;
  const CachedAgentAlertsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.type = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  CachedAgentAlertsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String body,
    required String type,
    required DateTime createdAt,
    required DateTime cachedAt,
  }) : title = Value(title),
       body = Value(body),
       type = Value(type),
       createdAt = Value(createdAt),
       cachedAt = Value(cachedAt);
  static Insertable<CachedAgentAlert> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? body,
    Expression<String>? type,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (type != null) 'type': type,
      if (createdAt != null) 'created_at': createdAt,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  CachedAgentAlertsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? body,
    Value<String>? type,
    Value<DateTime>? createdAt,
    Value<DateTime>? cachedAt,
  }) {
    return CachedAgentAlertsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedAgentAlertsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $OfflineBookingsTable extends OfflineBookings
    with TableInfo<$OfflineBookingsTable, OfflineBooking> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OfflineBookingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ticketNumberMeta = const VerificationMeta(
    'ticketNumber',
  );
  @override
  late final GeneratedColumn<String> ticketNumber = GeneratedColumn<String>(
    'ticket_number',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tripIdMeta = const VerificationMeta('tripId');
  @override
  late final GeneratedColumn<int> tripId = GeneratedColumn<int>(
    'trip_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 30),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seatNumberMeta = const VerificationMeta(
    'seatNumber',
  );
  @override
  late final GeneratedColumn<String> seatNumber = GeneratedColumn<String>(
    'seat_number',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<String> amount = GeneratedColumn<String>(
    'amount',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _paymentMethodMeta = const VerificationMeta(
    'paymentMethod',
  );
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
    'payment_method',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _transactionRefMeta = const VerificationMeta(
    'transactionRef',
  );
  @override
  late final GeneratedColumn<String> transactionRef = GeneratedColumn<String>(
    'transaction_ref',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _offlineCreatedAtMeta = const VerificationMeta(
    'offlineCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> offlineCreatedAt =
      GeneratedColumn<DateTime>(
        'offline_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    ticketNumber,
    tripId,
    firstName,
    lastName,
    phone,
    seatNumber,
    amount,
    paymentMethod,
    transactionRef,
    offlineCreatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'offline_bookings';
  @override
  VerificationContext validateIntegrity(
    Insertable<OfflineBooking> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ticket_number')) {
      context.handle(
        _ticketNumberMeta,
        ticketNumber.isAcceptableOrUnknown(
          data['ticket_number']!,
          _ticketNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ticketNumberMeta);
    }
    if (data.containsKey('trip_id')) {
      context.handle(
        _tripIdMeta,
        tripId.isAcceptableOrUnknown(data['trip_id']!, _tripIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tripIdMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('seat_number')) {
      context.handle(
        _seatNumberMeta,
        seatNumber.isAcceptableOrUnknown(data['seat_number']!, _seatNumberMeta),
      );
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    }
    if (data.containsKey('payment_method')) {
      context.handle(
        _paymentMethodMeta,
        paymentMethod.isAcceptableOrUnknown(
          data['payment_method']!,
          _paymentMethodMeta,
        ),
      );
    }
    if (data.containsKey('transaction_ref')) {
      context.handle(
        _transactionRefMeta,
        transactionRef.isAcceptableOrUnknown(
          data['transaction_ref']!,
          _transactionRefMeta,
        ),
      );
    }
    if (data.containsKey('offline_created_at')) {
      context.handle(
        _offlineCreatedAtMeta,
        offlineCreatedAt.isAcceptableOrUnknown(
          data['offline_created_at']!,
          _offlineCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_offlineCreatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ticketNumber};
  @override
  OfflineBooking map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OfflineBooking(
      ticketNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ticket_number'],
      )!,
      tripId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trip_id'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      )!,
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      seatNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seat_number'],
      ),
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}amount'],
      ),
      paymentMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_method'],
      ),
      transactionRef: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transaction_ref'],
      ),
      offlineCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}offline_created_at'],
      )!,
    );
  }

  @override
  $OfflineBookingsTable createAlias(String alias) {
    return $OfflineBookingsTable(attachedDatabase, alias);
  }
}

class OfflineBooking extends DataClass implements Insertable<OfflineBooking> {
  /// Numéro de billet généré localement — clé d'idempotence.
  final String ticketNumber;
  final int tripId;
  final String firstName;
  final String lastName;
  final String phone;
  final String? seatNumber;

  /// Montant décimal conservé en texte : les tarifs viennent de l'API et sont
  /// renvoyés tels quels, sans arrondi flottant (CLAUDE.md §13).
  final String? amount;

  /// Valeur technique de `Method80cEnum` (cash, orange_money, …).
  final String? paymentMethod;

  /// Référence de transaction Mobile Money, saisie par l'agent (donnée par le
  /// client après un paiement fait hors app — pas un flux OTP à cet écran).
  /// Requis côté serveur pour tout moyen ≠ `cash` (guide §6.7).
  final String? transactionRef;

  /// Instant de la saisie sur le terrain, transmis tel quel au serveur.
  final DateTime offlineCreatedAt;
  const OfflineBooking({
    required this.ticketNumber,
    required this.tripId,
    required this.firstName,
    required this.lastName,
    required this.phone,
    this.seatNumber,
    this.amount,
    this.paymentMethod,
    this.transactionRef,
    required this.offlineCreatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ticket_number'] = Variable<String>(ticketNumber);
    map['trip_id'] = Variable<int>(tripId);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['phone'] = Variable<String>(phone);
    if (!nullToAbsent || seatNumber != null) {
      map['seat_number'] = Variable<String>(seatNumber);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<String>(amount);
    }
    if (!nullToAbsent || paymentMethod != null) {
      map['payment_method'] = Variable<String>(paymentMethod);
    }
    if (!nullToAbsent || transactionRef != null) {
      map['transaction_ref'] = Variable<String>(transactionRef);
    }
    map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt);
    return map;
  }

  OfflineBookingsCompanion toCompanion(bool nullToAbsent) {
    return OfflineBookingsCompanion(
      ticketNumber: Value(ticketNumber),
      tripId: Value(tripId),
      firstName: Value(firstName),
      lastName: Value(lastName),
      phone: Value(phone),
      seatNumber: seatNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(seatNumber),
      amount: amount == null && nullToAbsent
          ? const Value.absent()
          : Value(amount),
      paymentMethod: paymentMethod == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentMethod),
      transactionRef: transactionRef == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionRef),
      offlineCreatedAt: Value(offlineCreatedAt),
    );
  }

  factory OfflineBooking.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OfflineBooking(
      ticketNumber: serializer.fromJson<String>(json['ticketNumber']),
      tripId: serializer.fromJson<int>(json['tripId']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      phone: serializer.fromJson<String>(json['phone']),
      seatNumber: serializer.fromJson<String?>(json['seatNumber']),
      amount: serializer.fromJson<String?>(json['amount']),
      paymentMethod: serializer.fromJson<String?>(json['paymentMethod']),
      transactionRef: serializer.fromJson<String?>(json['transactionRef']),
      offlineCreatedAt: serializer.fromJson<DateTime>(json['offlineCreatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ticketNumber': serializer.toJson<String>(ticketNumber),
      'tripId': serializer.toJson<int>(tripId),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'phone': serializer.toJson<String>(phone),
      'seatNumber': serializer.toJson<String?>(seatNumber),
      'amount': serializer.toJson<String?>(amount),
      'paymentMethod': serializer.toJson<String?>(paymentMethod),
      'transactionRef': serializer.toJson<String?>(transactionRef),
      'offlineCreatedAt': serializer.toJson<DateTime>(offlineCreatedAt),
    };
  }

  OfflineBooking copyWith({
    String? ticketNumber,
    int? tripId,
    String? firstName,
    String? lastName,
    String? phone,
    Value<String?> seatNumber = const Value.absent(),
    Value<String?> amount = const Value.absent(),
    Value<String?> paymentMethod = const Value.absent(),
    Value<String?> transactionRef = const Value.absent(),
    DateTime? offlineCreatedAt,
  }) => OfflineBooking(
    ticketNumber: ticketNumber ?? this.ticketNumber,
    tripId: tripId ?? this.tripId,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    phone: phone ?? this.phone,
    seatNumber: seatNumber.present ? seatNumber.value : this.seatNumber,
    amount: amount.present ? amount.value : this.amount,
    paymentMethod: paymentMethod.present
        ? paymentMethod.value
        : this.paymentMethod,
    transactionRef: transactionRef.present
        ? transactionRef.value
        : this.transactionRef,
    offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
  );
  OfflineBooking copyWithCompanion(OfflineBookingsCompanion data) {
    return OfflineBooking(
      ticketNumber: data.ticketNumber.present
          ? data.ticketNumber.value
          : this.ticketNumber,
      tripId: data.tripId.present ? data.tripId.value : this.tripId,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      phone: data.phone.present ? data.phone.value : this.phone,
      seatNumber: data.seatNumber.present
          ? data.seatNumber.value
          : this.seatNumber,
      amount: data.amount.present ? data.amount.value : this.amount,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      transactionRef: data.transactionRef.present
          ? data.transactionRef.value
          : this.transactionRef,
      offlineCreatedAt: data.offlineCreatedAt.present
          ? data.offlineCreatedAt.value
          : this.offlineCreatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OfflineBooking(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('tripId: $tripId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phone: $phone, ')
          ..write('seatNumber: $seatNumber, ')
          ..write('amount: $amount, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('transactionRef: $transactionRef, ')
          ..write('offlineCreatedAt: $offlineCreatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    ticketNumber,
    tripId,
    firstName,
    lastName,
    phone,
    seatNumber,
    amount,
    paymentMethod,
    transactionRef,
    offlineCreatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OfflineBooking &&
          other.ticketNumber == this.ticketNumber &&
          other.tripId == this.tripId &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.phone == this.phone &&
          other.seatNumber == this.seatNumber &&
          other.amount == this.amount &&
          other.paymentMethod == this.paymentMethod &&
          other.transactionRef == this.transactionRef &&
          other.offlineCreatedAt == this.offlineCreatedAt);
}

class OfflineBookingsCompanion extends UpdateCompanion<OfflineBooking> {
  final Value<String> ticketNumber;
  final Value<int> tripId;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> phone;
  final Value<String?> seatNumber;
  final Value<String?> amount;
  final Value<String?> paymentMethod;
  final Value<String?> transactionRef;
  final Value<DateTime> offlineCreatedAt;
  final Value<int> rowid;
  const OfflineBookingsCompanion({
    this.ticketNumber = const Value.absent(),
    this.tripId = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.phone = const Value.absent(),
    this.seatNumber = const Value.absent(),
    this.amount = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.transactionRef = const Value.absent(),
    this.offlineCreatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OfflineBookingsCompanion.insert({
    required String ticketNumber,
    required int tripId,
    required String firstName,
    required String lastName,
    required String phone,
    this.seatNumber = const Value.absent(),
    this.amount = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.transactionRef = const Value.absent(),
    required DateTime offlineCreatedAt,
    this.rowid = const Value.absent(),
  }) : ticketNumber = Value(ticketNumber),
       tripId = Value(tripId),
       firstName = Value(firstName),
       lastName = Value(lastName),
       phone = Value(phone),
       offlineCreatedAt = Value(offlineCreatedAt);
  static Insertable<OfflineBooking> custom({
    Expression<String>? ticketNumber,
    Expression<int>? tripId,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? phone,
    Expression<String>? seatNumber,
    Expression<String>? amount,
    Expression<String>? paymentMethod,
    Expression<String>? transactionRef,
    Expression<DateTime>? offlineCreatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ticketNumber != null) 'ticket_number': ticketNumber,
      if (tripId != null) 'trip_id': tripId,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (phone != null) 'phone': phone,
      if (seatNumber != null) 'seat_number': seatNumber,
      if (amount != null) 'amount': amount,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (transactionRef != null) 'transaction_ref': transactionRef,
      if (offlineCreatedAt != null) 'offline_created_at': offlineCreatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OfflineBookingsCompanion copyWith({
    Value<String>? ticketNumber,
    Value<int>? tripId,
    Value<String>? firstName,
    Value<String>? lastName,
    Value<String>? phone,
    Value<String?>? seatNumber,
    Value<String?>? amount,
    Value<String?>? paymentMethod,
    Value<String?>? transactionRef,
    Value<DateTime>? offlineCreatedAt,
    Value<int>? rowid,
  }) {
    return OfflineBookingsCompanion(
      ticketNumber: ticketNumber ?? this.ticketNumber,
      tripId: tripId ?? this.tripId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      seatNumber: seatNumber ?? this.seatNumber,
      amount: amount ?? this.amount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      transactionRef: transactionRef ?? this.transactionRef,
      offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ticketNumber.present) {
      map['ticket_number'] = Variable<String>(ticketNumber.value);
    }
    if (tripId.present) {
      map['trip_id'] = Variable<int>(tripId.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (seatNumber.present) {
      map['seat_number'] = Variable<String>(seatNumber.value);
    }
    if (amount.present) {
      map['amount'] = Variable<String>(amount.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (transactionRef.present) {
      map['transaction_ref'] = Variable<String>(transactionRef.value);
    }
    if (offlineCreatedAt.present) {
      map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OfflineBookingsCompanion(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('tripId: $tripId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phone: $phone, ')
          ..write('seatNumber: $seatNumber, ')
          ..write('amount: $amount, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('transactionRef: $transactionRef, ')
          ..write('offlineCreatedAt: $offlineCreatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OfflineParcelsTable extends OfflineParcels
    with TableInfo<$OfflineParcelsTable, OfflineParcel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OfflineParcelsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _trackingNumberMeta = const VerificationMeta(
    'trackingNumber',
  );
  @override
  late final GeneratedColumn<String> trackingNumber = GeneratedColumn<String>(
    'tracking_number',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originCityMeta = const VerificationMeta(
    'originCity',
  );
  @override
  late final GeneratedColumn<int> originCity = GeneratedColumn<int>(
    'origin_city',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _destinationCityMeta = const VerificationMeta(
    'destinationCity',
  );
  @override
  late final GeneratedColumn<int> destinationCity = GeneratedColumn<int>(
    'destination_city',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _destinationStationMeta =
      const VerificationMeta('destinationStation');
  @override
  late final GeneratedColumn<int> destinationStation = GeneratedColumn<int>(
    'destination_station',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tripIdMeta = const VerificationMeta('tripId');
  @override
  late final GeneratedColumn<int> tripId = GeneratedColumn<int>(
    'trip_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _senderNameMeta = const VerificationMeta(
    'senderName',
  );
  @override
  late final GeneratedColumn<String> senderName = GeneratedColumn<String>(
    'sender_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 150),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _senderPhoneMeta = const VerificationMeta(
    'senderPhone',
  );
  @override
  late final GeneratedColumn<String> senderPhone = GeneratedColumn<String>(
    'sender_phone',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 30),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipientNameMeta = const VerificationMeta(
    'recipientName',
  );
  @override
  late final GeneratedColumn<String> recipientName = GeneratedColumn<String>(
    'recipient_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 150),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipientPhoneMeta = const VerificationMeta(
    'recipientPhone',
  );
  @override
  late final GeneratedColumn<String> recipientPhone = GeneratedColumn<String>(
    'recipient_phone',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 30),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightKgMeta = const VerificationMeta(
    'weightKg',
  );
  @override
  late final GeneratedColumn<String> weightKg = GeneratedColumn<String>(
    'weight_kg',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _offlineCreatedAtMeta = const VerificationMeta(
    'offlineCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> offlineCreatedAt =
      GeneratedColumn<DateTime>(
        'offline_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    trackingNumber,
    originCity,
    destinationCity,
    destinationStation,
    tripId,
    senderName,
    senderPhone,
    recipientName,
    recipientPhone,
    description,
    weightKg,
    offlineCreatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'offline_parcels';
  @override
  VerificationContext validateIntegrity(
    Insertable<OfflineParcel> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tracking_number')) {
      context.handle(
        _trackingNumberMeta,
        trackingNumber.isAcceptableOrUnknown(
          data['tracking_number']!,
          _trackingNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_trackingNumberMeta);
    }
    if (data.containsKey('origin_city')) {
      context.handle(
        _originCityMeta,
        originCity.isAcceptableOrUnknown(data['origin_city']!, _originCityMeta),
      );
    } else if (isInserting) {
      context.missing(_originCityMeta);
    }
    if (data.containsKey('destination_city')) {
      context.handle(
        _destinationCityMeta,
        destinationCity.isAcceptableOrUnknown(
          data['destination_city']!,
          _destinationCityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_destinationCityMeta);
    }
    if (data.containsKey('destination_station')) {
      context.handle(
        _destinationStationMeta,
        destinationStation.isAcceptableOrUnknown(
          data['destination_station']!,
          _destinationStationMeta,
        ),
      );
    }
    if (data.containsKey('trip_id')) {
      context.handle(
        _tripIdMeta,
        tripId.isAcceptableOrUnknown(data['trip_id']!, _tripIdMeta),
      );
    }
    if (data.containsKey('sender_name')) {
      context.handle(
        _senderNameMeta,
        senderName.isAcceptableOrUnknown(data['sender_name']!, _senderNameMeta),
      );
    } else if (isInserting) {
      context.missing(_senderNameMeta);
    }
    if (data.containsKey('sender_phone')) {
      context.handle(
        _senderPhoneMeta,
        senderPhone.isAcceptableOrUnknown(
          data['sender_phone']!,
          _senderPhoneMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_senderPhoneMeta);
    }
    if (data.containsKey('recipient_name')) {
      context.handle(
        _recipientNameMeta,
        recipientName.isAcceptableOrUnknown(
          data['recipient_name']!,
          _recipientNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recipientNameMeta);
    }
    if (data.containsKey('recipient_phone')) {
      context.handle(
        _recipientPhoneMeta,
        recipientPhone.isAcceptableOrUnknown(
          data['recipient_phone']!,
          _recipientPhoneMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recipientPhoneMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('weight_kg')) {
      context.handle(
        _weightKgMeta,
        weightKg.isAcceptableOrUnknown(data['weight_kg']!, _weightKgMeta),
      );
    } else if (isInserting) {
      context.missing(_weightKgMeta);
    }
    if (data.containsKey('offline_created_at')) {
      context.handle(
        _offlineCreatedAtMeta,
        offlineCreatedAt.isAcceptableOrUnknown(
          data['offline_created_at']!,
          _offlineCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_offlineCreatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {trackingNumber};
  @override
  OfflineParcel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OfflineParcel(
      trackingNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_number'],
      )!,
      originCity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}origin_city'],
      )!,
      destinationCity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}destination_city'],
      )!,
      destinationStation: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}destination_station'],
      ),
      tripId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trip_id'],
      ),
      senderName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sender_name'],
      )!,
      senderPhone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sender_phone'],
      )!,
      recipientName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipient_name'],
      )!,
      recipientPhone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipient_phone'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      weightKg: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}weight_kg'],
      )!,
      offlineCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}offline_created_at'],
      )!,
    );
  }

  @override
  $OfflineParcelsTable createAlias(String alias) {
    return $OfflineParcelsTable(attachedDatabase, alias);
  }
}

class OfflineParcel extends DataClass implements Insertable<OfflineParcel> {
  /// Code de suivi généré localement — clé d'idempotence.
  final String trackingNumber;
  final int originCity;
  final int destinationCity;
  final int? destinationStation;
  final int? tripId;
  final String senderName;
  final String senderPhone;
  final String recipientName;
  final String recipientPhone;
  final String? description;

  /// Poids décimal, conservé en texte pour les mêmes raisons que le montant.
  final String weightKg;
  final DateTime offlineCreatedAt;
  const OfflineParcel({
    required this.trackingNumber,
    required this.originCity,
    required this.destinationCity,
    this.destinationStation,
    this.tripId,
    required this.senderName,
    required this.senderPhone,
    required this.recipientName,
    required this.recipientPhone,
    this.description,
    required this.weightKg,
    required this.offlineCreatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['tracking_number'] = Variable<String>(trackingNumber);
    map['origin_city'] = Variable<int>(originCity);
    map['destination_city'] = Variable<int>(destinationCity);
    if (!nullToAbsent || destinationStation != null) {
      map['destination_station'] = Variable<int>(destinationStation);
    }
    if (!nullToAbsent || tripId != null) {
      map['trip_id'] = Variable<int>(tripId);
    }
    map['sender_name'] = Variable<String>(senderName);
    map['sender_phone'] = Variable<String>(senderPhone);
    map['recipient_name'] = Variable<String>(recipientName);
    map['recipient_phone'] = Variable<String>(recipientPhone);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['weight_kg'] = Variable<String>(weightKg);
    map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt);
    return map;
  }

  OfflineParcelsCompanion toCompanion(bool nullToAbsent) {
    return OfflineParcelsCompanion(
      trackingNumber: Value(trackingNumber),
      originCity: Value(originCity),
      destinationCity: Value(destinationCity),
      destinationStation: destinationStation == null && nullToAbsent
          ? const Value.absent()
          : Value(destinationStation),
      tripId: tripId == null && nullToAbsent
          ? const Value.absent()
          : Value(tripId),
      senderName: Value(senderName),
      senderPhone: Value(senderPhone),
      recipientName: Value(recipientName),
      recipientPhone: Value(recipientPhone),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      weightKg: Value(weightKg),
      offlineCreatedAt: Value(offlineCreatedAt),
    );
  }

  factory OfflineParcel.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OfflineParcel(
      trackingNumber: serializer.fromJson<String>(json['trackingNumber']),
      originCity: serializer.fromJson<int>(json['originCity']),
      destinationCity: serializer.fromJson<int>(json['destinationCity']),
      destinationStation: serializer.fromJson<int?>(json['destinationStation']),
      tripId: serializer.fromJson<int?>(json['tripId']),
      senderName: serializer.fromJson<String>(json['senderName']),
      senderPhone: serializer.fromJson<String>(json['senderPhone']),
      recipientName: serializer.fromJson<String>(json['recipientName']),
      recipientPhone: serializer.fromJson<String>(json['recipientPhone']),
      description: serializer.fromJson<String?>(json['description']),
      weightKg: serializer.fromJson<String>(json['weightKg']),
      offlineCreatedAt: serializer.fromJson<DateTime>(json['offlineCreatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'trackingNumber': serializer.toJson<String>(trackingNumber),
      'originCity': serializer.toJson<int>(originCity),
      'destinationCity': serializer.toJson<int>(destinationCity),
      'destinationStation': serializer.toJson<int?>(destinationStation),
      'tripId': serializer.toJson<int?>(tripId),
      'senderName': serializer.toJson<String>(senderName),
      'senderPhone': serializer.toJson<String>(senderPhone),
      'recipientName': serializer.toJson<String>(recipientName),
      'recipientPhone': serializer.toJson<String>(recipientPhone),
      'description': serializer.toJson<String?>(description),
      'weightKg': serializer.toJson<String>(weightKg),
      'offlineCreatedAt': serializer.toJson<DateTime>(offlineCreatedAt),
    };
  }

  OfflineParcel copyWith({
    String? trackingNumber,
    int? originCity,
    int? destinationCity,
    Value<int?> destinationStation = const Value.absent(),
    Value<int?> tripId = const Value.absent(),
    String? senderName,
    String? senderPhone,
    String? recipientName,
    String? recipientPhone,
    Value<String?> description = const Value.absent(),
    String? weightKg,
    DateTime? offlineCreatedAt,
  }) => OfflineParcel(
    trackingNumber: trackingNumber ?? this.trackingNumber,
    originCity: originCity ?? this.originCity,
    destinationCity: destinationCity ?? this.destinationCity,
    destinationStation: destinationStation.present
        ? destinationStation.value
        : this.destinationStation,
    tripId: tripId.present ? tripId.value : this.tripId,
    senderName: senderName ?? this.senderName,
    senderPhone: senderPhone ?? this.senderPhone,
    recipientName: recipientName ?? this.recipientName,
    recipientPhone: recipientPhone ?? this.recipientPhone,
    description: description.present ? description.value : this.description,
    weightKg: weightKg ?? this.weightKg,
    offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
  );
  OfflineParcel copyWithCompanion(OfflineParcelsCompanion data) {
    return OfflineParcel(
      trackingNumber: data.trackingNumber.present
          ? data.trackingNumber.value
          : this.trackingNumber,
      originCity: data.originCity.present
          ? data.originCity.value
          : this.originCity,
      destinationCity: data.destinationCity.present
          ? data.destinationCity.value
          : this.destinationCity,
      destinationStation: data.destinationStation.present
          ? data.destinationStation.value
          : this.destinationStation,
      tripId: data.tripId.present ? data.tripId.value : this.tripId,
      senderName: data.senderName.present
          ? data.senderName.value
          : this.senderName,
      senderPhone: data.senderPhone.present
          ? data.senderPhone.value
          : this.senderPhone,
      recipientName: data.recipientName.present
          ? data.recipientName.value
          : this.recipientName,
      recipientPhone: data.recipientPhone.present
          ? data.recipientPhone.value
          : this.recipientPhone,
      description: data.description.present
          ? data.description.value
          : this.description,
      weightKg: data.weightKg.present ? data.weightKg.value : this.weightKg,
      offlineCreatedAt: data.offlineCreatedAt.present
          ? data.offlineCreatedAt.value
          : this.offlineCreatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OfflineParcel(')
          ..write('trackingNumber: $trackingNumber, ')
          ..write('originCity: $originCity, ')
          ..write('destinationCity: $destinationCity, ')
          ..write('destinationStation: $destinationStation, ')
          ..write('tripId: $tripId, ')
          ..write('senderName: $senderName, ')
          ..write('senderPhone: $senderPhone, ')
          ..write('recipientName: $recipientName, ')
          ..write('recipientPhone: $recipientPhone, ')
          ..write('description: $description, ')
          ..write('weightKg: $weightKg, ')
          ..write('offlineCreatedAt: $offlineCreatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    trackingNumber,
    originCity,
    destinationCity,
    destinationStation,
    tripId,
    senderName,
    senderPhone,
    recipientName,
    recipientPhone,
    description,
    weightKg,
    offlineCreatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OfflineParcel &&
          other.trackingNumber == this.trackingNumber &&
          other.originCity == this.originCity &&
          other.destinationCity == this.destinationCity &&
          other.destinationStation == this.destinationStation &&
          other.tripId == this.tripId &&
          other.senderName == this.senderName &&
          other.senderPhone == this.senderPhone &&
          other.recipientName == this.recipientName &&
          other.recipientPhone == this.recipientPhone &&
          other.description == this.description &&
          other.weightKg == this.weightKg &&
          other.offlineCreatedAt == this.offlineCreatedAt);
}

class OfflineParcelsCompanion extends UpdateCompanion<OfflineParcel> {
  final Value<String> trackingNumber;
  final Value<int> originCity;
  final Value<int> destinationCity;
  final Value<int?> destinationStation;
  final Value<int?> tripId;
  final Value<String> senderName;
  final Value<String> senderPhone;
  final Value<String> recipientName;
  final Value<String> recipientPhone;
  final Value<String?> description;
  final Value<String> weightKg;
  final Value<DateTime> offlineCreatedAt;
  final Value<int> rowid;
  const OfflineParcelsCompanion({
    this.trackingNumber = const Value.absent(),
    this.originCity = const Value.absent(),
    this.destinationCity = const Value.absent(),
    this.destinationStation = const Value.absent(),
    this.tripId = const Value.absent(),
    this.senderName = const Value.absent(),
    this.senderPhone = const Value.absent(),
    this.recipientName = const Value.absent(),
    this.recipientPhone = const Value.absent(),
    this.description = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.offlineCreatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OfflineParcelsCompanion.insert({
    required String trackingNumber,
    required int originCity,
    required int destinationCity,
    this.destinationStation = const Value.absent(),
    this.tripId = const Value.absent(),
    required String senderName,
    required String senderPhone,
    required String recipientName,
    required String recipientPhone,
    this.description = const Value.absent(),
    required String weightKg,
    required DateTime offlineCreatedAt,
    this.rowid = const Value.absent(),
  }) : trackingNumber = Value(trackingNumber),
       originCity = Value(originCity),
       destinationCity = Value(destinationCity),
       senderName = Value(senderName),
       senderPhone = Value(senderPhone),
       recipientName = Value(recipientName),
       recipientPhone = Value(recipientPhone),
       weightKg = Value(weightKg),
       offlineCreatedAt = Value(offlineCreatedAt);
  static Insertable<OfflineParcel> custom({
    Expression<String>? trackingNumber,
    Expression<int>? originCity,
    Expression<int>? destinationCity,
    Expression<int>? destinationStation,
    Expression<int>? tripId,
    Expression<String>? senderName,
    Expression<String>? senderPhone,
    Expression<String>? recipientName,
    Expression<String>? recipientPhone,
    Expression<String>? description,
    Expression<String>? weightKg,
    Expression<DateTime>? offlineCreatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (trackingNumber != null) 'tracking_number': trackingNumber,
      if (originCity != null) 'origin_city': originCity,
      if (destinationCity != null) 'destination_city': destinationCity,
      if (destinationStation != null) 'destination_station': destinationStation,
      if (tripId != null) 'trip_id': tripId,
      if (senderName != null) 'sender_name': senderName,
      if (senderPhone != null) 'sender_phone': senderPhone,
      if (recipientName != null) 'recipient_name': recipientName,
      if (recipientPhone != null) 'recipient_phone': recipientPhone,
      if (description != null) 'description': description,
      if (weightKg != null) 'weight_kg': weightKg,
      if (offlineCreatedAt != null) 'offline_created_at': offlineCreatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OfflineParcelsCompanion copyWith({
    Value<String>? trackingNumber,
    Value<int>? originCity,
    Value<int>? destinationCity,
    Value<int?>? destinationStation,
    Value<int?>? tripId,
    Value<String>? senderName,
    Value<String>? senderPhone,
    Value<String>? recipientName,
    Value<String>? recipientPhone,
    Value<String?>? description,
    Value<String>? weightKg,
    Value<DateTime>? offlineCreatedAt,
    Value<int>? rowid,
  }) {
    return OfflineParcelsCompanion(
      trackingNumber: trackingNumber ?? this.trackingNumber,
      originCity: originCity ?? this.originCity,
      destinationCity: destinationCity ?? this.destinationCity,
      destinationStation: destinationStation ?? this.destinationStation,
      tripId: tripId ?? this.tripId,
      senderName: senderName ?? this.senderName,
      senderPhone: senderPhone ?? this.senderPhone,
      recipientName: recipientName ?? this.recipientName,
      recipientPhone: recipientPhone ?? this.recipientPhone,
      description: description ?? this.description,
      weightKg: weightKg ?? this.weightKg,
      offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (trackingNumber.present) {
      map['tracking_number'] = Variable<String>(trackingNumber.value);
    }
    if (originCity.present) {
      map['origin_city'] = Variable<int>(originCity.value);
    }
    if (destinationCity.present) {
      map['destination_city'] = Variable<int>(destinationCity.value);
    }
    if (destinationStation.present) {
      map['destination_station'] = Variable<int>(destinationStation.value);
    }
    if (tripId.present) {
      map['trip_id'] = Variable<int>(tripId.value);
    }
    if (senderName.present) {
      map['sender_name'] = Variable<String>(senderName.value);
    }
    if (senderPhone.present) {
      map['sender_phone'] = Variable<String>(senderPhone.value);
    }
    if (recipientName.present) {
      map['recipient_name'] = Variable<String>(recipientName.value);
    }
    if (recipientPhone.present) {
      map['recipient_phone'] = Variable<String>(recipientPhone.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (weightKg.present) {
      map['weight_kg'] = Variable<String>(weightKg.value);
    }
    if (offlineCreatedAt.present) {
      map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OfflineParcelsCompanion(')
          ..write('trackingNumber: $trackingNumber, ')
          ..write('originCity: $originCity, ')
          ..write('destinationCity: $destinationCity, ')
          ..write('destinationStation: $destinationStation, ')
          ..write('tripId: $tripId, ')
          ..write('senderName: $senderName, ')
          ..write('senderPhone: $senderPhone, ')
          ..write('recipientName: $recipientName, ')
          ..write('recipientPhone: $recipientPhone, ')
          ..write('description: $description, ')
          ..write('weightKg: $weightKg, ')
          ..write('offlineCreatedAt: $offlineCreatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OfflineValidationsTable extends OfflineValidations
    with TableInfo<$OfflineValidationsTable, OfflineValidation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OfflineValidationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ticketNumberMeta = const VerificationMeta(
    'ticketNumber',
  );
  @override
  late final GeneratedColumn<String> ticketNumber = GeneratedColumn<String>(
    'ticket_number',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _offlineCreatedAtMeta = const VerificationMeta(
    'offlineCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> offlineCreatedAt =
      GeneratedColumn<DateTime>(
        'offline_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [ticketNumber, offlineCreatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'offline_validations';
  @override
  VerificationContext validateIntegrity(
    Insertable<OfflineValidation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ticket_number')) {
      context.handle(
        _ticketNumberMeta,
        ticketNumber.isAcceptableOrUnknown(
          data['ticket_number']!,
          _ticketNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ticketNumberMeta);
    }
    if (data.containsKey('offline_created_at')) {
      context.handle(
        _offlineCreatedAtMeta,
        offlineCreatedAt.isAcceptableOrUnknown(
          data['offline_created_at']!,
          _offlineCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_offlineCreatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ticketNumber};
  @override
  OfflineValidation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OfflineValidation(
      ticketNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ticket_number'],
      )!,
      offlineCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}offline_created_at'],
      )!,
    );
  }

  @override
  $OfflineValidationsTable createAlias(String alias) {
    return $OfflineValidationsTable(attachedDatabase, alias);
  }
}

class OfflineValidation extends DataClass
    implements Insertable<OfflineValidation> {
  /// Billet validé — clé d'idempotence (un billet n'embarque qu'une fois).
  final String ticketNumber;
  final DateTime offlineCreatedAt;
  const OfflineValidation({
    required this.ticketNumber,
    required this.offlineCreatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ticket_number'] = Variable<String>(ticketNumber);
    map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt);
    return map;
  }

  OfflineValidationsCompanion toCompanion(bool nullToAbsent) {
    return OfflineValidationsCompanion(
      ticketNumber: Value(ticketNumber),
      offlineCreatedAt: Value(offlineCreatedAt),
    );
  }

  factory OfflineValidation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OfflineValidation(
      ticketNumber: serializer.fromJson<String>(json['ticketNumber']),
      offlineCreatedAt: serializer.fromJson<DateTime>(json['offlineCreatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ticketNumber': serializer.toJson<String>(ticketNumber),
      'offlineCreatedAt': serializer.toJson<DateTime>(offlineCreatedAt),
    };
  }

  OfflineValidation copyWith({
    String? ticketNumber,
    DateTime? offlineCreatedAt,
  }) => OfflineValidation(
    ticketNumber: ticketNumber ?? this.ticketNumber,
    offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
  );
  OfflineValidation copyWithCompanion(OfflineValidationsCompanion data) {
    return OfflineValidation(
      ticketNumber: data.ticketNumber.present
          ? data.ticketNumber.value
          : this.ticketNumber,
      offlineCreatedAt: data.offlineCreatedAt.present
          ? data.offlineCreatedAt.value
          : this.offlineCreatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OfflineValidation(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('offlineCreatedAt: $offlineCreatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(ticketNumber, offlineCreatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OfflineValidation &&
          other.ticketNumber == this.ticketNumber &&
          other.offlineCreatedAt == this.offlineCreatedAt);
}

class OfflineValidationsCompanion extends UpdateCompanion<OfflineValidation> {
  final Value<String> ticketNumber;
  final Value<DateTime> offlineCreatedAt;
  final Value<int> rowid;
  const OfflineValidationsCompanion({
    this.ticketNumber = const Value.absent(),
    this.offlineCreatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OfflineValidationsCompanion.insert({
    required String ticketNumber,
    required DateTime offlineCreatedAt,
    this.rowid = const Value.absent(),
  }) : ticketNumber = Value(ticketNumber),
       offlineCreatedAt = Value(offlineCreatedAt);
  static Insertable<OfflineValidation> custom({
    Expression<String>? ticketNumber,
    Expression<DateTime>? offlineCreatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ticketNumber != null) 'ticket_number': ticketNumber,
      if (offlineCreatedAt != null) 'offline_created_at': offlineCreatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OfflineValidationsCompanion copyWith({
    Value<String>? ticketNumber,
    Value<DateTime>? offlineCreatedAt,
    Value<int>? rowid,
  }) {
    return OfflineValidationsCompanion(
      ticketNumber: ticketNumber ?? this.ticketNumber,
      offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ticketNumber.present) {
      map['ticket_number'] = Variable<String>(ticketNumber.value);
    }
    if (offlineCreatedAt.present) {
      map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OfflineValidationsCompanion(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('offlineCreatedAt: $offlineCreatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OfflineParcelNotificationsTable extends OfflineParcelNotifications
    with
        TableInfo<$OfflineParcelNotificationsTable, OfflineParcelNotification> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OfflineParcelNotificationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _trackingNumberMeta = const VerificationMeta(
    'trackingNumber',
  );
  @override
  late final GeneratedColumn<String> trackingNumber = GeneratedColumn<String>(
    'tracking_number',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _offlineCreatedAtMeta = const VerificationMeta(
    'offlineCreatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> offlineCreatedAt =
      GeneratedColumn<DateTime>(
        'offline_created_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [trackingNumber, offlineCreatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'offline_parcel_notifications';
  @override
  VerificationContext validateIntegrity(
    Insertable<OfflineParcelNotification> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tracking_number')) {
      context.handle(
        _trackingNumberMeta,
        trackingNumber.isAcceptableOrUnknown(
          data['tracking_number']!,
          _trackingNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_trackingNumberMeta);
    }
    if (data.containsKey('offline_created_at')) {
      context.handle(
        _offlineCreatedAtMeta,
        offlineCreatedAt.isAcceptableOrUnknown(
          data['offline_created_at']!,
          _offlineCreatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_offlineCreatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {trackingNumber};
  @override
  OfflineParcelNotification map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OfflineParcelNotification(
      trackingNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tracking_number'],
      )!,
      offlineCreatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}offline_created_at'],
      )!,
    );
  }

  @override
  $OfflineParcelNotificationsTable createAlias(String alias) {
    return $OfflineParcelNotificationsTable(attachedDatabase, alias);
  }
}

class OfflineParcelNotification extends DataClass
    implements Insertable<OfflineParcelNotification> {
  /// Code de suivi du colis concerné — clé d'idempotence avec
  /// [offlineCreatedAt].
  final String trackingNumber;
  final DateTime offlineCreatedAt;
  const OfflineParcelNotification({
    required this.trackingNumber,
    required this.offlineCreatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['tracking_number'] = Variable<String>(trackingNumber);
    map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt);
    return map;
  }

  OfflineParcelNotificationsCompanion toCompanion(bool nullToAbsent) {
    return OfflineParcelNotificationsCompanion(
      trackingNumber: Value(trackingNumber),
      offlineCreatedAt: Value(offlineCreatedAt),
    );
  }

  factory OfflineParcelNotification.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OfflineParcelNotification(
      trackingNumber: serializer.fromJson<String>(json['trackingNumber']),
      offlineCreatedAt: serializer.fromJson<DateTime>(json['offlineCreatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'trackingNumber': serializer.toJson<String>(trackingNumber),
      'offlineCreatedAt': serializer.toJson<DateTime>(offlineCreatedAt),
    };
  }

  OfflineParcelNotification copyWith({
    String? trackingNumber,
    DateTime? offlineCreatedAt,
  }) => OfflineParcelNotification(
    trackingNumber: trackingNumber ?? this.trackingNumber,
    offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
  );
  OfflineParcelNotification copyWithCompanion(
    OfflineParcelNotificationsCompanion data,
  ) {
    return OfflineParcelNotification(
      trackingNumber: data.trackingNumber.present
          ? data.trackingNumber.value
          : this.trackingNumber,
      offlineCreatedAt: data.offlineCreatedAt.present
          ? data.offlineCreatedAt.value
          : this.offlineCreatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OfflineParcelNotification(')
          ..write('trackingNumber: $trackingNumber, ')
          ..write('offlineCreatedAt: $offlineCreatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(trackingNumber, offlineCreatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OfflineParcelNotification &&
          other.trackingNumber == this.trackingNumber &&
          other.offlineCreatedAt == this.offlineCreatedAt);
}

class OfflineParcelNotificationsCompanion
    extends UpdateCompanion<OfflineParcelNotification> {
  final Value<String> trackingNumber;
  final Value<DateTime> offlineCreatedAt;
  final Value<int> rowid;
  const OfflineParcelNotificationsCompanion({
    this.trackingNumber = const Value.absent(),
    this.offlineCreatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OfflineParcelNotificationsCompanion.insert({
    required String trackingNumber,
    required DateTime offlineCreatedAt,
    this.rowid = const Value.absent(),
  }) : trackingNumber = Value(trackingNumber),
       offlineCreatedAt = Value(offlineCreatedAt);
  static Insertable<OfflineParcelNotification> custom({
    Expression<String>? trackingNumber,
    Expression<DateTime>? offlineCreatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (trackingNumber != null) 'tracking_number': trackingNumber,
      if (offlineCreatedAt != null) 'offline_created_at': offlineCreatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OfflineParcelNotificationsCompanion copyWith({
    Value<String>? trackingNumber,
    Value<DateTime>? offlineCreatedAt,
    Value<int>? rowid,
  }) {
    return OfflineParcelNotificationsCompanion(
      trackingNumber: trackingNumber ?? this.trackingNumber,
      offlineCreatedAt: offlineCreatedAt ?? this.offlineCreatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (trackingNumber.present) {
      map['tracking_number'] = Variable<String>(trackingNumber.value);
    }
    if (offlineCreatedAt.present) {
      map['offline_created_at'] = Variable<DateTime>(offlineCreatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OfflineParcelNotificationsCompanion(')
          ..write('trackingNumber: $trackingNumber, ')
          ..write('offlineCreatedAt: $offlineCreatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OutboxEntriesTable extends OutboxEntries
    with TableInfo<$OutboxEntriesTable, OutboxEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OutboxEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  @override
  late final GeneratedColumnWithTypeConverter<OutboxEntity, String> entity =
      GeneratedColumn<String>(
        'entity',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<OutboxEntity>($OutboxEntriesTable.$converterentity);
  static const VerificationMeta _referenceMeta = const VerificationMeta(
    'reference',
  );
  @override
  late final GeneratedColumn<String> reference = GeneratedColumn<String>(
    'reference',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 30),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<OutboxStatus, String> status =
      GeneratedColumn<String>(
        'status',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('pending'),
      ).withConverter<OutboxStatus>($OutboxEntriesTable.$converterstatus);
  static const VerificationMeta _attemptsMeta = const VerificationMeta(
    'attempts',
  );
  @override
  late final GeneratedColumn<int> attempts = GeneratedColumn<int>(
    'attempts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastErrorMeta = const VerificationMeta(
    'lastError',
  );
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
    'last_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncedAtMeta = const VerificationMeta(
    'syncedAt',
  );
  @override
  late final GeneratedColumn<DateTime> syncedAt = GeneratedColumn<DateTime>(
    'synced_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    entity,
    reference,
    status,
    attempts,
    lastError,
    createdAt,
    syncedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'outbox_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<OutboxEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('reference')) {
      context.handle(
        _referenceMeta,
        reference.isAcceptableOrUnknown(data['reference']!, _referenceMeta),
      );
    } else if (isInserting) {
      context.missing(_referenceMeta);
    }
    if (data.containsKey('attempts')) {
      context.handle(
        _attemptsMeta,
        attempts.isAcceptableOrUnknown(data['attempts']!, _attemptsMeta),
      );
    }
    if (data.containsKey('last_error')) {
      context.handle(
        _lastErrorMeta,
        lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('synced_at')) {
      context.handle(
        _syncedAtMeta,
        syncedAt.isAcceptableOrUnknown(data['synced_at']!, _syncedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {entity, reference},
  ];
  @override
  OutboxEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OutboxEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      entity: $OutboxEntriesTable.$converterentity.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}entity'],
        )!,
      ),
      reference: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reference'],
      )!,
      status: $OutboxEntriesTable.$converterstatus.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}status'],
        )!,
      ),
      attempts: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attempts'],
      )!,
      lastError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_error'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      syncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}synced_at'],
      ),
    );
  }

  @override
  $OutboxEntriesTable createAlias(String alias) {
    return $OutboxEntriesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<OutboxEntity, String, String> $converterentity =
      const EnumNameConverter<OutboxEntity>(OutboxEntity.values);
  static JsonTypeConverter2<OutboxStatus, String, String> $converterstatus =
      const EnumNameConverter<OutboxStatus>(OutboxStatus.values);
}

class OutboxEntry extends DataClass implements Insertable<OutboxEntry> {
  final int id;
  final OutboxEntity entity;

  /// `ticket_number` ou `tracking_number` de l'enregistrement concerné.
  final String reference;
  final OutboxStatus status;

  /// Nombre d'envois tentés, pour espacer les relances.
  final int attempts;

  /// Dernier message d'erreur du serveur, affiché à l'agent en clair.
  final String? lastError;
  final DateTime createdAt;
  final DateTime? syncedAt;
  const OutboxEntry({
    required this.id,
    required this.entity,
    required this.reference,
    required this.status,
    required this.attempts,
    this.lastError,
    required this.createdAt,
    this.syncedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['entity'] = Variable<String>(
        $OutboxEntriesTable.$converterentity.toSql(entity),
      );
    }
    map['reference'] = Variable<String>(reference);
    {
      map['status'] = Variable<String>(
        $OutboxEntriesTable.$converterstatus.toSql(status),
      );
    }
    map['attempts'] = Variable<int>(attempts);
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || syncedAt != null) {
      map['synced_at'] = Variable<DateTime>(syncedAt);
    }
    return map;
  }

  OutboxEntriesCompanion toCompanion(bool nullToAbsent) {
    return OutboxEntriesCompanion(
      id: Value(id),
      entity: Value(entity),
      reference: Value(reference),
      status: Value(status),
      attempts: Value(attempts),
      lastError: lastError == null && nullToAbsent
          ? const Value.absent()
          : Value(lastError),
      createdAt: Value(createdAt),
      syncedAt: syncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(syncedAt),
    );
  }

  factory OutboxEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OutboxEntry(
      id: serializer.fromJson<int>(json['id']),
      entity: $OutboxEntriesTable.$converterentity.fromJson(
        serializer.fromJson<String>(json['entity']),
      ),
      reference: serializer.fromJson<String>(json['reference']),
      status: $OutboxEntriesTable.$converterstatus.fromJson(
        serializer.fromJson<String>(json['status']),
      ),
      attempts: serializer.fromJson<int>(json['attempts']),
      lastError: serializer.fromJson<String?>(json['lastError']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      syncedAt: serializer.fromJson<DateTime?>(json['syncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'entity': serializer.toJson<String>(
        $OutboxEntriesTable.$converterentity.toJson(entity),
      ),
      'reference': serializer.toJson<String>(reference),
      'status': serializer.toJson<String>(
        $OutboxEntriesTable.$converterstatus.toJson(status),
      ),
      'attempts': serializer.toJson<int>(attempts),
      'lastError': serializer.toJson<String?>(lastError),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'syncedAt': serializer.toJson<DateTime?>(syncedAt),
    };
  }

  OutboxEntry copyWith({
    int? id,
    OutboxEntity? entity,
    String? reference,
    OutboxStatus? status,
    int? attempts,
    Value<String?> lastError = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> syncedAt = const Value.absent(),
  }) => OutboxEntry(
    id: id ?? this.id,
    entity: entity ?? this.entity,
    reference: reference ?? this.reference,
    status: status ?? this.status,
    attempts: attempts ?? this.attempts,
    lastError: lastError.present ? lastError.value : this.lastError,
    createdAt: createdAt ?? this.createdAt,
    syncedAt: syncedAt.present ? syncedAt.value : this.syncedAt,
  );
  OutboxEntry copyWithCompanion(OutboxEntriesCompanion data) {
    return OutboxEntry(
      id: data.id.present ? data.id.value : this.id,
      entity: data.entity.present ? data.entity.value : this.entity,
      reference: data.reference.present ? data.reference.value : this.reference,
      status: data.status.present ? data.status.value : this.status,
      attempts: data.attempts.present ? data.attempts.value : this.attempts,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      syncedAt: data.syncedAt.present ? data.syncedAt.value : this.syncedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OutboxEntry(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('reference: $reference, ')
          ..write('status: $status, ')
          ..write('attempts: $attempts, ')
          ..write('lastError: $lastError, ')
          ..write('createdAt: $createdAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    entity,
    reference,
    status,
    attempts,
    lastError,
    createdAt,
    syncedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OutboxEntry &&
          other.id == this.id &&
          other.entity == this.entity &&
          other.reference == this.reference &&
          other.status == this.status &&
          other.attempts == this.attempts &&
          other.lastError == this.lastError &&
          other.createdAt == this.createdAt &&
          other.syncedAt == this.syncedAt);
}

class OutboxEntriesCompanion extends UpdateCompanion<OutboxEntry> {
  final Value<int> id;
  final Value<OutboxEntity> entity;
  final Value<String> reference;
  final Value<OutboxStatus> status;
  final Value<int> attempts;
  final Value<String?> lastError;
  final Value<DateTime> createdAt;
  final Value<DateTime?> syncedAt;
  const OutboxEntriesCompanion({
    this.id = const Value.absent(),
    this.entity = const Value.absent(),
    this.reference = const Value.absent(),
    this.status = const Value.absent(),
    this.attempts = const Value.absent(),
    this.lastError = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  });
  OutboxEntriesCompanion.insert({
    this.id = const Value.absent(),
    required OutboxEntity entity,
    required String reference,
    this.status = const Value.absent(),
    this.attempts = const Value.absent(),
    this.lastError = const Value.absent(),
    required DateTime createdAt,
    this.syncedAt = const Value.absent(),
  }) : entity = Value(entity),
       reference = Value(reference),
       createdAt = Value(createdAt);
  static Insertable<OutboxEntry> custom({
    Expression<int>? id,
    Expression<String>? entity,
    Expression<String>? reference,
    Expression<String>? status,
    Expression<int>? attempts,
    Expression<String>? lastError,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? syncedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entity != null) 'entity': entity,
      if (reference != null) 'reference': reference,
      if (status != null) 'status': status,
      if (attempts != null) 'attempts': attempts,
      if (lastError != null) 'last_error': lastError,
      if (createdAt != null) 'created_at': createdAt,
      if (syncedAt != null) 'synced_at': syncedAt,
    });
  }

  OutboxEntriesCompanion copyWith({
    Value<int>? id,
    Value<OutboxEntity>? entity,
    Value<String>? reference,
    Value<OutboxStatus>? status,
    Value<int>? attempts,
    Value<String?>? lastError,
    Value<DateTime>? createdAt,
    Value<DateTime?>? syncedAt,
  }) {
    return OutboxEntriesCompanion(
      id: id ?? this.id,
      entity: entity ?? this.entity,
      reference: reference ?? this.reference,
      status: status ?? this.status,
      attempts: attempts ?? this.attempts,
      lastError: lastError ?? this.lastError,
      createdAt: createdAt ?? this.createdAt,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (entity.present) {
      map['entity'] = Variable<String>(
        $OutboxEntriesTable.$converterentity.toSql(entity.value),
      );
    }
    if (reference.present) {
      map['reference'] = Variable<String>(reference.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(
        $OutboxEntriesTable.$converterstatus.toSql(status.value),
      );
    }
    if (attempts.present) {
      map['attempts'] = Variable<int>(attempts.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (syncedAt.present) {
      map['synced_at'] = Variable<DateTime>(syncedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OutboxEntriesCompanion(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('reference: $reference, ')
          ..write('status: $status, ')
          ..write('attempts: $attempts, ')
          ..write('lastError: $lastError, ')
          ..write('createdAt: $createdAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }
}

class $SyncStateEntriesTable extends SyncStateEntries
    with TableInfo<$SyncStateEntriesTable, SyncStateEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncStateEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastOfflineDataAtMeta = const VerificationMeta(
    'lastOfflineDataAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastOfflineDataAt =
      GeneratedColumn<DateTime>(
        'last_offline_data_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastSyncAtMeta = const VerificationMeta(
    'lastSyncAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSyncAt = GeneratedColumn<DateTime>(
    'last_sync_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastSyncErrorMeta = const VerificationMeta(
    'lastSyncError',
  );
  @override
  late final GeneratedColumn<String> lastSyncError = GeneratedColumn<String>(
    'last_sync_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    lastOfflineDataAt,
    lastSyncAt,
    lastSyncError,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_state_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncStateEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('last_offline_data_at')) {
      context.handle(
        _lastOfflineDataAtMeta,
        lastOfflineDataAt.isAcceptableOrUnknown(
          data['last_offline_data_at']!,
          _lastOfflineDataAtMeta,
        ),
      );
    }
    if (data.containsKey('last_sync_at')) {
      context.handle(
        _lastSyncAtMeta,
        lastSyncAt.isAcceptableOrUnknown(
          data['last_sync_at']!,
          _lastSyncAtMeta,
        ),
      );
    }
    if (data.containsKey('last_sync_error')) {
      context.handle(
        _lastSyncErrorMeta,
        lastSyncError.isAcceptableOrUnknown(
          data['last_sync_error']!,
          _lastSyncErrorMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncStateEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncStateEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      lastOfflineDataAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_offline_data_at'],
      ),
      lastSyncAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_sync_at'],
      ),
      lastSyncError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_sync_error'],
      ),
    );
  }

  @override
  $SyncStateEntriesTable createAlias(String alias) {
    return $SyncStateEntriesTable(attachedDatabase, alias);
  }
}

class SyncStateEntry extends DataClass implements Insertable<SyncStateEntry> {
  final int id;

  /// Dernier téléchargement réussi du paquet du jour.
  final DateTime? lastOfflineDataAt;

  /// Dernier envoi réussi de l'outbox.
  final DateTime? lastSyncAt;

  /// Message de l'échec le plus récent — le bandeau doit rester honnête et
  /// passer au rouge tant qu'il est renseigné (CLAUDE.md §6).
  final String? lastSyncError;
  const SyncStateEntry({
    required this.id,
    this.lastOfflineDataAt,
    this.lastSyncAt,
    this.lastSyncError,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || lastOfflineDataAt != null) {
      map['last_offline_data_at'] = Variable<DateTime>(lastOfflineDataAt);
    }
    if (!nullToAbsent || lastSyncAt != null) {
      map['last_sync_at'] = Variable<DateTime>(lastSyncAt);
    }
    if (!nullToAbsent || lastSyncError != null) {
      map['last_sync_error'] = Variable<String>(lastSyncError);
    }
    return map;
  }

  SyncStateEntriesCompanion toCompanion(bool nullToAbsent) {
    return SyncStateEntriesCompanion(
      id: Value(id),
      lastOfflineDataAt: lastOfflineDataAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastOfflineDataAt),
      lastSyncAt: lastSyncAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncAt),
      lastSyncError: lastSyncError == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncError),
    );
  }

  factory SyncStateEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncStateEntry(
      id: serializer.fromJson<int>(json['id']),
      lastOfflineDataAt: serializer.fromJson<DateTime?>(
        json['lastOfflineDataAt'],
      ),
      lastSyncAt: serializer.fromJson<DateTime?>(json['lastSyncAt']),
      lastSyncError: serializer.fromJson<String?>(json['lastSyncError']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lastOfflineDataAt': serializer.toJson<DateTime?>(lastOfflineDataAt),
      'lastSyncAt': serializer.toJson<DateTime?>(lastSyncAt),
      'lastSyncError': serializer.toJson<String?>(lastSyncError),
    };
  }

  SyncStateEntry copyWith({
    int? id,
    Value<DateTime?> lastOfflineDataAt = const Value.absent(),
    Value<DateTime?> lastSyncAt = const Value.absent(),
    Value<String?> lastSyncError = const Value.absent(),
  }) => SyncStateEntry(
    id: id ?? this.id,
    lastOfflineDataAt: lastOfflineDataAt.present
        ? lastOfflineDataAt.value
        : this.lastOfflineDataAt,
    lastSyncAt: lastSyncAt.present ? lastSyncAt.value : this.lastSyncAt,
    lastSyncError: lastSyncError.present
        ? lastSyncError.value
        : this.lastSyncError,
  );
  SyncStateEntry copyWithCompanion(SyncStateEntriesCompanion data) {
    return SyncStateEntry(
      id: data.id.present ? data.id.value : this.id,
      lastOfflineDataAt: data.lastOfflineDataAt.present
          ? data.lastOfflineDataAt.value
          : this.lastOfflineDataAt,
      lastSyncAt: data.lastSyncAt.present
          ? data.lastSyncAt.value
          : this.lastSyncAt,
      lastSyncError: data.lastSyncError.present
          ? data.lastSyncError.value
          : this.lastSyncError,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncStateEntry(')
          ..write('id: $id, ')
          ..write('lastOfflineDataAt: $lastOfflineDataAt, ')
          ..write('lastSyncAt: $lastSyncAt, ')
          ..write('lastSyncError: $lastSyncError')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, lastOfflineDataAt, lastSyncAt, lastSyncError);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncStateEntry &&
          other.id == this.id &&
          other.lastOfflineDataAt == this.lastOfflineDataAt &&
          other.lastSyncAt == this.lastSyncAt &&
          other.lastSyncError == this.lastSyncError);
}

class SyncStateEntriesCompanion extends UpdateCompanion<SyncStateEntry> {
  final Value<int> id;
  final Value<DateTime?> lastOfflineDataAt;
  final Value<DateTime?> lastSyncAt;
  final Value<String?> lastSyncError;
  const SyncStateEntriesCompanion({
    this.id = const Value.absent(),
    this.lastOfflineDataAt = const Value.absent(),
    this.lastSyncAt = const Value.absent(),
    this.lastSyncError = const Value.absent(),
  });
  SyncStateEntriesCompanion.insert({
    this.id = const Value.absent(),
    this.lastOfflineDataAt = const Value.absent(),
    this.lastSyncAt = const Value.absent(),
    this.lastSyncError = const Value.absent(),
  });
  static Insertable<SyncStateEntry> custom({
    Expression<int>? id,
    Expression<DateTime>? lastOfflineDataAt,
    Expression<DateTime>? lastSyncAt,
    Expression<String>? lastSyncError,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastOfflineDataAt != null) 'last_offline_data_at': lastOfflineDataAt,
      if (lastSyncAt != null) 'last_sync_at': lastSyncAt,
      if (lastSyncError != null) 'last_sync_error': lastSyncError,
    });
  }

  SyncStateEntriesCompanion copyWith({
    Value<int>? id,
    Value<DateTime?>? lastOfflineDataAt,
    Value<DateTime?>? lastSyncAt,
    Value<String?>? lastSyncError,
  }) {
    return SyncStateEntriesCompanion(
      id: id ?? this.id,
      lastOfflineDataAt: lastOfflineDataAt ?? this.lastOfflineDataAt,
      lastSyncAt: lastSyncAt ?? this.lastSyncAt,
      lastSyncError: lastSyncError ?? this.lastSyncError,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lastOfflineDataAt.present) {
      map['last_offline_data_at'] = Variable<DateTime>(lastOfflineDataAt.value);
    }
    if (lastSyncAt.present) {
      map['last_sync_at'] = Variable<DateTime>(lastSyncAt.value);
    }
    if (lastSyncError.present) {
      map['last_sync_error'] = Variable<String>(lastSyncError.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncStateEntriesCompanion(')
          ..write('id: $id, ')
          ..write('lastOfflineDataAt: $lastOfflineDataAt, ')
          ..write('lastSyncAt: $lastSyncAt, ')
          ..write('lastSyncError: $lastSyncError')
          ..write(')'))
        .toString();
  }
}

class $SessionProfilesTable extends SessionProfiles
    with TableInfo<$SessionProfilesTable, SessionProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _prenomMeta = const VerificationMeta('prenom');
  @override
  late final GeneratedColumn<String> prenom = GeneratedColumn<String>(
    'prenom',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nomMeta = const VerificationMeta('nom');
  @override
  late final GeneratedColumn<String> nom = GeneratedColumn<String>(
    'nom',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    prenom,
    nom,
    phone,
    email,
    role,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'session_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<SessionProfile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('prenom')) {
      context.handle(
        _prenomMeta,
        prenom.isAcceptableOrUnknown(data['prenom']!, _prenomMeta),
      );
    } else if (isInserting) {
      context.missing(_prenomMeta);
    }
    if (data.containsKey('nom')) {
      context.handle(
        _nomMeta,
        nom.isAcceptableOrUnknown(data['nom']!, _nomMeta),
      );
    } else if (isInserting) {
      context.missing(_nomMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SessionProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SessionProfile(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      prenom: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}prenom'],
      )!,
      nom: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nom'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      )!,
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $SessionProfilesTable createAlias(String alias) {
    return $SessionProfilesTable(attachedDatabase, alias);
  }
}

class SessionProfile extends DataClass implements Insertable<SessionProfile> {
  final int id;
  final String prenom;
  final String nom;
  final String phone;
  final String? email;

  /// Valeur technique du rôle (`agent_guichet`, `company_admin`, …).
  final String role;

  /// Horodatage de la dernière confirmation par le serveur.
  final DateTime cachedAt;
  const SessionProfile({
    required this.id,
    required this.prenom,
    required this.nom,
    required this.phone,
    this.email,
    required this.role,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['prenom'] = Variable<String>(prenom);
    map['nom'] = Variable<String>(nom);
    map['phone'] = Variable<String>(phone);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    map['role'] = Variable<String>(role);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  SessionProfilesCompanion toCompanion(bool nullToAbsent) {
    return SessionProfilesCompanion(
      id: Value(id),
      prenom: Value(prenom),
      nom: Value(nom),
      phone: Value(phone),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      role: Value(role),
      cachedAt: Value(cachedAt),
    );
  }

  factory SessionProfile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SessionProfile(
      id: serializer.fromJson<int>(json['id']),
      prenom: serializer.fromJson<String>(json['prenom']),
      nom: serializer.fromJson<String>(json['nom']),
      phone: serializer.fromJson<String>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      role: serializer.fromJson<String>(json['role']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'prenom': serializer.toJson<String>(prenom),
      'nom': serializer.toJson<String>(nom),
      'phone': serializer.toJson<String>(phone),
      'email': serializer.toJson<String?>(email),
      'role': serializer.toJson<String>(role),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  SessionProfile copyWith({
    int? id,
    String? prenom,
    String? nom,
    String? phone,
    Value<String?> email = const Value.absent(),
    String? role,
    DateTime? cachedAt,
  }) => SessionProfile(
    id: id ?? this.id,
    prenom: prenom ?? this.prenom,
    nom: nom ?? this.nom,
    phone: phone ?? this.phone,
    email: email.present ? email.value : this.email,
    role: role ?? this.role,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  SessionProfile copyWithCompanion(SessionProfilesCompanion data) {
    return SessionProfile(
      id: data.id.present ? data.id.value : this.id,
      prenom: data.prenom.present ? data.prenom.value : this.prenom,
      nom: data.nom.present ? data.nom.value : this.nom,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      role: data.role.present ? data.role.value : this.role,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SessionProfile(')
          ..write('id: $id, ')
          ..write('prenom: $prenom, ')
          ..write('nom: $nom, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('role: $role, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, prenom, nom, phone, email, role, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SessionProfile &&
          other.id == this.id &&
          other.prenom == this.prenom &&
          other.nom == this.nom &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.role == this.role &&
          other.cachedAt == this.cachedAt);
}

class SessionProfilesCompanion extends UpdateCompanion<SessionProfile> {
  final Value<int> id;
  final Value<String> prenom;
  final Value<String> nom;
  final Value<String> phone;
  final Value<String?> email;
  final Value<String> role;
  final Value<DateTime> cachedAt;
  const SessionProfilesCompanion({
    this.id = const Value.absent(),
    this.prenom = const Value.absent(),
    this.nom = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.role = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  SessionProfilesCompanion.insert({
    this.id = const Value.absent(),
    required String prenom,
    required String nom,
    required String phone,
    this.email = const Value.absent(),
    required String role,
    required DateTime cachedAt,
  }) : prenom = Value(prenom),
       nom = Value(nom),
       phone = Value(phone),
       role = Value(role),
       cachedAt = Value(cachedAt);
  static Insertable<SessionProfile> custom({
    Expression<int>? id,
    Expression<String>? prenom,
    Expression<String>? nom,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? role,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (prenom != null) 'prenom': prenom,
      if (nom != null) 'nom': nom,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (role != null) 'role': role,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  SessionProfilesCompanion copyWith({
    Value<int>? id,
    Value<String>? prenom,
    Value<String>? nom,
    Value<String>? phone,
    Value<String?>? email,
    Value<String>? role,
    Value<DateTime>? cachedAt,
  }) {
    return SessionProfilesCompanion(
      id: id ?? this.id,
      prenom: prenom ?? this.prenom,
      nom: nom ?? this.nom,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      role: role ?? this.role,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (prenom.present) {
      map['prenom'] = Variable<String>(prenom.value);
    }
    if (nom.present) {
      map['nom'] = Variable<String>(nom.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionProfilesCompanion(')
          ..write('id: $id, ')
          ..write('prenom: $prenom, ')
          ..write('nom: $nom, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('role: $role, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $BoardedTicketsTable extends BoardedTickets
    with TableInfo<$BoardedTicketsTable, BoardedTicket> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BoardedTicketsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ticketNumberMeta = const VerificationMeta(
    'ticketNumber',
  );
  @override
  late final GeneratedColumn<String> ticketNumber = GeneratedColumn<String>(
    'ticket_number',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<LocalBoardingMethod, String>
  method = GeneratedColumn<String>(
    'method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<LocalBoardingMethod>($BoardedTicketsTable.$convertermethod);
  static const VerificationMeta _boardedAtMeta = const VerificationMeta(
    'boardedAt',
  );
  @override
  late final GeneratedColumn<DateTime> boardedAt = GeneratedColumn<DateTime>(
    'boarded_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isOfflineMeta = const VerificationMeta(
    'isOffline',
  );
  @override
  late final GeneratedColumn<bool> isOffline = GeneratedColumn<bool>(
    'is_offline',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_offline" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    ticketNumber,
    method,
    boardedAt,
    isOffline,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'boarded_tickets';
  @override
  VerificationContext validateIntegrity(
    Insertable<BoardedTicket> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ticket_number')) {
      context.handle(
        _ticketNumberMeta,
        ticketNumber.isAcceptableOrUnknown(
          data['ticket_number']!,
          _ticketNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ticketNumberMeta);
    }
    if (data.containsKey('boarded_at')) {
      context.handle(
        _boardedAtMeta,
        boardedAt.isAcceptableOrUnknown(data['boarded_at']!, _boardedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_boardedAtMeta);
    }
    if (data.containsKey('is_offline')) {
      context.handle(
        _isOfflineMeta,
        isOffline.isAcceptableOrUnknown(data['is_offline']!, _isOfflineMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ticketNumber};
  @override
  BoardedTicket map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BoardedTicket(
      ticketNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ticket_number'],
      )!,
      method: $BoardedTicketsTable.$convertermethod.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}method'],
        )!,
      ),
      boardedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}boarded_at'],
      )!,
      isOffline: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_offline'],
      )!,
    );
  }

  @override
  $BoardedTicketsTable createAlias(String alias) {
    return $BoardedTicketsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<LocalBoardingMethod, String, String>
  $convertermethod = const EnumNameConverter<LocalBoardingMethod>(
    LocalBoardingMethod.values,
  );
}

class BoardedTicket extends DataClass implements Insertable<BoardedTicket> {
  final String ticketNumber;
  final LocalBoardingMethod method;
  final DateTime boardedAt;

  /// Vrai si confirmé via l'outbox (en attente de synchronisation), plutôt
  /// qu'un appel serveur déjà abouti.
  final bool isOffline;
  const BoardedTicket({
    required this.ticketNumber,
    required this.method,
    required this.boardedAt,
    required this.isOffline,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ticket_number'] = Variable<String>(ticketNumber);
    {
      map['method'] = Variable<String>(
        $BoardedTicketsTable.$convertermethod.toSql(method),
      );
    }
    map['boarded_at'] = Variable<DateTime>(boardedAt);
    map['is_offline'] = Variable<bool>(isOffline);
    return map;
  }

  BoardedTicketsCompanion toCompanion(bool nullToAbsent) {
    return BoardedTicketsCompanion(
      ticketNumber: Value(ticketNumber),
      method: Value(method),
      boardedAt: Value(boardedAt),
      isOffline: Value(isOffline),
    );
  }

  factory BoardedTicket.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BoardedTicket(
      ticketNumber: serializer.fromJson<String>(json['ticketNumber']),
      method: $BoardedTicketsTable.$convertermethod.fromJson(
        serializer.fromJson<String>(json['method']),
      ),
      boardedAt: serializer.fromJson<DateTime>(json['boardedAt']),
      isOffline: serializer.fromJson<bool>(json['isOffline']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ticketNumber': serializer.toJson<String>(ticketNumber),
      'method': serializer.toJson<String>(
        $BoardedTicketsTable.$convertermethod.toJson(method),
      ),
      'boardedAt': serializer.toJson<DateTime>(boardedAt),
      'isOffline': serializer.toJson<bool>(isOffline),
    };
  }

  BoardedTicket copyWith({
    String? ticketNumber,
    LocalBoardingMethod? method,
    DateTime? boardedAt,
    bool? isOffline,
  }) => BoardedTicket(
    ticketNumber: ticketNumber ?? this.ticketNumber,
    method: method ?? this.method,
    boardedAt: boardedAt ?? this.boardedAt,
    isOffline: isOffline ?? this.isOffline,
  );
  BoardedTicket copyWithCompanion(BoardedTicketsCompanion data) {
    return BoardedTicket(
      ticketNumber: data.ticketNumber.present
          ? data.ticketNumber.value
          : this.ticketNumber,
      method: data.method.present ? data.method.value : this.method,
      boardedAt: data.boardedAt.present ? data.boardedAt.value : this.boardedAt,
      isOffline: data.isOffline.present ? data.isOffline.value : this.isOffline,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BoardedTicket(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('method: $method, ')
          ..write('boardedAt: $boardedAt, ')
          ..write('isOffline: $isOffline')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(ticketNumber, method, boardedAt, isOffline);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BoardedTicket &&
          other.ticketNumber == this.ticketNumber &&
          other.method == this.method &&
          other.boardedAt == this.boardedAt &&
          other.isOffline == this.isOffline);
}

class BoardedTicketsCompanion extends UpdateCompanion<BoardedTicket> {
  final Value<String> ticketNumber;
  final Value<LocalBoardingMethod> method;
  final Value<DateTime> boardedAt;
  final Value<bool> isOffline;
  final Value<int> rowid;
  const BoardedTicketsCompanion({
    this.ticketNumber = const Value.absent(),
    this.method = const Value.absent(),
    this.boardedAt = const Value.absent(),
    this.isOffline = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BoardedTicketsCompanion.insert({
    required String ticketNumber,
    required LocalBoardingMethod method,
    required DateTime boardedAt,
    this.isOffline = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : ticketNumber = Value(ticketNumber),
       method = Value(method),
       boardedAt = Value(boardedAt);
  static Insertable<BoardedTicket> custom({
    Expression<String>? ticketNumber,
    Expression<String>? method,
    Expression<DateTime>? boardedAt,
    Expression<bool>? isOffline,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ticketNumber != null) 'ticket_number': ticketNumber,
      if (method != null) 'method': method,
      if (boardedAt != null) 'boarded_at': boardedAt,
      if (isOffline != null) 'is_offline': isOffline,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BoardedTicketsCompanion copyWith({
    Value<String>? ticketNumber,
    Value<LocalBoardingMethod>? method,
    Value<DateTime>? boardedAt,
    Value<bool>? isOffline,
    Value<int>? rowid,
  }) {
    return BoardedTicketsCompanion(
      ticketNumber: ticketNumber ?? this.ticketNumber,
      method: method ?? this.method,
      boardedAt: boardedAt ?? this.boardedAt,
      isOffline: isOffline ?? this.isOffline,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ticketNumber.present) {
      map['ticket_number'] = Variable<String>(ticketNumber.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(
        $BoardedTicketsTable.$convertermethod.toSql(method.value),
      );
    }
    if (boardedAt.present) {
      map['boarded_at'] = Variable<DateTime>(boardedAt.value);
    }
    if (isOffline.present) {
      map['is_offline'] = Variable<bool>(isOffline.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BoardedTicketsCompanion(')
          ..write('ticketNumber: $ticketNumber, ')
          ..write('method: $method, ')
          ..write('boardedAt: $boardedAt, ')
          ..write('isOffline: $isOffline, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ValidatedTripsTable extends ValidatedTrips
    with TableInfo<$ValidatedTripsTable, ValidatedTrip> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ValidatedTripsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tripIdMeta = const VerificationMeta('tripId');
  @override
  late final GeneratedColumn<int> tripId = GeneratedColumn<int>(
    'trip_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _validatedAtMeta = const VerificationMeta(
    'validatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> validatedAt = GeneratedColumn<DateTime>(
    'validated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [tripId, validatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'validated_trips';
  @override
  VerificationContext validateIntegrity(
    Insertable<ValidatedTrip> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('trip_id')) {
      context.handle(
        _tripIdMeta,
        tripId.isAcceptableOrUnknown(data['trip_id']!, _tripIdMeta),
      );
    }
    if (data.containsKey('validated_at')) {
      context.handle(
        _validatedAtMeta,
        validatedAt.isAcceptableOrUnknown(
          data['validated_at']!,
          _validatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_validatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tripId};
  @override
  ValidatedTrip map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ValidatedTrip(
      tripId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trip_id'],
      )!,
      validatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}validated_at'],
      )!,
    );
  }

  @override
  $ValidatedTripsTable createAlias(String alias) {
    return $ValidatedTripsTable(attachedDatabase, alias);
  }
}

class ValidatedTrip extends DataClass implements Insertable<ValidatedTrip> {
  final int tripId;
  final DateTime validatedAt;
  const ValidatedTrip({required this.tripId, required this.validatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['trip_id'] = Variable<int>(tripId);
    map['validated_at'] = Variable<DateTime>(validatedAt);
    return map;
  }

  ValidatedTripsCompanion toCompanion(bool nullToAbsent) {
    return ValidatedTripsCompanion(
      tripId: Value(tripId),
      validatedAt: Value(validatedAt),
    );
  }

  factory ValidatedTrip.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ValidatedTrip(
      tripId: serializer.fromJson<int>(json['tripId']),
      validatedAt: serializer.fromJson<DateTime>(json['validatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tripId': serializer.toJson<int>(tripId),
      'validatedAt': serializer.toJson<DateTime>(validatedAt),
    };
  }

  ValidatedTrip copyWith({int? tripId, DateTime? validatedAt}) => ValidatedTrip(
    tripId: tripId ?? this.tripId,
    validatedAt: validatedAt ?? this.validatedAt,
  );
  ValidatedTrip copyWithCompanion(ValidatedTripsCompanion data) {
    return ValidatedTrip(
      tripId: data.tripId.present ? data.tripId.value : this.tripId,
      validatedAt: data.validatedAt.present
          ? data.validatedAt.value
          : this.validatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ValidatedTrip(')
          ..write('tripId: $tripId, ')
          ..write('validatedAt: $validatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(tripId, validatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ValidatedTrip &&
          other.tripId == this.tripId &&
          other.validatedAt == this.validatedAt);
}

class ValidatedTripsCompanion extends UpdateCompanion<ValidatedTrip> {
  final Value<int> tripId;
  final Value<DateTime> validatedAt;
  const ValidatedTripsCompanion({
    this.tripId = const Value.absent(),
    this.validatedAt = const Value.absent(),
  });
  ValidatedTripsCompanion.insert({
    this.tripId = const Value.absent(),
    required DateTime validatedAt,
  }) : validatedAt = Value(validatedAt);
  static Insertable<ValidatedTrip> custom({
    Expression<int>? tripId,
    Expression<DateTime>? validatedAt,
  }) {
    return RawValuesInsertable({
      if (tripId != null) 'trip_id': tripId,
      if (validatedAt != null) 'validated_at': validatedAt,
    });
  }

  ValidatedTripsCompanion copyWith({
    Value<int>? tripId,
    Value<DateTime>? validatedAt,
  }) {
    return ValidatedTripsCompanion(
      tripId: tripId ?? this.tripId,
      validatedAt: validatedAt ?? this.validatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tripId.present) {
      map['trip_id'] = Variable<int>(tripId.value);
    }
    if (validatedAt.present) {
      map['validated_at'] = Variable<DateTime>(validatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ValidatedTripsCompanion(')
          ..write('tripId: $tripId, ')
          ..write('validatedAt: $validatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $CachedTripsTable cachedTrips = $CachedTripsTable(this);
  late final $CachedBookingsTable cachedBookings = $CachedBookingsTable(this);
  late final $CachedParcelArrivalsTable cachedParcelArrivals =
      $CachedParcelArrivalsTable(this);
  late final $CachedAgentDeparturesTable cachedAgentDepartures =
      $CachedAgentDeparturesTable(this);
  late final $CachedAgentAlertsTable cachedAgentAlerts =
      $CachedAgentAlertsTable(this);
  late final $OfflineBookingsTable offlineBookings = $OfflineBookingsTable(
    this,
  );
  late final $OfflineParcelsTable offlineParcels = $OfflineParcelsTable(this);
  late final $OfflineValidationsTable offlineValidations =
      $OfflineValidationsTable(this);
  late final $OfflineParcelNotificationsTable offlineParcelNotifications =
      $OfflineParcelNotificationsTable(this);
  late final $OutboxEntriesTable outboxEntries = $OutboxEntriesTable(this);
  late final $SyncStateEntriesTable syncStateEntries = $SyncStateEntriesTable(
    this,
  );
  late final $SessionProfilesTable sessionProfiles = $SessionProfilesTable(
    this,
  );
  late final $BoardedTicketsTable boardedTickets = $BoardedTicketsTable(this);
  late final $ValidatedTripsTable validatedTrips = $ValidatedTripsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cachedTrips,
    cachedBookings,
    cachedParcelArrivals,
    cachedAgentDepartures,
    cachedAgentAlerts,
    offlineBookings,
    offlineParcels,
    offlineValidations,
    offlineParcelNotifications,
    outboxEntries,
    syncStateEntries,
    sessionProfiles,
    boardedTickets,
    validatedTrips,
  ];
}

typedef $$CachedTripsTableCreateCompanionBuilder =
    CachedTripsCompanion Function({
      Value<int> id,
      required String originCity,
      required String destinationCity,
      required DateTime departureTime,
      Value<int?> availableSeats,
      required String vehicle,
      Value<String?> seatPlan,
      Value<String?> status,
      required DateTime cachedAt,
    });
typedef $$CachedTripsTableUpdateCompanionBuilder =
    CachedTripsCompanion Function({
      Value<int> id,
      Value<String> originCity,
      Value<String> destinationCity,
      Value<DateTime> departureTime,
      Value<int?> availableSeats,
      Value<String> vehicle,
      Value<String?> seatPlan,
      Value<String?> status,
      Value<DateTime> cachedAt,
    });

class $$CachedTripsTableFilterComposer
    extends Composer<_$LocalDatabase, $CachedTripsTable> {
  $$CachedTripsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originCity => $composableBuilder(
    column: $table.originCity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get departureTime => $composableBuilder(
    column: $table.departureTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get availableSeats => $composableBuilder(
    column: $table.availableSeats,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get vehicle => $composableBuilder(
    column: $table.vehicle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seatPlan => $composableBuilder(
    column: $table.seatPlan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedTripsTableOrderingComposer
    extends Composer<_$LocalDatabase, $CachedTripsTable> {
  $$CachedTripsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originCity => $composableBuilder(
    column: $table.originCity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get departureTime => $composableBuilder(
    column: $table.departureTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get availableSeats => $composableBuilder(
    column: $table.availableSeats,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get vehicle => $composableBuilder(
    column: $table.vehicle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seatPlan => $composableBuilder(
    column: $table.seatPlan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedTripsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $CachedTripsTable> {
  $$CachedTripsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get originCity => $composableBuilder(
    column: $table.originCity,
    builder: (column) => column,
  );

  GeneratedColumn<String> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get departureTime => $composableBuilder(
    column: $table.departureTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get availableSeats => $composableBuilder(
    column: $table.availableSeats,
    builder: (column) => column,
  );

  GeneratedColumn<String> get vehicle =>
      $composableBuilder(column: $table.vehicle, builder: (column) => column);

  GeneratedColumn<String> get seatPlan =>
      $composableBuilder(column: $table.seatPlan, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CachedTripsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $CachedTripsTable,
          CachedTrip,
          $$CachedTripsTableFilterComposer,
          $$CachedTripsTableOrderingComposer,
          $$CachedTripsTableAnnotationComposer,
          $$CachedTripsTableCreateCompanionBuilder,
          $$CachedTripsTableUpdateCompanionBuilder,
          (
            CachedTrip,
            BaseReferences<_$LocalDatabase, $CachedTripsTable, CachedTrip>,
          ),
          CachedTrip,
          PrefetchHooks Function()
        > {
  $$CachedTripsTableTableManager(_$LocalDatabase db, $CachedTripsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedTripsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedTripsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedTripsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> originCity = const Value.absent(),
                Value<String> destinationCity = const Value.absent(),
                Value<DateTime> departureTime = const Value.absent(),
                Value<int?> availableSeats = const Value.absent(),
                Value<String> vehicle = const Value.absent(),
                Value<String?> seatPlan = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => CachedTripsCompanion(
                id: id,
                originCity: originCity,
                destinationCity: destinationCity,
                departureTime: departureTime,
                availableSeats: availableSeats,
                vehicle: vehicle,
                seatPlan: seatPlan,
                status: status,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String originCity,
                required String destinationCity,
                required DateTime departureTime,
                Value<int?> availableSeats = const Value.absent(),
                required String vehicle,
                Value<String?> seatPlan = const Value.absent(),
                Value<String?> status = const Value.absent(),
                required DateTime cachedAt,
              }) => CachedTripsCompanion.insert(
                id: id,
                originCity: originCity,
                destinationCity: destinationCity,
                departureTime: departureTime,
                availableSeats: availableSeats,
                vehicle: vehicle,
                seatPlan: seatPlan,
                status: status,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedTripsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $CachedTripsTable,
      CachedTrip,
      $$CachedTripsTableFilterComposer,
      $$CachedTripsTableOrderingComposer,
      $$CachedTripsTableAnnotationComposer,
      $$CachedTripsTableCreateCompanionBuilder,
      $$CachedTripsTableUpdateCompanionBuilder,
      (
        CachedTrip,
        BaseReferences<_$LocalDatabase, $CachedTripsTable, CachedTrip>,
      ),
      CachedTrip,
      PrefetchHooks Function()
    >;
typedef $$CachedBookingsTableCreateCompanionBuilder =
    CachedBookingsCompanion Function({
      required String ticketNumber,
      required int tripId,
      required String passengerName,
      Value<String?> phone,
      Value<String?> seatNumber,
      Value<String?> qrCode,
      Value<String?> status,
      required DateTime cachedAt,
      Value<int> rowid,
    });
typedef $$CachedBookingsTableUpdateCompanionBuilder =
    CachedBookingsCompanion Function({
      Value<String> ticketNumber,
      Value<int> tripId,
      Value<String> passengerName,
      Value<String?> phone,
      Value<String?> seatNumber,
      Value<String?> qrCode,
      Value<String?> status,
      Value<DateTime> cachedAt,
      Value<int> rowid,
    });

class $$CachedBookingsTableFilterComposer
    extends Composer<_$LocalDatabase, $CachedBookingsTable> {
  $$CachedBookingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passengerName => $composableBuilder(
    column: $table.passengerName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seatNumber => $composableBuilder(
    column: $table.seatNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedBookingsTableOrderingComposer
    extends Composer<_$LocalDatabase, $CachedBookingsTable> {
  $$CachedBookingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passengerName => $composableBuilder(
    column: $table.passengerName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seatNumber => $composableBuilder(
    column: $table.seatNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get qrCode => $composableBuilder(
    column: $table.qrCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedBookingsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $CachedBookingsTable> {
  $$CachedBookingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tripId =>
      $composableBuilder(column: $table.tripId, builder: (column) => column);

  GeneratedColumn<String> get passengerName => $composableBuilder(
    column: $table.passengerName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get seatNumber => $composableBuilder(
    column: $table.seatNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get qrCode =>
      $composableBuilder(column: $table.qrCode, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CachedBookingsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $CachedBookingsTable,
          CachedBooking,
          $$CachedBookingsTableFilterComposer,
          $$CachedBookingsTableOrderingComposer,
          $$CachedBookingsTableAnnotationComposer,
          $$CachedBookingsTableCreateCompanionBuilder,
          $$CachedBookingsTableUpdateCompanionBuilder,
          (
            CachedBooking,
            BaseReferences<
              _$LocalDatabase,
              $CachedBookingsTable,
              CachedBooking
            >,
          ),
          CachedBooking,
          PrefetchHooks Function()
        > {
  $$CachedBookingsTableTableManager(
    _$LocalDatabase db,
    $CachedBookingsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedBookingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedBookingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedBookingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> ticketNumber = const Value.absent(),
                Value<int> tripId = const Value.absent(),
                Value<String> passengerName = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> seatNumber = const Value.absent(),
                Value<String?> qrCode = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedBookingsCompanion(
                ticketNumber: ticketNumber,
                tripId: tripId,
                passengerName: passengerName,
                phone: phone,
                seatNumber: seatNumber,
                qrCode: qrCode,
                status: status,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String ticketNumber,
                required int tripId,
                required String passengerName,
                Value<String?> phone = const Value.absent(),
                Value<String?> seatNumber = const Value.absent(),
                Value<String?> qrCode = const Value.absent(),
                Value<String?> status = const Value.absent(),
                required DateTime cachedAt,
                Value<int> rowid = const Value.absent(),
              }) => CachedBookingsCompanion.insert(
                ticketNumber: ticketNumber,
                tripId: tripId,
                passengerName: passengerName,
                phone: phone,
                seatNumber: seatNumber,
                qrCode: qrCode,
                status: status,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedBookingsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $CachedBookingsTable,
      CachedBooking,
      $$CachedBookingsTableFilterComposer,
      $$CachedBookingsTableOrderingComposer,
      $$CachedBookingsTableAnnotationComposer,
      $$CachedBookingsTableCreateCompanionBuilder,
      $$CachedBookingsTableUpdateCompanionBuilder,
      (
        CachedBooking,
        BaseReferences<_$LocalDatabase, $CachedBookingsTable, CachedBooking>,
      ),
      CachedBooking,
      PrefetchHooks Function()
    >;
typedef $$CachedParcelArrivalsTableCreateCompanionBuilder =
    CachedParcelArrivalsCompanion Function({
      required String trackingNumber,
      required String recipientName,
      Value<String?> recipientPhone,
      Value<String?> destinationCity,
      Value<String?> status,
      required DateTime cachedAt,
      Value<int> rowid,
    });
typedef $$CachedParcelArrivalsTableUpdateCompanionBuilder =
    CachedParcelArrivalsCompanion Function({
      Value<String> trackingNumber,
      Value<String> recipientName,
      Value<String?> recipientPhone,
      Value<String?> destinationCity,
      Value<String?> status,
      Value<DateTime> cachedAt,
      Value<int> rowid,
    });

class $$CachedParcelArrivalsTableFilterComposer
    extends Composer<_$LocalDatabase, $CachedParcelArrivalsTable> {
  $$CachedParcelArrivalsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipientName => $composableBuilder(
    column: $table.recipientName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipientPhone => $composableBuilder(
    column: $table.recipientPhone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedParcelArrivalsTableOrderingComposer
    extends Composer<_$LocalDatabase, $CachedParcelArrivalsTable> {
  $$CachedParcelArrivalsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipientName => $composableBuilder(
    column: $table.recipientName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipientPhone => $composableBuilder(
    column: $table.recipientPhone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedParcelArrivalsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $CachedParcelArrivalsTable> {
  $$CachedParcelArrivalsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get recipientName => $composableBuilder(
    column: $table.recipientName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get recipientPhone => $composableBuilder(
    column: $table.recipientPhone,
    builder: (column) => column,
  );

  GeneratedColumn<String> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CachedParcelArrivalsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $CachedParcelArrivalsTable,
          CachedParcelArrival,
          $$CachedParcelArrivalsTableFilterComposer,
          $$CachedParcelArrivalsTableOrderingComposer,
          $$CachedParcelArrivalsTableAnnotationComposer,
          $$CachedParcelArrivalsTableCreateCompanionBuilder,
          $$CachedParcelArrivalsTableUpdateCompanionBuilder,
          (
            CachedParcelArrival,
            BaseReferences<
              _$LocalDatabase,
              $CachedParcelArrivalsTable,
              CachedParcelArrival
            >,
          ),
          CachedParcelArrival,
          PrefetchHooks Function()
        > {
  $$CachedParcelArrivalsTableTableManager(
    _$LocalDatabase db,
    $CachedParcelArrivalsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedParcelArrivalsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedParcelArrivalsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CachedParcelArrivalsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> trackingNumber = const Value.absent(),
                Value<String> recipientName = const Value.absent(),
                Value<String?> recipientPhone = const Value.absent(),
                Value<String?> destinationCity = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedParcelArrivalsCompanion(
                trackingNumber: trackingNumber,
                recipientName: recipientName,
                recipientPhone: recipientPhone,
                destinationCity: destinationCity,
                status: status,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String trackingNumber,
                required String recipientName,
                Value<String?> recipientPhone = const Value.absent(),
                Value<String?> destinationCity = const Value.absent(),
                Value<String?> status = const Value.absent(),
                required DateTime cachedAt,
                Value<int> rowid = const Value.absent(),
              }) => CachedParcelArrivalsCompanion.insert(
                trackingNumber: trackingNumber,
                recipientName: recipientName,
                recipientPhone: recipientPhone,
                destinationCity: destinationCity,
                status: status,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedParcelArrivalsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $CachedParcelArrivalsTable,
      CachedParcelArrival,
      $$CachedParcelArrivalsTableFilterComposer,
      $$CachedParcelArrivalsTableOrderingComposer,
      $$CachedParcelArrivalsTableAnnotationComposer,
      $$CachedParcelArrivalsTableCreateCompanionBuilder,
      $$CachedParcelArrivalsTableUpdateCompanionBuilder,
      (
        CachedParcelArrival,
        BaseReferences<
          _$LocalDatabase,
          $CachedParcelArrivalsTable,
          CachedParcelArrival
        >,
      ),
      CachedParcelArrival,
      PrefetchHooks Function()
    >;
typedef $$CachedAgentDeparturesTableCreateCompanionBuilder =
    CachedAgentDeparturesCompanion Function({
      Value<int> tripId,
      required String origin,
      required String destination,
      required DateTime departureTime,
      required int availableSeats,
      required int passengerCount,
      Value<String?> vehicleRegistration,
      Value<String?> status,
      required DateTime cachedAt,
    });
typedef $$CachedAgentDeparturesTableUpdateCompanionBuilder =
    CachedAgentDeparturesCompanion Function({
      Value<int> tripId,
      Value<String> origin,
      Value<String> destination,
      Value<DateTime> departureTime,
      Value<int> availableSeats,
      Value<int> passengerCount,
      Value<String?> vehicleRegistration,
      Value<String?> status,
      Value<DateTime> cachedAt,
    });

class $$CachedAgentDeparturesTableFilterComposer
    extends Composer<_$LocalDatabase, $CachedAgentDeparturesTable> {
  $$CachedAgentDeparturesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get origin => $composableBuilder(
    column: $table.origin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get destination => $composableBuilder(
    column: $table.destination,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get departureTime => $composableBuilder(
    column: $table.departureTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get availableSeats => $composableBuilder(
    column: $table.availableSeats,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get passengerCount => $composableBuilder(
    column: $table.passengerCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get vehicleRegistration => $composableBuilder(
    column: $table.vehicleRegistration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedAgentDeparturesTableOrderingComposer
    extends Composer<_$LocalDatabase, $CachedAgentDeparturesTable> {
  $$CachedAgentDeparturesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get origin => $composableBuilder(
    column: $table.origin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get destination => $composableBuilder(
    column: $table.destination,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get departureTime => $composableBuilder(
    column: $table.departureTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get availableSeats => $composableBuilder(
    column: $table.availableSeats,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get passengerCount => $composableBuilder(
    column: $table.passengerCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get vehicleRegistration => $composableBuilder(
    column: $table.vehicleRegistration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedAgentDeparturesTableAnnotationComposer
    extends Composer<_$LocalDatabase, $CachedAgentDeparturesTable> {
  $$CachedAgentDeparturesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get tripId =>
      $composableBuilder(column: $table.tripId, builder: (column) => column);

  GeneratedColumn<String> get origin =>
      $composableBuilder(column: $table.origin, builder: (column) => column);

  GeneratedColumn<String> get destination => $composableBuilder(
    column: $table.destination,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get departureTime => $composableBuilder(
    column: $table.departureTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get availableSeats => $composableBuilder(
    column: $table.availableSeats,
    builder: (column) => column,
  );

  GeneratedColumn<int> get passengerCount => $composableBuilder(
    column: $table.passengerCount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get vehicleRegistration => $composableBuilder(
    column: $table.vehicleRegistration,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CachedAgentDeparturesTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $CachedAgentDeparturesTable,
          CachedAgentDeparture,
          $$CachedAgentDeparturesTableFilterComposer,
          $$CachedAgentDeparturesTableOrderingComposer,
          $$CachedAgentDeparturesTableAnnotationComposer,
          $$CachedAgentDeparturesTableCreateCompanionBuilder,
          $$CachedAgentDeparturesTableUpdateCompanionBuilder,
          (
            CachedAgentDeparture,
            BaseReferences<
              _$LocalDatabase,
              $CachedAgentDeparturesTable,
              CachedAgentDeparture
            >,
          ),
          CachedAgentDeparture,
          PrefetchHooks Function()
        > {
  $$CachedAgentDeparturesTableTableManager(
    _$LocalDatabase db,
    $CachedAgentDeparturesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedAgentDeparturesTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$CachedAgentDeparturesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CachedAgentDeparturesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> tripId = const Value.absent(),
                Value<String> origin = const Value.absent(),
                Value<String> destination = const Value.absent(),
                Value<DateTime> departureTime = const Value.absent(),
                Value<int> availableSeats = const Value.absent(),
                Value<int> passengerCount = const Value.absent(),
                Value<String?> vehicleRegistration = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => CachedAgentDeparturesCompanion(
                tripId: tripId,
                origin: origin,
                destination: destination,
                departureTime: departureTime,
                availableSeats: availableSeats,
                passengerCount: passengerCount,
                vehicleRegistration: vehicleRegistration,
                status: status,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> tripId = const Value.absent(),
                required String origin,
                required String destination,
                required DateTime departureTime,
                required int availableSeats,
                required int passengerCount,
                Value<String?> vehicleRegistration = const Value.absent(),
                Value<String?> status = const Value.absent(),
                required DateTime cachedAt,
              }) => CachedAgentDeparturesCompanion.insert(
                tripId: tripId,
                origin: origin,
                destination: destination,
                departureTime: departureTime,
                availableSeats: availableSeats,
                passengerCount: passengerCount,
                vehicleRegistration: vehicleRegistration,
                status: status,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedAgentDeparturesTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $CachedAgentDeparturesTable,
      CachedAgentDeparture,
      $$CachedAgentDeparturesTableFilterComposer,
      $$CachedAgentDeparturesTableOrderingComposer,
      $$CachedAgentDeparturesTableAnnotationComposer,
      $$CachedAgentDeparturesTableCreateCompanionBuilder,
      $$CachedAgentDeparturesTableUpdateCompanionBuilder,
      (
        CachedAgentDeparture,
        BaseReferences<
          _$LocalDatabase,
          $CachedAgentDeparturesTable,
          CachedAgentDeparture
        >,
      ),
      CachedAgentDeparture,
      PrefetchHooks Function()
    >;
typedef $$CachedAgentAlertsTableCreateCompanionBuilder =
    CachedAgentAlertsCompanion Function({
      Value<int> id,
      required String title,
      required String body,
      required String type,
      required DateTime createdAt,
      required DateTime cachedAt,
    });
typedef $$CachedAgentAlertsTableUpdateCompanionBuilder =
    CachedAgentAlertsCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> body,
      Value<String> type,
      Value<DateTime> createdAt,
      Value<DateTime> cachedAt,
    });

class $$CachedAgentAlertsTableFilterComposer
    extends Composer<_$LocalDatabase, $CachedAgentAlertsTable> {
  $$CachedAgentAlertsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedAgentAlertsTableOrderingComposer
    extends Composer<_$LocalDatabase, $CachedAgentAlertsTable> {
  $$CachedAgentAlertsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedAgentAlertsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $CachedAgentAlertsTable> {
  $$CachedAgentAlertsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CachedAgentAlertsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $CachedAgentAlertsTable,
          CachedAgentAlert,
          $$CachedAgentAlertsTableFilterComposer,
          $$CachedAgentAlertsTableOrderingComposer,
          $$CachedAgentAlertsTableAnnotationComposer,
          $$CachedAgentAlertsTableCreateCompanionBuilder,
          $$CachedAgentAlertsTableUpdateCompanionBuilder,
          (
            CachedAgentAlert,
            BaseReferences<
              _$LocalDatabase,
              $CachedAgentAlertsTable,
              CachedAgentAlert
            >,
          ),
          CachedAgentAlert,
          PrefetchHooks Function()
        > {
  $$CachedAgentAlertsTableTableManager(
    _$LocalDatabase db,
    $CachedAgentAlertsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedAgentAlertsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedAgentAlertsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedAgentAlertsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => CachedAgentAlertsCompanion(
                id: id,
                title: title,
                body: body,
                type: type,
                createdAt: createdAt,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String body,
                required String type,
                required DateTime createdAt,
                required DateTime cachedAt,
              }) => CachedAgentAlertsCompanion.insert(
                id: id,
                title: title,
                body: body,
                type: type,
                createdAt: createdAt,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedAgentAlertsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $CachedAgentAlertsTable,
      CachedAgentAlert,
      $$CachedAgentAlertsTableFilterComposer,
      $$CachedAgentAlertsTableOrderingComposer,
      $$CachedAgentAlertsTableAnnotationComposer,
      $$CachedAgentAlertsTableCreateCompanionBuilder,
      $$CachedAgentAlertsTableUpdateCompanionBuilder,
      (
        CachedAgentAlert,
        BaseReferences<
          _$LocalDatabase,
          $CachedAgentAlertsTable,
          CachedAgentAlert
        >,
      ),
      CachedAgentAlert,
      PrefetchHooks Function()
    >;
typedef $$OfflineBookingsTableCreateCompanionBuilder =
    OfflineBookingsCompanion Function({
      required String ticketNumber,
      required int tripId,
      required String firstName,
      required String lastName,
      required String phone,
      Value<String?> seatNumber,
      Value<String?> amount,
      Value<String?> paymentMethod,
      Value<String?> transactionRef,
      required DateTime offlineCreatedAt,
      Value<int> rowid,
    });
typedef $$OfflineBookingsTableUpdateCompanionBuilder =
    OfflineBookingsCompanion Function({
      Value<String> ticketNumber,
      Value<int> tripId,
      Value<String> firstName,
      Value<String> lastName,
      Value<String> phone,
      Value<String?> seatNumber,
      Value<String?> amount,
      Value<String?> paymentMethod,
      Value<String?> transactionRef,
      Value<DateTime> offlineCreatedAt,
      Value<int> rowid,
    });

class $$OfflineBookingsTableFilterComposer
    extends Composer<_$LocalDatabase, $OfflineBookingsTable> {
  $$OfflineBookingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seatNumber => $composableBuilder(
    column: $table.seatNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get transactionRef => $composableBuilder(
    column: $table.transactionRef,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OfflineBookingsTableOrderingComposer
    extends Composer<_$LocalDatabase, $OfflineBookingsTable> {
  $$OfflineBookingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seatNumber => $composableBuilder(
    column: $table.seatNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get transactionRef => $composableBuilder(
    column: $table.transactionRef,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OfflineBookingsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $OfflineBookingsTable> {
  $$OfflineBookingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tripId =>
      $composableBuilder(column: $table.tripId, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get seatNumber => $composableBuilder(
    column: $table.seatNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => column,
  );

  GeneratedColumn<String> get transactionRef => $composableBuilder(
    column: $table.transactionRef,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => column,
  );
}

class $$OfflineBookingsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $OfflineBookingsTable,
          OfflineBooking,
          $$OfflineBookingsTableFilterComposer,
          $$OfflineBookingsTableOrderingComposer,
          $$OfflineBookingsTableAnnotationComposer,
          $$OfflineBookingsTableCreateCompanionBuilder,
          $$OfflineBookingsTableUpdateCompanionBuilder,
          (
            OfflineBooking,
            BaseReferences<
              _$LocalDatabase,
              $OfflineBookingsTable,
              OfflineBooking
            >,
          ),
          OfflineBooking,
          PrefetchHooks Function()
        > {
  $$OfflineBookingsTableTableManager(
    _$LocalDatabase db,
    $OfflineBookingsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OfflineBookingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OfflineBookingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OfflineBookingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> ticketNumber = const Value.absent(),
                Value<int> tripId = const Value.absent(),
                Value<String> firstName = const Value.absent(),
                Value<String> lastName = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String?> seatNumber = const Value.absent(),
                Value<String?> amount = const Value.absent(),
                Value<String?> paymentMethod = const Value.absent(),
                Value<String?> transactionRef = const Value.absent(),
                Value<DateTime> offlineCreatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OfflineBookingsCompanion(
                ticketNumber: ticketNumber,
                tripId: tripId,
                firstName: firstName,
                lastName: lastName,
                phone: phone,
                seatNumber: seatNumber,
                amount: amount,
                paymentMethod: paymentMethod,
                transactionRef: transactionRef,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String ticketNumber,
                required int tripId,
                required String firstName,
                required String lastName,
                required String phone,
                Value<String?> seatNumber = const Value.absent(),
                Value<String?> amount = const Value.absent(),
                Value<String?> paymentMethod = const Value.absent(),
                Value<String?> transactionRef = const Value.absent(),
                required DateTime offlineCreatedAt,
                Value<int> rowid = const Value.absent(),
              }) => OfflineBookingsCompanion.insert(
                ticketNumber: ticketNumber,
                tripId: tripId,
                firstName: firstName,
                lastName: lastName,
                phone: phone,
                seatNumber: seatNumber,
                amount: amount,
                paymentMethod: paymentMethod,
                transactionRef: transactionRef,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OfflineBookingsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $OfflineBookingsTable,
      OfflineBooking,
      $$OfflineBookingsTableFilterComposer,
      $$OfflineBookingsTableOrderingComposer,
      $$OfflineBookingsTableAnnotationComposer,
      $$OfflineBookingsTableCreateCompanionBuilder,
      $$OfflineBookingsTableUpdateCompanionBuilder,
      (
        OfflineBooking,
        BaseReferences<_$LocalDatabase, $OfflineBookingsTable, OfflineBooking>,
      ),
      OfflineBooking,
      PrefetchHooks Function()
    >;
typedef $$OfflineParcelsTableCreateCompanionBuilder =
    OfflineParcelsCompanion Function({
      required String trackingNumber,
      required int originCity,
      required int destinationCity,
      Value<int?> destinationStation,
      Value<int?> tripId,
      required String senderName,
      required String senderPhone,
      required String recipientName,
      required String recipientPhone,
      Value<String?> description,
      required String weightKg,
      required DateTime offlineCreatedAt,
      Value<int> rowid,
    });
typedef $$OfflineParcelsTableUpdateCompanionBuilder =
    OfflineParcelsCompanion Function({
      Value<String> trackingNumber,
      Value<int> originCity,
      Value<int> destinationCity,
      Value<int?> destinationStation,
      Value<int?> tripId,
      Value<String> senderName,
      Value<String> senderPhone,
      Value<String> recipientName,
      Value<String> recipientPhone,
      Value<String?> description,
      Value<String> weightKg,
      Value<DateTime> offlineCreatedAt,
      Value<int> rowid,
    });

class $$OfflineParcelsTableFilterComposer
    extends Composer<_$LocalDatabase, $OfflineParcelsTable> {
  $$OfflineParcelsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get originCity => $composableBuilder(
    column: $table.originCity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get destinationStation => $composableBuilder(
    column: $table.destinationStation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get senderName => $composableBuilder(
    column: $table.senderName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get senderPhone => $composableBuilder(
    column: $table.senderPhone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipientName => $composableBuilder(
    column: $table.recipientName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipientPhone => $composableBuilder(
    column: $table.recipientPhone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OfflineParcelsTableOrderingComposer
    extends Composer<_$LocalDatabase, $OfflineParcelsTable> {
  $$OfflineParcelsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get originCity => $composableBuilder(
    column: $table.originCity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get destinationStation => $composableBuilder(
    column: $table.destinationStation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get senderName => $composableBuilder(
    column: $table.senderName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get senderPhone => $composableBuilder(
    column: $table.senderPhone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipientName => $composableBuilder(
    column: $table.recipientName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipientPhone => $composableBuilder(
    column: $table.recipientPhone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OfflineParcelsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $OfflineParcelsTable> {
  $$OfflineParcelsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get originCity => $composableBuilder(
    column: $table.originCity,
    builder: (column) => column,
  );

  GeneratedColumn<int> get destinationCity => $composableBuilder(
    column: $table.destinationCity,
    builder: (column) => column,
  );

  GeneratedColumn<int> get destinationStation => $composableBuilder(
    column: $table.destinationStation,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tripId =>
      $composableBuilder(column: $table.tripId, builder: (column) => column);

  GeneratedColumn<String> get senderName => $composableBuilder(
    column: $table.senderName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get senderPhone => $composableBuilder(
    column: $table.senderPhone,
    builder: (column) => column,
  );

  GeneratedColumn<String> get recipientName => $composableBuilder(
    column: $table.recipientName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get recipientPhone => $composableBuilder(
    column: $table.recipientPhone,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get weightKg =>
      $composableBuilder(column: $table.weightKg, builder: (column) => column);

  GeneratedColumn<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => column,
  );
}

class $$OfflineParcelsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $OfflineParcelsTable,
          OfflineParcel,
          $$OfflineParcelsTableFilterComposer,
          $$OfflineParcelsTableOrderingComposer,
          $$OfflineParcelsTableAnnotationComposer,
          $$OfflineParcelsTableCreateCompanionBuilder,
          $$OfflineParcelsTableUpdateCompanionBuilder,
          (
            OfflineParcel,
            BaseReferences<
              _$LocalDatabase,
              $OfflineParcelsTable,
              OfflineParcel
            >,
          ),
          OfflineParcel,
          PrefetchHooks Function()
        > {
  $$OfflineParcelsTableTableManager(
    _$LocalDatabase db,
    $OfflineParcelsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OfflineParcelsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OfflineParcelsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OfflineParcelsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> trackingNumber = const Value.absent(),
                Value<int> originCity = const Value.absent(),
                Value<int> destinationCity = const Value.absent(),
                Value<int?> destinationStation = const Value.absent(),
                Value<int?> tripId = const Value.absent(),
                Value<String> senderName = const Value.absent(),
                Value<String> senderPhone = const Value.absent(),
                Value<String> recipientName = const Value.absent(),
                Value<String> recipientPhone = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String> weightKg = const Value.absent(),
                Value<DateTime> offlineCreatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OfflineParcelsCompanion(
                trackingNumber: trackingNumber,
                originCity: originCity,
                destinationCity: destinationCity,
                destinationStation: destinationStation,
                tripId: tripId,
                senderName: senderName,
                senderPhone: senderPhone,
                recipientName: recipientName,
                recipientPhone: recipientPhone,
                description: description,
                weightKg: weightKg,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String trackingNumber,
                required int originCity,
                required int destinationCity,
                Value<int?> destinationStation = const Value.absent(),
                Value<int?> tripId = const Value.absent(),
                required String senderName,
                required String senderPhone,
                required String recipientName,
                required String recipientPhone,
                Value<String?> description = const Value.absent(),
                required String weightKg,
                required DateTime offlineCreatedAt,
                Value<int> rowid = const Value.absent(),
              }) => OfflineParcelsCompanion.insert(
                trackingNumber: trackingNumber,
                originCity: originCity,
                destinationCity: destinationCity,
                destinationStation: destinationStation,
                tripId: tripId,
                senderName: senderName,
                senderPhone: senderPhone,
                recipientName: recipientName,
                recipientPhone: recipientPhone,
                description: description,
                weightKg: weightKg,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OfflineParcelsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $OfflineParcelsTable,
      OfflineParcel,
      $$OfflineParcelsTableFilterComposer,
      $$OfflineParcelsTableOrderingComposer,
      $$OfflineParcelsTableAnnotationComposer,
      $$OfflineParcelsTableCreateCompanionBuilder,
      $$OfflineParcelsTableUpdateCompanionBuilder,
      (
        OfflineParcel,
        BaseReferences<_$LocalDatabase, $OfflineParcelsTable, OfflineParcel>,
      ),
      OfflineParcel,
      PrefetchHooks Function()
    >;
typedef $$OfflineValidationsTableCreateCompanionBuilder =
    OfflineValidationsCompanion Function({
      required String ticketNumber,
      required DateTime offlineCreatedAt,
      Value<int> rowid,
    });
typedef $$OfflineValidationsTableUpdateCompanionBuilder =
    OfflineValidationsCompanion Function({
      Value<String> ticketNumber,
      Value<DateTime> offlineCreatedAt,
      Value<int> rowid,
    });

class $$OfflineValidationsTableFilterComposer
    extends Composer<_$LocalDatabase, $OfflineValidationsTable> {
  $$OfflineValidationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OfflineValidationsTableOrderingComposer
    extends Composer<_$LocalDatabase, $OfflineValidationsTable> {
  $$OfflineValidationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OfflineValidationsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $OfflineValidationsTable> {
  $$OfflineValidationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => column,
  );
}

class $$OfflineValidationsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $OfflineValidationsTable,
          OfflineValidation,
          $$OfflineValidationsTableFilterComposer,
          $$OfflineValidationsTableOrderingComposer,
          $$OfflineValidationsTableAnnotationComposer,
          $$OfflineValidationsTableCreateCompanionBuilder,
          $$OfflineValidationsTableUpdateCompanionBuilder,
          (
            OfflineValidation,
            BaseReferences<
              _$LocalDatabase,
              $OfflineValidationsTable,
              OfflineValidation
            >,
          ),
          OfflineValidation,
          PrefetchHooks Function()
        > {
  $$OfflineValidationsTableTableManager(
    _$LocalDatabase db,
    $OfflineValidationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OfflineValidationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OfflineValidationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OfflineValidationsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> ticketNumber = const Value.absent(),
                Value<DateTime> offlineCreatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OfflineValidationsCompanion(
                ticketNumber: ticketNumber,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String ticketNumber,
                required DateTime offlineCreatedAt,
                Value<int> rowid = const Value.absent(),
              }) => OfflineValidationsCompanion.insert(
                ticketNumber: ticketNumber,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OfflineValidationsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $OfflineValidationsTable,
      OfflineValidation,
      $$OfflineValidationsTableFilterComposer,
      $$OfflineValidationsTableOrderingComposer,
      $$OfflineValidationsTableAnnotationComposer,
      $$OfflineValidationsTableCreateCompanionBuilder,
      $$OfflineValidationsTableUpdateCompanionBuilder,
      (
        OfflineValidation,
        BaseReferences<
          _$LocalDatabase,
          $OfflineValidationsTable,
          OfflineValidation
        >,
      ),
      OfflineValidation,
      PrefetchHooks Function()
    >;
typedef $$OfflineParcelNotificationsTableCreateCompanionBuilder =
    OfflineParcelNotificationsCompanion Function({
      required String trackingNumber,
      required DateTime offlineCreatedAt,
      Value<int> rowid,
    });
typedef $$OfflineParcelNotificationsTableUpdateCompanionBuilder =
    OfflineParcelNotificationsCompanion Function({
      Value<String> trackingNumber,
      Value<DateTime> offlineCreatedAt,
      Value<int> rowid,
    });

class $$OfflineParcelNotificationsTableFilterComposer
    extends Composer<_$LocalDatabase, $OfflineParcelNotificationsTable> {
  $$OfflineParcelNotificationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OfflineParcelNotificationsTableOrderingComposer
    extends Composer<_$LocalDatabase, $OfflineParcelNotificationsTable> {
  $$OfflineParcelNotificationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OfflineParcelNotificationsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $OfflineParcelNotificationsTable> {
  $$OfflineParcelNotificationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get trackingNumber => $composableBuilder(
    column: $table.trackingNumber,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get offlineCreatedAt => $composableBuilder(
    column: $table.offlineCreatedAt,
    builder: (column) => column,
  );
}

class $$OfflineParcelNotificationsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $OfflineParcelNotificationsTable,
          OfflineParcelNotification,
          $$OfflineParcelNotificationsTableFilterComposer,
          $$OfflineParcelNotificationsTableOrderingComposer,
          $$OfflineParcelNotificationsTableAnnotationComposer,
          $$OfflineParcelNotificationsTableCreateCompanionBuilder,
          $$OfflineParcelNotificationsTableUpdateCompanionBuilder,
          (
            OfflineParcelNotification,
            BaseReferences<
              _$LocalDatabase,
              $OfflineParcelNotificationsTable,
              OfflineParcelNotification
            >,
          ),
          OfflineParcelNotification,
          PrefetchHooks Function()
        > {
  $$OfflineParcelNotificationsTableTableManager(
    _$LocalDatabase db,
    $OfflineParcelNotificationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OfflineParcelNotificationsTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$OfflineParcelNotificationsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$OfflineParcelNotificationsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> trackingNumber = const Value.absent(),
                Value<DateTime> offlineCreatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OfflineParcelNotificationsCompanion(
                trackingNumber: trackingNumber,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String trackingNumber,
                required DateTime offlineCreatedAt,
                Value<int> rowid = const Value.absent(),
              }) => OfflineParcelNotificationsCompanion.insert(
                trackingNumber: trackingNumber,
                offlineCreatedAt: offlineCreatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OfflineParcelNotificationsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $OfflineParcelNotificationsTable,
      OfflineParcelNotification,
      $$OfflineParcelNotificationsTableFilterComposer,
      $$OfflineParcelNotificationsTableOrderingComposer,
      $$OfflineParcelNotificationsTableAnnotationComposer,
      $$OfflineParcelNotificationsTableCreateCompanionBuilder,
      $$OfflineParcelNotificationsTableUpdateCompanionBuilder,
      (
        OfflineParcelNotification,
        BaseReferences<
          _$LocalDatabase,
          $OfflineParcelNotificationsTable,
          OfflineParcelNotification
        >,
      ),
      OfflineParcelNotification,
      PrefetchHooks Function()
    >;
typedef $$OutboxEntriesTableCreateCompanionBuilder =
    OutboxEntriesCompanion Function({
      Value<int> id,
      required OutboxEntity entity,
      required String reference,
      Value<OutboxStatus> status,
      Value<int> attempts,
      Value<String?> lastError,
      required DateTime createdAt,
      Value<DateTime?> syncedAt,
    });
typedef $$OutboxEntriesTableUpdateCompanionBuilder =
    OutboxEntriesCompanion Function({
      Value<int> id,
      Value<OutboxEntity> entity,
      Value<String> reference,
      Value<OutboxStatus> status,
      Value<int> attempts,
      Value<String?> lastError,
      Value<DateTime> createdAt,
      Value<DateTime?> syncedAt,
    });

class $$OutboxEntriesTableFilterComposer
    extends Composer<_$LocalDatabase, $OutboxEntriesTable> {
  $$OutboxEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<OutboxEntity, OutboxEntity, String>
  get entity => $composableBuilder(
    column: $table.entity,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get reference => $composableBuilder(
    column: $table.reference,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<OutboxStatus, OutboxStatus, String>
  get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get syncedAt => $composableBuilder(
    column: $table.syncedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OutboxEntriesTableOrderingComposer
    extends Composer<_$LocalDatabase, $OutboxEntriesTable> {
  $$OutboxEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entity => $composableBuilder(
    column: $table.entity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reference => $composableBuilder(
    column: $table.reference,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attempts => $composableBuilder(
    column: $table.attempts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get syncedAt => $composableBuilder(
    column: $table.syncedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OutboxEntriesTableAnnotationComposer
    extends Composer<_$LocalDatabase, $OutboxEntriesTable> {
  $$OutboxEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<OutboxEntity, String> get entity =>
      $composableBuilder(column: $table.entity, builder: (column) => column);

  GeneratedColumn<String> get reference =>
      $composableBuilder(column: $table.reference, builder: (column) => column);

  GeneratedColumnWithTypeConverter<OutboxStatus, String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get attempts =>
      $composableBuilder(column: $table.attempts, builder: (column) => column);

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get syncedAt =>
      $composableBuilder(column: $table.syncedAt, builder: (column) => column);
}

class $$OutboxEntriesTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $OutboxEntriesTable,
          OutboxEntry,
          $$OutboxEntriesTableFilterComposer,
          $$OutboxEntriesTableOrderingComposer,
          $$OutboxEntriesTableAnnotationComposer,
          $$OutboxEntriesTableCreateCompanionBuilder,
          $$OutboxEntriesTableUpdateCompanionBuilder,
          (
            OutboxEntry,
            BaseReferences<_$LocalDatabase, $OutboxEntriesTable, OutboxEntry>,
          ),
          OutboxEntry,
          PrefetchHooks Function()
        > {
  $$OutboxEntriesTableTableManager(
    _$LocalDatabase db,
    $OutboxEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OutboxEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OutboxEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OutboxEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<OutboxEntity> entity = const Value.absent(),
                Value<String> reference = const Value.absent(),
                Value<OutboxStatus> status = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> syncedAt = const Value.absent(),
              }) => OutboxEntriesCompanion(
                id: id,
                entity: entity,
                reference: reference,
                status: status,
                attempts: attempts,
                lastError: lastError,
                createdAt: createdAt,
                syncedAt: syncedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required OutboxEntity entity,
                required String reference,
                Value<OutboxStatus> status = const Value.absent(),
                Value<int> attempts = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> syncedAt = const Value.absent(),
              }) => OutboxEntriesCompanion.insert(
                id: id,
                entity: entity,
                reference: reference,
                status: status,
                attempts: attempts,
                lastError: lastError,
                createdAt: createdAt,
                syncedAt: syncedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OutboxEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $OutboxEntriesTable,
      OutboxEntry,
      $$OutboxEntriesTableFilterComposer,
      $$OutboxEntriesTableOrderingComposer,
      $$OutboxEntriesTableAnnotationComposer,
      $$OutboxEntriesTableCreateCompanionBuilder,
      $$OutboxEntriesTableUpdateCompanionBuilder,
      (
        OutboxEntry,
        BaseReferences<_$LocalDatabase, $OutboxEntriesTable, OutboxEntry>,
      ),
      OutboxEntry,
      PrefetchHooks Function()
    >;
typedef $$SyncStateEntriesTableCreateCompanionBuilder =
    SyncStateEntriesCompanion Function({
      Value<int> id,
      Value<DateTime?> lastOfflineDataAt,
      Value<DateTime?> lastSyncAt,
      Value<String?> lastSyncError,
    });
typedef $$SyncStateEntriesTableUpdateCompanionBuilder =
    SyncStateEntriesCompanion Function({
      Value<int> id,
      Value<DateTime?> lastOfflineDataAt,
      Value<DateTime?> lastSyncAt,
      Value<String?> lastSyncError,
    });

class $$SyncStateEntriesTableFilterComposer
    extends Composer<_$LocalDatabase, $SyncStateEntriesTable> {
  $$SyncStateEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastOfflineDataAt => $composableBuilder(
    column: $table.lastOfflineDataAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSyncAt => $composableBuilder(
    column: $table.lastSyncAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastSyncError => $composableBuilder(
    column: $table.lastSyncError,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncStateEntriesTableOrderingComposer
    extends Composer<_$LocalDatabase, $SyncStateEntriesTable> {
  $$SyncStateEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastOfflineDataAt => $composableBuilder(
    column: $table.lastOfflineDataAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSyncAt => $composableBuilder(
    column: $table.lastSyncAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastSyncError => $composableBuilder(
    column: $table.lastSyncError,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncStateEntriesTableAnnotationComposer
    extends Composer<_$LocalDatabase, $SyncStateEntriesTable> {
  $$SyncStateEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastOfflineDataAt => $composableBuilder(
    column: $table.lastOfflineDataAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSyncAt => $composableBuilder(
    column: $table.lastSyncAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lastSyncError => $composableBuilder(
    column: $table.lastSyncError,
    builder: (column) => column,
  );
}

class $$SyncStateEntriesTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $SyncStateEntriesTable,
          SyncStateEntry,
          $$SyncStateEntriesTableFilterComposer,
          $$SyncStateEntriesTableOrderingComposer,
          $$SyncStateEntriesTableAnnotationComposer,
          $$SyncStateEntriesTableCreateCompanionBuilder,
          $$SyncStateEntriesTableUpdateCompanionBuilder,
          (
            SyncStateEntry,
            BaseReferences<
              _$LocalDatabase,
              $SyncStateEntriesTable,
              SyncStateEntry
            >,
          ),
          SyncStateEntry,
          PrefetchHooks Function()
        > {
  $$SyncStateEntriesTableTableManager(
    _$LocalDatabase db,
    $SyncStateEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncStateEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncStateEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncStateEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime?> lastOfflineDataAt = const Value.absent(),
                Value<DateTime?> lastSyncAt = const Value.absent(),
                Value<String?> lastSyncError = const Value.absent(),
              }) => SyncStateEntriesCompanion(
                id: id,
                lastOfflineDataAt: lastOfflineDataAt,
                lastSyncAt: lastSyncAt,
                lastSyncError: lastSyncError,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime?> lastOfflineDataAt = const Value.absent(),
                Value<DateTime?> lastSyncAt = const Value.absent(),
                Value<String?> lastSyncError = const Value.absent(),
              }) => SyncStateEntriesCompanion.insert(
                id: id,
                lastOfflineDataAt: lastOfflineDataAt,
                lastSyncAt: lastSyncAt,
                lastSyncError: lastSyncError,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncStateEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $SyncStateEntriesTable,
      SyncStateEntry,
      $$SyncStateEntriesTableFilterComposer,
      $$SyncStateEntriesTableOrderingComposer,
      $$SyncStateEntriesTableAnnotationComposer,
      $$SyncStateEntriesTableCreateCompanionBuilder,
      $$SyncStateEntriesTableUpdateCompanionBuilder,
      (
        SyncStateEntry,
        BaseReferences<_$LocalDatabase, $SyncStateEntriesTable, SyncStateEntry>,
      ),
      SyncStateEntry,
      PrefetchHooks Function()
    >;
typedef $$SessionProfilesTableCreateCompanionBuilder =
    SessionProfilesCompanion Function({
      Value<int> id,
      required String prenom,
      required String nom,
      required String phone,
      Value<String?> email,
      required String role,
      required DateTime cachedAt,
    });
typedef $$SessionProfilesTableUpdateCompanionBuilder =
    SessionProfilesCompanion Function({
      Value<int> id,
      Value<String> prenom,
      Value<String> nom,
      Value<String> phone,
      Value<String?> email,
      Value<String> role,
      Value<DateTime> cachedAt,
    });

class $$SessionProfilesTableFilterComposer
    extends Composer<_$LocalDatabase, $SessionProfilesTable> {
  $$SessionProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get prenom => $composableBuilder(
    column: $table.prenom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nom => $composableBuilder(
    column: $table.nom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SessionProfilesTableOrderingComposer
    extends Composer<_$LocalDatabase, $SessionProfilesTable> {
  $$SessionProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get prenom => $composableBuilder(
    column: $table.prenom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nom => $composableBuilder(
    column: $table.nom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SessionProfilesTableAnnotationComposer
    extends Composer<_$LocalDatabase, $SessionProfilesTable> {
  $$SessionProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get prenom =>
      $composableBuilder(column: $table.prenom, builder: (column) => column);

  GeneratedColumn<String> get nom =>
      $composableBuilder(column: $table.nom, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$SessionProfilesTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $SessionProfilesTable,
          SessionProfile,
          $$SessionProfilesTableFilterComposer,
          $$SessionProfilesTableOrderingComposer,
          $$SessionProfilesTableAnnotationComposer,
          $$SessionProfilesTableCreateCompanionBuilder,
          $$SessionProfilesTableUpdateCompanionBuilder,
          (
            SessionProfile,
            BaseReferences<
              _$LocalDatabase,
              $SessionProfilesTable,
              SessionProfile
            >,
          ),
          SessionProfile,
          PrefetchHooks Function()
        > {
  $$SessionProfilesTableTableManager(
    _$LocalDatabase db,
    $SessionProfilesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SessionProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SessionProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SessionProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> prenom = const Value.absent(),
                Value<String> nom = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => SessionProfilesCompanion(
                id: id,
                prenom: prenom,
                nom: nom,
                phone: phone,
                email: email,
                role: role,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String prenom,
                required String nom,
                required String phone,
                Value<String?> email = const Value.absent(),
                required String role,
                required DateTime cachedAt,
              }) => SessionProfilesCompanion.insert(
                id: id,
                prenom: prenom,
                nom: nom,
                phone: phone,
                email: email,
                role: role,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SessionProfilesTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $SessionProfilesTable,
      SessionProfile,
      $$SessionProfilesTableFilterComposer,
      $$SessionProfilesTableOrderingComposer,
      $$SessionProfilesTableAnnotationComposer,
      $$SessionProfilesTableCreateCompanionBuilder,
      $$SessionProfilesTableUpdateCompanionBuilder,
      (
        SessionProfile,
        BaseReferences<_$LocalDatabase, $SessionProfilesTable, SessionProfile>,
      ),
      SessionProfile,
      PrefetchHooks Function()
    >;
typedef $$BoardedTicketsTableCreateCompanionBuilder =
    BoardedTicketsCompanion Function({
      required String ticketNumber,
      required LocalBoardingMethod method,
      required DateTime boardedAt,
      Value<bool> isOffline,
      Value<int> rowid,
    });
typedef $$BoardedTicketsTableUpdateCompanionBuilder =
    BoardedTicketsCompanion Function({
      Value<String> ticketNumber,
      Value<LocalBoardingMethod> method,
      Value<DateTime> boardedAt,
      Value<bool> isOffline,
      Value<int> rowid,
    });

class $$BoardedTicketsTableFilterComposer
    extends Composer<_$LocalDatabase, $BoardedTicketsTable> {
  $$BoardedTicketsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<
    LocalBoardingMethod,
    LocalBoardingMethod,
    String
  >
  get method => $composableBuilder(
    column: $table.method,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<DateTime> get boardedAt => $composableBuilder(
    column: $table.boardedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isOffline => $composableBuilder(
    column: $table.isOffline,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BoardedTicketsTableOrderingComposer
    extends Composer<_$LocalDatabase, $BoardedTicketsTable> {
  $$BoardedTicketsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get method => $composableBuilder(
    column: $table.method,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get boardedAt => $composableBuilder(
    column: $table.boardedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isOffline => $composableBuilder(
    column: $table.isOffline,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BoardedTicketsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $BoardedTicketsTable> {
  $$BoardedTicketsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get ticketNumber => $composableBuilder(
    column: $table.ticketNumber,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<LocalBoardingMethod, String> get method =>
      $composableBuilder(column: $table.method, builder: (column) => column);

  GeneratedColumn<DateTime> get boardedAt =>
      $composableBuilder(column: $table.boardedAt, builder: (column) => column);

  GeneratedColumn<bool> get isOffline =>
      $composableBuilder(column: $table.isOffline, builder: (column) => column);
}

class $$BoardedTicketsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $BoardedTicketsTable,
          BoardedTicket,
          $$BoardedTicketsTableFilterComposer,
          $$BoardedTicketsTableOrderingComposer,
          $$BoardedTicketsTableAnnotationComposer,
          $$BoardedTicketsTableCreateCompanionBuilder,
          $$BoardedTicketsTableUpdateCompanionBuilder,
          (
            BoardedTicket,
            BaseReferences<
              _$LocalDatabase,
              $BoardedTicketsTable,
              BoardedTicket
            >,
          ),
          BoardedTicket,
          PrefetchHooks Function()
        > {
  $$BoardedTicketsTableTableManager(
    _$LocalDatabase db,
    $BoardedTicketsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BoardedTicketsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BoardedTicketsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BoardedTicketsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> ticketNumber = const Value.absent(),
                Value<LocalBoardingMethod> method = const Value.absent(),
                Value<DateTime> boardedAt = const Value.absent(),
                Value<bool> isOffline = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BoardedTicketsCompanion(
                ticketNumber: ticketNumber,
                method: method,
                boardedAt: boardedAt,
                isOffline: isOffline,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String ticketNumber,
                required LocalBoardingMethod method,
                required DateTime boardedAt,
                Value<bool> isOffline = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BoardedTicketsCompanion.insert(
                ticketNumber: ticketNumber,
                method: method,
                boardedAt: boardedAt,
                isOffline: isOffline,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BoardedTicketsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $BoardedTicketsTable,
      BoardedTicket,
      $$BoardedTicketsTableFilterComposer,
      $$BoardedTicketsTableOrderingComposer,
      $$BoardedTicketsTableAnnotationComposer,
      $$BoardedTicketsTableCreateCompanionBuilder,
      $$BoardedTicketsTableUpdateCompanionBuilder,
      (
        BoardedTicket,
        BaseReferences<_$LocalDatabase, $BoardedTicketsTable, BoardedTicket>,
      ),
      BoardedTicket,
      PrefetchHooks Function()
    >;
typedef $$ValidatedTripsTableCreateCompanionBuilder =
    ValidatedTripsCompanion Function({
      Value<int> tripId,
      required DateTime validatedAt,
    });
typedef $$ValidatedTripsTableUpdateCompanionBuilder =
    ValidatedTripsCompanion Function({
      Value<int> tripId,
      Value<DateTime> validatedAt,
    });

class $$ValidatedTripsTableFilterComposer
    extends Composer<_$LocalDatabase, $ValidatedTripsTable> {
  $$ValidatedTripsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get validatedAt => $composableBuilder(
    column: $table.validatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ValidatedTripsTableOrderingComposer
    extends Composer<_$LocalDatabase, $ValidatedTripsTable> {
  $$ValidatedTripsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get tripId => $composableBuilder(
    column: $table.tripId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get validatedAt => $composableBuilder(
    column: $table.validatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ValidatedTripsTableAnnotationComposer
    extends Composer<_$LocalDatabase, $ValidatedTripsTable> {
  $$ValidatedTripsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get tripId =>
      $composableBuilder(column: $table.tripId, builder: (column) => column);

  GeneratedColumn<DateTime> get validatedAt => $composableBuilder(
    column: $table.validatedAt,
    builder: (column) => column,
  );
}

class $$ValidatedTripsTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $ValidatedTripsTable,
          ValidatedTrip,
          $$ValidatedTripsTableFilterComposer,
          $$ValidatedTripsTableOrderingComposer,
          $$ValidatedTripsTableAnnotationComposer,
          $$ValidatedTripsTableCreateCompanionBuilder,
          $$ValidatedTripsTableUpdateCompanionBuilder,
          (
            ValidatedTrip,
            BaseReferences<
              _$LocalDatabase,
              $ValidatedTripsTable,
              ValidatedTrip
            >,
          ),
          ValidatedTrip,
          PrefetchHooks Function()
        > {
  $$ValidatedTripsTableTableManager(
    _$LocalDatabase db,
    $ValidatedTripsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ValidatedTripsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ValidatedTripsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ValidatedTripsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> tripId = const Value.absent(),
                Value<DateTime> validatedAt = const Value.absent(),
              }) => ValidatedTripsCompanion(
                tripId: tripId,
                validatedAt: validatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> tripId = const Value.absent(),
                required DateTime validatedAt,
              }) => ValidatedTripsCompanion.insert(
                tripId: tripId,
                validatedAt: validatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ValidatedTripsTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $ValidatedTripsTable,
      ValidatedTrip,
      $$ValidatedTripsTableFilterComposer,
      $$ValidatedTripsTableOrderingComposer,
      $$ValidatedTripsTableAnnotationComposer,
      $$ValidatedTripsTableCreateCompanionBuilder,
      $$ValidatedTripsTableUpdateCompanionBuilder,
      (
        ValidatedTrip,
        BaseReferences<_$LocalDatabase, $ValidatedTripsTable, ValidatedTrip>,
      ),
      ValidatedTrip,
      PrefetchHooks Function()
    >;

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$CachedTripsTableTableManager get cachedTrips =>
      $$CachedTripsTableTableManager(_db, _db.cachedTrips);
  $$CachedBookingsTableTableManager get cachedBookings =>
      $$CachedBookingsTableTableManager(_db, _db.cachedBookings);
  $$CachedParcelArrivalsTableTableManager get cachedParcelArrivals =>
      $$CachedParcelArrivalsTableTableManager(_db, _db.cachedParcelArrivals);
  $$CachedAgentDeparturesTableTableManager get cachedAgentDepartures =>
      $$CachedAgentDeparturesTableTableManager(_db, _db.cachedAgentDepartures);
  $$CachedAgentAlertsTableTableManager get cachedAgentAlerts =>
      $$CachedAgentAlertsTableTableManager(_db, _db.cachedAgentAlerts);
  $$OfflineBookingsTableTableManager get offlineBookings =>
      $$OfflineBookingsTableTableManager(_db, _db.offlineBookings);
  $$OfflineParcelsTableTableManager get offlineParcels =>
      $$OfflineParcelsTableTableManager(_db, _db.offlineParcels);
  $$OfflineValidationsTableTableManager get offlineValidations =>
      $$OfflineValidationsTableTableManager(_db, _db.offlineValidations);
  $$OfflineParcelNotificationsTableTableManager
  get offlineParcelNotifications =>
      $$OfflineParcelNotificationsTableTableManager(
        _db,
        _db.offlineParcelNotifications,
      );
  $$OutboxEntriesTableTableManager get outboxEntries =>
      $$OutboxEntriesTableTableManager(_db, _db.outboxEntries);
  $$SyncStateEntriesTableTableManager get syncStateEntries =>
      $$SyncStateEntriesTableTableManager(_db, _db.syncStateEntries);
  $$SessionProfilesTableTableManager get sessionProfiles =>
      $$SessionProfilesTableTableManager(_db, _db.sessionProfiles);
  $$BoardedTicketsTableTableManager get boardedTickets =>
      $$BoardedTicketsTableTableManager(_db, _db.boardedTickets);
  $$ValidatedTripsTableTableManager get validatedTrips =>
      $$ValidatedTripsTableTableManager(_db, _db.validatedTrips);
}
