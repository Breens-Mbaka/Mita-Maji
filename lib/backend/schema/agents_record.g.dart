// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AgentsRecord> _$agentsRecordSerializer =
    new _$AgentsRecordSerializer();

class _$AgentsRecordSerializer implements StructuredSerializer<AgentsRecord> {
  @override
  final Iterable<Type> types = const [AgentsRecord, _$AgentsRecord];
  @override
  final String wireName = 'AgentsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AgentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  AgentsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$AgentsRecord extends AgentsRecord {
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final DocumentReference reference;

  factory _$AgentsRecord([void Function(AgentsRecordBuilder) updates]) =>
      (new AgentsRecordBuilder()..update(updates)).build();

  _$AgentsRecord._({this.name, this.phoneNumber, this.email, this.reference})
      : super._();

  @override
  AgentsRecord rebuild(void Function(AgentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentsRecordBuilder toBuilder() => new AgentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentsRecord &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), phoneNumber.hashCode), email.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AgentsRecord')
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('reference', reference))
        .toString();
  }
}

class AgentsRecordBuilder
    implements Builder<AgentsRecord, AgentsRecordBuilder> {
  _$AgentsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  AgentsRecordBuilder() {
    AgentsRecord._initializeBuilder(this);
  }

  AgentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AgentsRecord;
  }

  @override
  void update(void Function(AgentsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AgentsRecord build() {
    final _$result = _$v ??
        new _$AgentsRecord._(
            name: name,
            phoneNumber: phoneNumber,
            email: email,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
