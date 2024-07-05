import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LearntVocaRecord extends FirestoreRecord {
  LearntVocaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "english" field.
  String? _english;
  String get english => _english ?? '';
  bool hasEnglish() => _english != null;

  // "korea" field.
  String? _korea;
  String get korea => _korea ?? '';
  bool hasKorea() => _korea != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _english = snapshotData['english'] as String?;
    _korea = snapshotData['korea'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('learntVoca');

  static Stream<LearntVocaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LearntVocaRecord.fromSnapshot(s));

  static Future<LearntVocaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LearntVocaRecord.fromSnapshot(s));

  static LearntVocaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LearntVocaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LearntVocaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LearntVocaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LearntVocaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LearntVocaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLearntVocaRecordData({
  String? uid,
  String? english,
  String? korea,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'english': english,
      'korea': korea,
    }.withoutNulls,
  );

  return firestoreData;
}

class LearntVocaRecordDocumentEquality implements Equality<LearntVocaRecord> {
  const LearntVocaRecordDocumentEquality();

  @override
  bool equals(LearntVocaRecord? e1, LearntVocaRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.english == e2?.english &&
        e1?.korea == e2?.korea;
  }

  @override
  int hash(LearntVocaRecord? e) =>
      const ListEquality().hash([e?.uid, e?.english, e?.korea]);

  @override
  bool isValidKey(Object? o) => o is LearntVocaRecord;
}
