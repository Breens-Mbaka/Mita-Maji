// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meters_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MetersRecord> _$metersRecordSerializer =
    new _$MetersRecordSerializer();

class _$MetersRecordSerializer implements StructuredSerializer<MetersRecord> {
  @override
  final Iterable<Type> types = const [MetersRecord, _$MetersRecord];
  @override
  final String wireName = 'MetersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MetersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.openingReading;
    if (value != null) {
      result
        ..add('opening_reading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerName;
    if (value != null) {
      result
        ..add('customer_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerPhoneNumber;
    if (value != null) {
      result
        ..add('customer_phone_number')
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
  MetersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'opening_reading':
          result.openingReading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_name':
          result.customerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_phone_number':
          result.customerPhoneNumber = serializers.deserialize(value,
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

class _$MetersRecord extends MetersRecord {
  @override
  final String openingReading;
  @override
  final String customerName;
  @override
  final String customerPhoneNumber;
  @override
  final DocumentReference reference;

  factory _$MetersRecord([void Function(MetersRecordBuilder) updates]) =>
      (new MetersRecordBuilder()..update(updates)).build();

  _$MetersRecord._(
      {this.openingReading,
      this.customerName,
      this.customerPhoneNumber,
      this.reference})
      : super._();

  @override
  MetersRecord rebuild(void Function(MetersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetersRecordBuilder toBuilder() => new MetersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetersRecord &&
        openingReading == other.openingReading &&
        customerName == other.customerName &&
        customerPhoneNumber == other.customerPhoneNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, openingReading.hashCode), customerName.hashCode),
            customerPhoneNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MetersRecord')
          ..add('openingReading', openingReading)
          ..add('customerName', customerName)
          ..add('customerPhoneNumber', customerPhoneNumber)
          ..add('reference', reference))
        .toString();
  }
}

class MetersRecordBuilder
    implements Builder<MetersRecord, MetersRecordBuilder> {
  _$MetersRecord _$v;

  String _openingReading;
  String get openingReading => _$this._openingReading;
  set openingReading(String openingReading) =>
      _$this._openingReading = openingReading;

  String _customerName;
  String get customerName => _$this._customerName;
  set customerName(String customerName) => _$this._customerName = customerName;

  String _customerPhoneNumber;
  String get customerPhoneNumber => _$this._customerPhoneNumber;
  set customerPhoneNumber(String customerPhoneNumber) =>
      _$this._customerPhoneNumber = customerPhoneNumber;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  MetersRecordBuilder() {
    MetersRecord._initializeBuilder(this);
  }

  MetersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openingReading = $v.openingReading;
      _customerName = $v.customerName;
      _customerPhoneNumber = $v.customerPhoneNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetersRecord;
  }

  @override
  void update(void Function(MetersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MetersRecord build() {
    final _$result = _$v ??
        new _$MetersRecord._(
            openingReading: openingReading,
            customerName: customerName,
            customerPhoneNumber: customerPhoneNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
