import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "type_user" field.
  String? _typeUser;
  String get typeUser => _typeUser ?? '';
  bool hasTypeUser() => _typeUser != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "ban" field.
  bool? _ban;
  bool get ban => _ban ?? false;
  bool hasBan() => _ban != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "money" field.
  String? _money;
  String get money => _money ?? '';
  bool hasMoney() => _money != null;

  // "time" field.
  int? _time;
  int get time => _time ?? 0;
  bool hasTime() => _time != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "nohaspass" field.
  String? _nohaspass;
  String get nohaspass => _nohaspass ?? '';
  bool hasNohaspass() => _nohaspass != null;

  // "payer" field.
  String? _payer;
  String get payer => _payer ?? '';
  bool hasPayer() => _payer != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

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
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _typeUser = snapshotData['type_user'] as String?;
    _status = snapshotData['status'] as bool?;
    _ban = snapshotData['ban'] as bool?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _money = snapshotData['money'] as String?;
    _time = castToType<int>(snapshotData['time']);
    _company = snapshotData['company'] as String?;
    _address = snapshotData['address'] as String?;
    _nohaspass = snapshotData['nohaspass'] as String?;
    _payer = snapshotData['payer'] as String?;
    _note = snapshotData['note'] as String?;
    _level = snapshotData['level'] as String?;
    _stt = castToType<int>(snapshotData['stt']);
    _game = snapshotData['game'] as String?;
    _lock = castToType<int>(snapshotData['lock']);
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? typeUser,
  bool? status,
  bool? ban,
  DateTime? endDate,
  DateTime? startDate,
  String? money,
  int? time,
  String? company,
  String? address,
  String? nohaspass,
  String? payer,
  String? note,
  String? level,
  int? stt,
  String? game,
  int? lock,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'type_user': typeUser,
      'status': status,
      'ban': ban,
      'end_date': endDate,
      'start_date': startDate,
      'money': money,
      'time': time,
      'company': company,
      'address': address,
      'nohaspass': nohaspass,
      'payer': payer,
      'note': note,
      'level': level,
      'stt': stt,
      'game': game,
      'lock': lock,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.typeUser == e2?.typeUser &&
        e1?.status == e2?.status &&
        e1?.ban == e2?.ban &&
        e1?.endDate == e2?.endDate &&
        e1?.startDate == e2?.startDate &&
        e1?.money == e2?.money &&
        e1?.time == e2?.time &&
        e1?.company == e2?.company &&
        e1?.address == e2?.address &&
        e1?.nohaspass == e2?.nohaspass &&
        e1?.payer == e2?.payer &&
        e1?.note == e2?.note &&
        e1?.level == e2?.level &&
        e1?.stt == e2?.stt &&
        e1?.game == e2?.game &&
        e1?.lock == e2?.lock &&
        e1?.link == e2?.link;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.typeUser,
        e?.status,
        e?.ban,
        e?.endDate,
        e?.startDate,
        e?.money,
        e?.time,
        e?.company,
        e?.address,
        e?.nohaspass,
        e?.payer,
        e?.note,
        e?.level,
        e?.stt,
        e?.game,
        e?.lock,
        e?.link
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
