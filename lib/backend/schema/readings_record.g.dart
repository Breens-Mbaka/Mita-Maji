// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'readings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReadingsRecord> _$readingsRecordSerializer =
    new _$ReadingsRecordSerializer();

class _$ReadingsRecordSerializer
    implements StructuredSerializer<ReadingsRecord> {
  @override
  final Iterable<Type> types = const [ReadingsRecord, _$ReadingsRecord];
  @override
  final String wireName = 'ReadingsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ReadingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.meterId;
    if (value != null) {
      result
        ..add('meter_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.currentReading;
    if (value != null) {
      result
        ..add('current_reading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfRecording;
    if (value != null) {
      result
        ..add('date_of_recording')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Timestamp)));
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
  ReadingsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReadingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'meter_id':
          result.meterId = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'current_reading':
          result.currentReading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_of_recording':
          result.dateOfRecording = serializers.deserialize(value,
              specifiedType: const FullType(Timestamp)) as Timestamp;
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

class _$ReadingsRecord extends ReadingsRecord {
  @override
  final DocumentReference meterId;
  @override
  final String currentReading;
  @override
  final Timestamp dateOfRecording;
  @override
  final DocumentReference reference;

  factory _$ReadingsRecord([void Function(ReadingsRecordBuilder) updates]) =>
      (new ReadingsRecordBuilder()..update(updates)).build();

  _$ReadingsRecord._(
      {this.meterId, this.currentReading, this.dateOfRecording, this.reference})
      : super._();

  @override
  ReadingsRecord rebuild(void Function(ReadingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReadingsRecordBuilder toBuilder() =>
      new ReadingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadingsRecord &&
        meterId == other.meterId &&
        currentReading == other.currentReading &&
        dateOfRecording == other.dateOfRecording &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, meterId.hashCode), currentReading.hashCode),
            dateOfRecording.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReadingsRecord')
          ..add('meterId', meterId)
          ..add('currentReading', currentReading)
          ..add('dateOfRecording', dateOfRecording)
          ..add('reference', reference))
        .toString();
  }
}

class ReadingsRecordBuilder
    implements Builder<ReadingsRecord, ReadingsRecordBuilder> {
  _$ReadingsRecord _$v;

  DocumentReference _meterId;
  DocumentReference get meterId => _$this._meterId;
  set meterId(DocumentReference meterId) => _$this._meterId = meterId;

  String _currentReading;
  String get currentReading => _$this._currentReading;
  set currentReading(String currentReading) =>
      _$this._currentReading = currentReading;

  Timestamp _dateOfRecording;
  Timestamp get dateOfRecording => _$this._dateOfRecording;
  set dateOfRecording(Timestamp dateOfRecording) =>
      _$this._dateOfRecording = dateOfRecording;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  ReadingsRecordBuilder() {
    ReadingsRecord._initializeBuilder(this);
  }

  ReadingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meterId = $v.meterId;
      _currentReading = $v.currentReading;
      _dateOfRecording = $v.dateOfRecording;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReadingsRecord;
  }

  @override
  void update(void Function(ReadingsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReadingsRecord build() {
    final _$result = _$v ??
        new _$ReadingsRecord._(
            meterId: meterId,
            currentReading: currentReading,
            dateOfRecording: dateOfRecording,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
