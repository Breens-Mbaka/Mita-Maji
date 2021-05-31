import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'meters_record.g.dart';

abstract class MetersRecord
    implements Built<MetersRecord, MetersRecordBuilder> {
  static Serializer<MetersRecord> get serializer => _$metersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'opening_reading')
  String get openingReading;

  @nullable
  @BuiltValueField(wireName: 'customer_name')
  String get customerName;

  @nullable
  @BuiltValueField(wireName: 'customer_phone_number')
  String get customerPhoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MetersRecordBuilder builder) => builder
    ..openingReading = ''
    ..customerName = ''
    ..customerPhoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Meters');

  static Stream<MetersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MetersRecord._();
  factory MetersRecord([void Function(MetersRecordBuilder) updates]) =
      _$MetersRecord;
}

Map<String, dynamic> createMetersRecordData({
  String openingReading,
  String customerName,
  String customerPhoneNumber,
}) =>
    serializers.serializeWith(
        MetersRecord.serializer,
        MetersRecord((m) => m
          ..openingReading = openingReading
          ..customerName = customerName
          ..customerPhoneNumber = customerPhoneNumber));

MetersRecord get dummyMetersRecord {
  final builder = MetersRecordBuilder()
    ..openingReading = dummyString
    ..customerName = dummyString
    ..customerPhoneNumber = dummyString;
  return builder.build();
}

List<MetersRecord> createDummyMetersRecord({int count}) =>
    List.generate(count, (_) => dummyMetersRecord);
