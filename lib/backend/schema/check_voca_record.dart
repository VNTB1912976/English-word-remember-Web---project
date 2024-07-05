import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckVocaRecord extends FirestoreRecord {
  CheckVocaRecord._(
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

  // "vocaName" field.
  String? _vocaName;
  String get vocaName => _vocaName ?? '';
  bool hasVocaName() => _vocaName != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _english = snapshotData['english'] as String?;
    _korea = snapshotData['korea'] as String?;
    _vocaName = snapshotData['vocaName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('checkVoca');

  static Stream<CheckVocaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CheckVocaRecord.fromSnapshot(s));

  static Future<CheckVocaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CheckVocaRecord.fromSnapshot(s));

  static CheckVocaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CheckVocaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CheckVocaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CheckVocaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CheckVocaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CheckVocaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCheckVocaRecordData({
  String? uid,
  String? english,
  String? korea,
  String? vocaName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'english': english,
      'korea': korea,
      'vocaName': vocaName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CheckVocaRecordDocumentEquality implements Equality<CheckVocaRecord> {
  const CheckVocaRecordDocumentEquality();

  @override
  bool equals(CheckVocaRecord? e1, CheckVocaRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.english == e2?.english &&
        e1?.korea == e2?.korea &&
        e1?.vocaName == e2?.vocaName;
  }

  @override
  int hash(CheckVocaRecord? e) =>
      const ListEquality().hash([e?.uid, e?.english, e?.korea, e?.vocaName]);

  @override
  bool isValidKey(Object? o) => o is CheckVocaRecord;
}
