import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Game3Record extends FirestoreRecord {
  Game3Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "game" field.
  String? _game;
  String get game => _game ?? '';
  bool hasGame() => _game != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "lock" field.
  String? _lock;
  String get lock => _lock ?? '';
  bool hasLock() => _lock != null;

  // "stt" field.
  int? _stt;
  int get stt => _stt ?? 0;
  bool hasStt() => _stt != null;

  void _initializeFields() {
    _game = snapshotData['game'] as String?;
    _link = snapshotData['link'] as String?;
    _lock = snapshotData['lock'] as String?;
    _stt = castToType<int>(snapshotData['stt']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('game3');

  static Stream<Game3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Game3Record.fromSnapshot(s));

  static Future<Game3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Game3Record.fromSnapshot(s));

  static Game3Record fromSnapshot(DocumentSnapshot snapshot) => Game3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Game3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Game3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Game3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Game3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGame3RecordData({
  String? game,
  String? link,
  String? lock,
  int? stt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'game': game,
      'link': link,
      'lock': lock,
      'stt': stt,
    }.withoutNulls,
  );

  return firestoreData;
}

class Game3RecordDocumentEquality implements Equality<Game3Record> {
  const Game3RecordDocumentEquality();

  @override
  bool equals(Game3Record? e1, Game3Record? e2) {
    return e1?.game == e2?.game &&
        e1?.link == e2?.link &&
        e1?.lock == e2?.lock &&
        e1?.stt == e2?.stt;
  }

  @override
  int hash(Game3Record? e) =>
      const ListEquality().hash([e?.game, e?.link, e?.lock, e?.stt]);

  @override
  bool isValidKey(Object? o) => o is Game3Record;
}
