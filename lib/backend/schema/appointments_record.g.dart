// @dart=2.9

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppointmentsRecord> _$appointmentsRecordSerializer =
    new _$AppointmentsRecordSerializer();

class _$AppointmentsRecordSerializer
    implements StructuredSerializer<AppointmentsRecord> {
  @override
  final Iterable<Type> types = const [AppointmentsRecord, _$AppointmentsRecord];
  @override
  final String wireName = 'AppointmentsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AppointmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.appointmentName;
    if (value != null) {
      result
        ..add('appointmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentDescription;
    if (value != null) {
      result
        ..add('appointmentDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentPerson;
    if (value != null) {
      result
        ..add('appointmentPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.appointmentTime;
    if (value != null) {
      result
        ..add('appointmentTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.appointmentType;
    if (value != null) {
      result
        ..add('appointmentType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentEmail;
    if (value != null) {
      result
        ..add('appointmentEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AppointmentsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'appointmentName':
          result.appointmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'appointmentDescription':
          result.appointmentDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'appointmentPerson':
          result.appointmentPerson = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'appointmentTime':
          result.appointmentTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'appointmentType':
          result.appointmentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'appointmentEmail':
          result.appointmentEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentsRecord extends AppointmentsRecord {
  @override
  final String appointmentName;
  @override
  final String appointmentDescription;
  @override
  final DocumentReference<Object> appointmentPerson;
  @override
  final DateTime appointmentTime;
  @override
  final String appointmentType;
  @override
  final String appointmentEmail;
  @override
  final DocumentReference<Object> reference;

  factory _$AppointmentsRecord(
          [void Function(AppointmentsRecordBuilder) updates]) =>
      (new AppointmentsRecordBuilder()..update(updates)).build();

  _$AppointmentsRecord._(
      {this.appointmentName,
      this.appointmentDescription,
      this.appointmentPerson,
      this.appointmentTime,
      this.appointmentType,
      this.appointmentEmail,
      this.reference})
      : super._();

  @override
  AppointmentsRecord rebuild(
          void Function(AppointmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentsRecordBuilder toBuilder() =>
      new AppointmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentsRecord &&
        appointmentName == other.appointmentName &&
        appointmentDescription == other.appointmentDescription &&
        appointmentPerson == other.appointmentPerson &&
        appointmentTime == other.appointmentTime &&
        appointmentType == other.appointmentType &&
        appointmentEmail == other.appointmentEmail &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, appointmentName.hashCode),
                            appointmentDescription.hashCode),
                        appointmentPerson.hashCode),
                    appointmentTime.hashCode),
                appointmentType.hashCode),
            appointmentEmail.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppointmentsRecord')
          ..add('appointmentName', appointmentName)
          ..add('appointmentDescription', appointmentDescription)
          ..add('appointmentPerson', appointmentPerson)
          ..add('appointmentTime', appointmentTime)
          ..add('appointmentType', appointmentType)
          ..add('appointmentEmail', appointmentEmail)
          ..add('reference', reference))
        .toString();
  }
}

class AppointmentsRecordBuilder
    implements Builder<AppointmentsRecord, AppointmentsRecordBuilder> {
  _$AppointmentsRecord _$v;

  String _appointmentName;
  String get appointmentName => _$this._appointmentName;
  set appointmentName(String appointmentName) =>
      _$this._appointmentName = appointmentName;

  String _appointmentDescription;
  String get appointmentDescription => _$this._appointmentDescription;
  set appointmentDescription(String appointmentDescription) =>
      _$this._appointmentDescription = appointmentDescription;

  DocumentReference<Object> _appointmentPerson;
  DocumentReference<Object> get appointmentPerson => _$this._appointmentPerson;
  set appointmentPerson(DocumentReference<Object> appointmentPerson) =>
      _$this._appointmentPerson = appointmentPerson;

  DateTime _appointmentTime;
  DateTime get appointmentTime => _$this._appointmentTime;
  set appointmentTime(DateTime appointmentTime) =>
      _$this._appointmentTime = appointmentTime;

  String _appointmentType;
  String get appointmentType => _$this._appointmentType;
  set appointmentType(String appointmentType) =>
      _$this._appointmentType = appointmentType;

  String _appointmentEmail;
  String get appointmentEmail => _$this._appointmentEmail;
  set appointmentEmail(String appointmentEmail) =>
      _$this._appointmentEmail = appointmentEmail;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AppointmentsRecordBuilder() {
    AppointmentsRecord._initializeBuilder(this);
  }

  AppointmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appointmentName = $v.appointmentName;
      _appointmentDescription = $v.appointmentDescription;
      _appointmentPerson = $v.appointmentPerson;
      _appointmentTime = $v.appointmentTime;
      _appointmentType = $v.appointmentType;
      _appointmentEmail = $v.appointmentEmail;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentsRecord;
  }

  @override
  void update(void Function(AppointmentsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppointmentsRecord build() {
    final _$result = _$v ??
        new _$AppointmentsRecord._(
            appointmentName: appointmentName,
            appointmentDescription: appointmentDescription,
            appointmentPerson: appointmentPerson,
            appointmentTime: appointmentTime,
            appointmentType: appointmentType,
            appointmentEmail: appointmentEmail,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
