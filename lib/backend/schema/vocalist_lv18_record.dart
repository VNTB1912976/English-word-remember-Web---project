import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VocalistLv18Record extends FirestoreRecord {
  VocalistLv18Record._(
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
      FirebaseFirestore.instance.collection('vocalist_lv18');

  static Stream<VocalistLv18Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VocalistLv18Record.fromSnapshot(s));

  static Future<VocalistLv18Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VocalistLv18Record.fromSnapshot(s));

  static VocalistLv18Record fromSnapshot(DocumentSnapshot snapshot) =>
      VocalistLv18Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VocalistLv18Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VocalistLv18Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VocalistLv18Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VocalistLv18Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVocalistLv18RecordData({
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

class VocalistLv18RecordDocumentEquality
    implements Equality<VocalistLv18Record> {
  const VocalistLv18RecordDocumentEquality();

  @override
  bool equals(VocalistLv18Record? e1, VocalistLv18Record? e2) {
    return e1?.num == e2?.num &&
        e1?.english == e2?.english &&
        e1?.korean == e2?.korean;
  }

  @override
  int hash(VocalistLv18Record? e) =>
      const ListEquality().hash([e?.num, e?.english, e?.korean]);

  @override
  bool isValidKey(Object? o) => o is VocalistLv18Record;
}
