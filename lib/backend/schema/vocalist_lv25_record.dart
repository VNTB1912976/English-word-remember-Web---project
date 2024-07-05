import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VocalistLv25Record extends FirestoreRecord {
  VocalistLv25Record._(
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
      FirebaseFirestore.instance.collection('vocalist_lv25');

  static Stream<VocalistLv25Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VocalistLv25Record.fromSnapshot(s));

  static Future<VocalistLv25Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VocalistLv25Record.fromSnapshot(s));

  static VocalistLv25Record fromSnapshot(DocumentSnapshot snapshot) =>
      VocalistLv25Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VocalistLv25Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VocalistLv25Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VocalistLv25Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VocalistLv25Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVocalistLv25RecordData({
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

class VocalistLv25RecordDocumentEquality
    implements Equality<VocalistLv25Record> {
  const VocalistLv25RecordDocumentEquality();

  @override
  bool equals(VocalistLv25Record? e1, VocalistLv25Record? e2) {
    return e1?.num == e2?.num &&
        e1?.english == e2?.english &&
        e1?.korean == e2?.korean;
  }

  @override
  int hash(VocalistLv25Record? e) =>
      const ListEquality().hash([e?.num, e?.english, e?.korean]);

  @override
  bool isValidKey(Object? o) => o is VocalistLv25Record;
}
