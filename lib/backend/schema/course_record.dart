import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseRecord extends FirestoreRecord {
  CourseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ms" field.
  String? _ms;
  String get ms => _ms ?? '';
  bool hasMs() => _ms != null;

  // "vocaName" field.
  String? _vocaName;
  String get vocaName => _vocaName ?? '';
  bool hasVocaName() => _vocaName != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _ms = snapshotData['ms'] as String?;
    _vocaName = snapshotData['vocaName'] as String?;
    _price = snapshotData['price'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('course');

  static Stream<CourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseRecord.fromSnapshot(s));

  static Future<CourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseRecord.fromSnapshot(s));

  static CourseRecord fromSnapshot(DocumentSnapshot snapshot) => CourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseRecordData({
  String? ms,
  String? vocaName,
  String? price,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ms': ms,
      'vocaName': vocaName,
      'price': price,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseRecordDocumentEquality implements Equality<CourseRecord> {
  const CourseRecordDocumentEquality();

  @override
  bool equals(CourseRecord? e1, CourseRecord? e2) {
    return e1?.ms == e2?.ms &&
        e1?.vocaName == e2?.vocaName &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description;
  }

  @override
  int hash(CourseRecord? e) =>
      const ListEquality().hash([e?.ms, e?.vocaName, e?.price, e?.description]);

  @override
  bool isValidKey(Object? o) => o is CourseRecord;
}
