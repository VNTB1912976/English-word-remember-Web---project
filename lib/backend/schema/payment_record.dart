import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentRecord extends FirestoreRecord {
  PaymentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "vocaName" field.
  String? _vocaName;
  String get vocaName => _vocaName ?? '';
  bool hasVocaName() => _vocaName != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "create_at" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "bank_acc" field.
  String? _bankAcc;
  String get bankAcc => _bankAcc ?? '';
  bool hasBankAcc() => _bankAcc != null;

  // "ms" field.
  String? _ms;
  String get ms => _ms ?? '';
  bool hasMs() => _ms != null;

  // "acc_name" field.
  String? _accName;
  String get accName => _accName ?? '';
  bool hasAccName() => _accName != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _vocaName = snapshotData['vocaName'] as String?;
    _price = snapshotData['price'] as String?;
    _createAt = snapshotData['create_at'] as DateTime?;
    _status = castToType<int>(snapshotData['status']);
    _bankAcc = snapshotData['bank_acc'] as String?;
    _ms = snapshotData['ms'] as String?;
    _accName = snapshotData['acc_name'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentRecord.fromSnapshot(s));

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentRecord.fromSnapshot(s));

  static PaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentRecordData({
  String? email,
  String? vocaName,
  String? price,
  DateTime? createAt,
  int? status,
  String? bankAcc,
  String? ms,
  String? accName,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'vocaName': vocaName,
      'price': price,
      'create_at': createAt,
      'status': status,
      'bank_acc': bankAcc,
      'ms': ms,
      'acc_name': accName,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentRecord? e1, PaymentRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.vocaName == e2?.vocaName &&
        e1?.price == e2?.price &&
        e1?.createAt == e2?.createAt &&
        e1?.status == e2?.status &&
        e1?.bankAcc == e2?.bankAcc &&
        e1?.ms == e2?.ms &&
        e1?.accName == e2?.accName &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PaymentRecord? e) => const ListEquality().hash([
        e?.email,
        e?.vocaName,
        e?.price,
        e?.createAt,
        e?.status,
        e?.bankAcc,
        e?.ms,
        e?.accName,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentRecord;
}
