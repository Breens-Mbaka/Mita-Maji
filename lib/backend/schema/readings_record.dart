import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'readings_record.g.dart';

abstract class ReadingsRecord
    implements Built<ReadingsRecord, ReadingsRecordBuilder> {
  static Serializer<ReadingsRecord> get serializer =>
      _$readingsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'meter_id')
  DocumentReference get meterId;

  @nullable
  @BuiltValueField(wireName: 'current_reading')
  String get currentReading;

  @nullable
  @BuiltValueField(wireName: 'date_of_recording')
  Timestamp get dateOfRecording;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReadingsRecordBuilder builder) =>
      builder..currentReading = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Readings');

  static Stream<ReadingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReadingsRecord._();
  factory ReadingsRecord([void Function(ReadingsRecordBuilder) updates]) =
      _$ReadingsRecord;
}

Map<String, dynamic> createReadingsRecordData({
  DocumentReference meterId,
  String currentReading,
  Timestamp dateOfRecording,
}) =>
    serializers.serializeWith(
        ReadingsRecord.serializer,
        ReadingsRecord((r) => r
          ..meterId = meterId
          ..currentReading = currentReading
          ..dateOfRecording = dateOfRecording));

ReadingsRecord get dummyReadingsRecord {
  final builder = ReadingsRecordBuilder()
    ..currentReading = dummyString
    ..dateOfRecording = dummyTimestamp;
  return builder.build();
}

List<ReadingsRecord> createDummyReadingsRecord({int count}) =>
    List.generate(count, (_) => dummyReadingsRecord);
