import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Game9Record extends FirestoreRecord {
  Game9Record._(
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
      FirebaseFirestore.instance.collection('game9');

  static Stream<Game9Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Game9Record.fromSnapshot(s));

  static Future<Game9Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Game9Record.fromSnapshot(s));

  static Game9Record fromSnapshot(DocumentSnapshot snapshot) => Game9Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Game9Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Game9Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Game9Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Game9Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGame9RecordData({
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

class Game9RecordDocumentEquality implements Equality<Game9Record> {
  const Game9RecordDocumentEquality();

  @override
  bool equals(Game9Record? e1, Game9Record? e2) {
    return e1?.stt == e2?.stt &&
        e1?.game == e2?.game &&
        e1?.lock == e2?.lock &&
        e1?.link == e2?.link;
  }

  @override
  int hash(Game9Record? e) =>
      const ListEquality().hash([e?.stt, e?.game, e?.lock, e?.link]);

  @override
  bool isValidKey(Object? o) => o is Game9Record;
}
