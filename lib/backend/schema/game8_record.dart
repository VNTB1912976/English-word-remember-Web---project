import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Game8Record extends FirestoreRecord {
  Game8Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stt" field.
  int? _stt;
  int get stt => _stt ?? 0;
  bool hasStt() => _stt != null;

  // "game" field.
  String? _game;
  String get game => _game ?? '';
  bool hasGame() => _game != null;

  // "lock" field.
  int? _lock;
  int get lock => _lock ?? 0;
  bool hasLock() => _lock != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _stt = castToType<int>(snapshotData['stt']);
    _game = snapshotData['game'] as String?;
    _lock = castToType<int>(snapshotData['lock']);
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('game8');

  static Stream<Game8Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Game8Record.fromSnapshot(s));

  static Future<Game8Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Game8Record.fromSnapshot(s));

  static Game8Record fromSnapshot(DocumentSnapshot snapshot) => Game8Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Game8Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Game8Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Game8Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Game8Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGame8RecordData({
  int? stt,
  String? game,
  int? lock,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stt': stt,
      'game': game,
      'lock': lock,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class Game8RecordDocumentEquality implements Equality<Game8Record> {
  const Game8RecordDocumentEquality();

  @override
  bool equals(Game8Record? e1, Game8Record? e2) {
    return e1?.stt == e2?.stt &&
        e1?.game == e2?.game &&
        e1?.lock == e2?.lock &&
        e1?.link == e2?.link;
  }

  @override
  int hash(Game8Record? e) =>
      const ListEquality().hash([e?.stt, e?.game, e?.lock, e?.link]);

  @override
  bool isValidKey(Object? o) => o is Game8Record;
}
