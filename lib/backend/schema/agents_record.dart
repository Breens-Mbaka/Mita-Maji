import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'agents_record.g.dart';

abstract class AgentsRecord
    implements Built<AgentsRecord, AgentsRecordBuilder> {
  static Serializer<AgentsRecord> get serializer => _$agentsRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AgentsRecordBuilder builder) => builder
    ..name = ''
    ..phoneNumber = ''
    ..email = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Agents');

  static Stream<AgentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AgentsRecord._();
  factory AgentsRecord([void Function(AgentsRecordBuilder) updates]) =
      _$AgentsRecord;
}

Map<String, dynamic> createAgentsRecordData({
  String name,
  String phoneNumber,
  String email,
}) =>
    serializers.serializeWith(
        AgentsRecord.serializer,
        AgentsRecord((a) => a
          ..name = name
          ..phoneNumber = phoneNumber
          ..email = email));

AgentsRecord get dummyAgentsRecord {
  final builder = AgentsRecordBuilder()
    ..name = dummyString
    ..phoneNumber = dummyString
    ..email = dummyString;
  return builder.build();
}

List<AgentsRecord> createDummyAgentsRecord({int count}) =>
    List.generate(count, (_) => dummyAgentsRecord);
