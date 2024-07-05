import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Loadvocal1Record extends FirestoreRecord {
  Loadvocal1Record._(
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

  // "random" field.
  int? _random;
  int get random => _random ?? 0;
  bool hasRandom() => _random != null;

  // "vocaName" field.
  String? _vocaName;
  String get vocaName => _vocaName ?? '';
  bool hasVocaName() => _vocaName != null;

  // "random1" field.
  int? _random1;
  int get random1 => _random1 ?? 0;
  bool hasRandom1() => _random1 != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _english = snapshotData['english'] as String?;
    _korea = snapshotData['korea'] as String?;
    _random = castToType<int>(snapshotData['random']);
    _vocaName = snapshotData['vocaName'] as String?;
    _random1 = castToType<int>(snapshotData['random1']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loadvocal1');

  static Stream<Loadvocal1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Loadvocal1Record.fromSnapshot(s));

  static Future<Loadvocal1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Loadvocal1Record.fromSnapshot(s));

  static Loadvocal1Record fromSnapshot(DocumentSnapshot snapshot) =>
      Loadvocal1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Loadvocal1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Loadvocal1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Loadvocal1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Loadvocal1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoadvocal1RecordData({
  String? uid,
  String? english,
  String? korea,
  int? random,
  String? vocaName,
  int? random1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'english': english,
      'korea': korea,
      'random': random,
      'vocaName': vocaName,
      'random1': random1,
    }.withoutNulls,
  );

  return firestoreData;
}

class Loadvocal1RecordDocumentEquality implements Equality<Loadvocal1Record> {
  const Loadvocal1RecordDocumentEquality();

  @override
  bool equals(Loadvocal1Record? e1, Loadvocal1Record? e2) {
    return e1?.uid == e2?.uid &&
        e1?.english == e2?.english &&
        e1?.korea == e2?.korea &&
        e1?.random == e2?.random &&
        e1?.vocaName == e2?.vocaName &&
        e1?.random1 == e2?.random1;
  }

  @override
  int hash(Loadvocal1Record? e) => const ListEquality()
      .hash([e?.uid, e?.english, e?.korea, e?.random, e?.vocaName, e?.random1]);

  @override
  bool isValidKey(Object? o) => o is Loadvocal1Record;
}
