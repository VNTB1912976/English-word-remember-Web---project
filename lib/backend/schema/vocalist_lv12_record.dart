import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VocalistLv12Record extends FirestoreRecord {
  VocalistLv12Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "num" field.
  int? _num;
  int get num => _num ?? 0;
  bool hasNum() => _num != null;

  // "english" field.
  String? _english;
  String get english => _english ?? '';
  bool hasEnglish() => _english != null;

  // "korean" field.
  String? _korean;
  String get korean => _korean ?? '';
  bool hasKorean() => _korean != null;

  void _initializeFields() {
    _num = castToType<int>(snapshotData['num']);
    _english = snapshotData['english'] as String?;
    _korean = snapshotData['korean'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vocalist_lv12');

  static Stream<VocalistLv12Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VocalistLv12Record.fromSnapshot(s));

  static Future<VocalistLv12Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VocalistLv12Record.fromSnapshot(s));

  static VocalistLv12Record fromSnapshot(DocumentSnapshot snapshot) =>
      VocalistLv12Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VocalistLv12Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VocalistLv12Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VocalistLv12Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VocalistLv12Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVocalistLv12RecordData({
  int? num,
  String? english,
  String? korean,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'num': num,
      'english': english,
      'korean': korean,
    }.withoutNulls,
  );

  return firestoreData;
}

class VocalistLv12RecordDocumentEquality
    implements Equality<VocalistLv12Record> {
  const VocalistLv12RecordDocumentEquality();

  @override
  bool equals(VocalistLv12Record? e1, VocalistLv12Record? e2) {
    return e1?.num == e2?.num &&
        e1?.english == e2?.english &&
        e1?.korean == e2?.korean;
  }

  @override
  int hash(VocalistLv12Record? e) =>
      const ListEquality().hash([e?.num, e?.english, e?.korean]);

  @override
  bool isValidKey(Object? o) => o is VocalistLv12Record;
}
