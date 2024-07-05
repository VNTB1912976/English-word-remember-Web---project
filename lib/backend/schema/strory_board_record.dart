import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StroryBoardRecord extends FirestoreRecord {
  StroryBoardRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "voca1" field.
  String? _voca1;
  String get voca1 => _voca1 ?? '';
  bool hasVoca1() => _voca1 != null;

  // "count1" field.
  String? _count1;
  String get count1 => _count1 ?? '';
  bool hasCount1() => _count1 != null;

  // "note1" field.
  String? _note1;
  String get note1 => _note1 ?? '';
  bool hasNote1() => _note1 != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _voca1 = snapshotData['voca1'] as String?;
    _count1 = snapshotData['count1'] as String?;
    _note1 = snapshotData['note1'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stroryBoard');

  static Stream<StroryBoardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StroryBoardRecord.fromSnapshot(s));

  static Future<StroryBoardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StroryBoardRecord.fromSnapshot(s));

  static StroryBoardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StroryBoardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StroryBoardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StroryBoardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StroryBoardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StroryBoardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStroryBoardRecordData({
  String? uid,
  String? voca1,
  String? count1,
  String? note1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'voca1': voca1,
      'count1': count1,
      'note1': note1,
    }.withoutNulls,
  );

  return firestoreData;
}

class StroryBoardRecordDocumentEquality implements Equality<StroryBoardRecord> {
  const StroryBoardRecordDocumentEquality();

  @override
  bool equals(StroryBoardRecord? e1, StroryBoardRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.voca1 == e2?.voca1 &&
        e1?.count1 == e2?.count1 &&
        e1?.note1 == e2?.note1;
  }

  @override
  int hash(StroryBoardRecord? e) =>
      const ListEquality().hash([e?.uid, e?.voca1, e?.count1, e?.note1]);

  @override
  bool isValidKey(Object? o) => o is StroryBoardRecord;
}
