import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/vocalist_lv1_record.dart';
import 'schema/vocalist_lv2_record.dart';
import 'schema/vocalist_lv3_record.dart';
import 'schema/payment_record.dart';
import 'schema/course_record.dart';
import 'schema/loadvocal1_record.dart';
import 'schema/vocalist_lv4_record.dart';
import 'schema/vocalist_lv5_record.dart';
import 'schema/vocalist_lv6_record.dart';
import 'schema/vocalist_lv7_record.dart';
import 'schema/vocalist_lv8_record.dart';
import 'schema/vocalist_lv9_record.dart';
import 'schema/vocalist_lv10_record.dart';
import 'schema/check_voca_record.dart';
import 'schema/game3_record.dart';
import 'schema/game2_record.dart';
import 'schema/game4_record.dart';
import 'schema/game5_record.dart';
import 'schema/game1_record.dart';
import 'schema/game6_record.dart';
import 'schema/game7_record.dart';
import 'schema/vocalist_lv11_record.dart';
import 'schema/vocalist_lv12_record.dart';
import 'schema/vocalist_lv14_record.dart';
import 'schema/vocalist_lv15_record.dart';
import 'schema/vocalist_lv16_record.dart';
import 'schema/vocalist_lv17_record.dart';
import 'schema/vocalist_lv18_record.dart';
import 'schema/vocalist_lv19_record.dart';
import 'schema/vocalist_lv20_record.dart';
import 'schema/vocalist_lv21_record.dart';
import 'schema/vocalist_lv22_record.dart';
import 'schema/vocalist_lv23_record.dart';
import 'schema/vocalist_lv24_record.dart';
import 'schema/vocalist_lv25_record.dart';
import 'schema/vocalist_lv26_record.dart';
import 'schema/vocalist_lv27_record.dart';
import 'schema/vocalist_lv28_record.dart';
import 'schema/vocalist_lv29_record.dart';
import 'schema/vocalist_lv30_record.dart';
import 'schema/game8_record.dart';
import 'schema/game9_record.dart';
import 'schema/strory_board_record.dart';
import 'schema/learnt_voca_record.dart';
import 'schema/vocalist_lv13_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/vocalist_lv1_record.dart';
export 'schema/vocalist_lv2_record.dart';
export 'schema/vocalist_lv3_record.dart';
export 'schema/payment_record.dart';
export 'schema/course_record.dart';
export 'schema/loadvocal1_record.dart';
export 'schema/vocalist_lv4_record.dart';
export 'schema/vocalist_lv5_record.dart';
export 'schema/vocalist_lv6_record.dart';
export 'schema/vocalist_lv7_record.dart';
export 'schema/vocalist_lv8_record.dart';
export 'schema/vocalist_lv9_record.dart';
export 'schema/vocalist_lv10_record.dart';
export 'schema/check_voca_record.dart';
export 'schema/game3_record.dart';
export 'schema/game2_record.dart';
export 'schema/game4_record.dart';
export 'schema/game5_record.dart';
export 'schema/game1_record.dart';
export 'schema/game6_record.dart';
export 'schema/game7_record.dart';
export 'schema/vocalist_lv11_record.dart';
export 'schema/vocalist_lv12_record.dart';
export 'schema/vocalist_lv14_record.dart';
export 'schema/vocalist_lv15_record.dart';
export 'schema/vocalist_lv16_record.dart';
export 'schema/vocalist_lv17_record.dart';
export 'schema/vocalist_lv18_record.dart';
export 'schema/vocalist_lv19_record.dart';
export 'schema/vocalist_lv20_record.dart';
export 'schema/vocalist_lv21_record.dart';
export 'schema/vocalist_lv22_record.dart';
export 'schema/vocalist_lv23_record.dart';
export 'schema/vocalist_lv24_record.dart';
export 'schema/vocalist_lv25_record.dart';
export 'schema/vocalist_lv26_record.dart';
export 'schema/vocalist_lv27_record.dart';
export 'schema/vocalist_lv28_record.dart';
export 'schema/vocalist_lv29_record.dart';
export 'schema/vocalist_lv30_record.dart';
export 'schema/game8_record.dart';
export 'schema/game9_record.dart';
export 'schema/strory_board_record.dart';
export 'schema/learnt_voca_record.dart';
export 'schema/vocalist_lv13_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv1Records (as a Stream and as a Future).
Future<int> queryVocalistLv1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv1Record>> queryVocalistLv1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv1Record.collection,
      VocalistLv1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv1Record>> queryVocalistLv1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv1Record.collection,
      VocalistLv1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv2Records (as a Stream and as a Future).
Future<int> queryVocalistLv2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv2Record>> queryVocalistLv2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv2Record.collection,
      VocalistLv2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv2Record>> queryVocalistLv2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv2Record.collection,
      VocalistLv2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv3Records (as a Stream and as a Future).
Future<int> queryVocalistLv3RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv3Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv3Record>> queryVocalistLv3Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv3Record.collection,
      VocalistLv3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv3Record>> queryVocalistLv3RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv3Record.collection,
      VocalistLv3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PaymentRecords (as a Stream and as a Future).
Future<int> queryPaymentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PaymentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PaymentRecord>> queryPaymentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PaymentRecord.collection,
      PaymentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PaymentRecord>> queryPaymentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PaymentRecord.collection,
      PaymentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CourseRecords (as a Stream and as a Future).
Future<int> queryCourseRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CourseRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CourseRecord>> queryCourseRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CourseRecord.collection,
      CourseRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CourseRecord>> queryCourseRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CourseRecord.collection,
      CourseRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Loadvocal1Records (as a Stream and as a Future).
Future<int> queryLoadvocal1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Loadvocal1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Loadvocal1Record>> queryLoadvocal1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Loadvocal1Record.collection,
      Loadvocal1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Loadvocal1Record>> queryLoadvocal1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Loadvocal1Record.collection,
      Loadvocal1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv4Records (as a Stream and as a Future).
Future<int> queryVocalistLv4RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv4Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv4Record>> queryVocalistLv4Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv4Record.collection,
      VocalistLv4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv4Record>> queryVocalistLv4RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv4Record.collection,
      VocalistLv4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv5Records (as a Stream and as a Future).
Future<int> queryVocalistLv5RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv5Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv5Record>> queryVocalistLv5Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv5Record.collection,
      VocalistLv5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv5Record>> queryVocalistLv5RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv5Record.collection,
      VocalistLv5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv6Records (as a Stream and as a Future).
Future<int> queryVocalistLv6RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv6Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv6Record>> queryVocalistLv6Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv6Record.collection,
      VocalistLv6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv6Record>> queryVocalistLv6RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv6Record.collection,
      VocalistLv6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv7Records (as a Stream and as a Future).
Future<int> queryVocalistLv7RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv7Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv7Record>> queryVocalistLv7Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv7Record.collection,
      VocalistLv7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv7Record>> queryVocalistLv7RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv7Record.collection,
      VocalistLv7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv8Records (as a Stream and as a Future).
Future<int> queryVocalistLv8RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv8Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv8Record>> queryVocalistLv8Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv8Record.collection,
      VocalistLv8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv8Record>> queryVocalistLv8RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv8Record.collection,
      VocalistLv8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv9Records (as a Stream and as a Future).
Future<int> queryVocalistLv9RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv9Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv9Record>> queryVocalistLv9Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv9Record.collection,
      VocalistLv9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv9Record>> queryVocalistLv9RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv9Record.collection,
      VocalistLv9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv10Records (as a Stream and as a Future).
Future<int> queryVocalistLv10RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv10Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv10Record>> queryVocalistLv10Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv10Record.collection,
      VocalistLv10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv10Record>> queryVocalistLv10RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv10Record.collection,
      VocalistLv10Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CheckVocaRecords (as a Stream and as a Future).
Future<int> queryCheckVocaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CheckVocaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CheckVocaRecord>> queryCheckVocaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CheckVocaRecord.collection,
      CheckVocaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CheckVocaRecord>> queryCheckVocaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CheckVocaRecord.collection,
      CheckVocaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game3Records (as a Stream and as a Future).
Future<int> queryGame3RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game3Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game3Record>> queryGame3Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game3Record.collection,
      Game3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game3Record>> queryGame3RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game3Record.collection,
      Game3Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game2Records (as a Stream and as a Future).
Future<int> queryGame2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game2Record>> queryGame2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game2Record.collection,
      Game2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game2Record>> queryGame2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game2Record.collection,
      Game2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game4Records (as a Stream and as a Future).
Future<int> queryGame4RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game4Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game4Record>> queryGame4Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game4Record.collection,
      Game4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game4Record>> queryGame4RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game4Record.collection,
      Game4Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game5Records (as a Stream and as a Future).
Future<int> queryGame5RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game5Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game5Record>> queryGame5Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game5Record.collection,
      Game5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game5Record>> queryGame5RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game5Record.collection,
      Game5Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game1Records (as a Stream and as a Future).
Future<int> queryGame1RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game1Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game1Record>> queryGame1Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game1Record.collection,
      Game1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game1Record>> queryGame1RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game1Record.collection,
      Game1Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game6Records (as a Stream and as a Future).
Future<int> queryGame6RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game6Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game6Record>> queryGame6Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game6Record.collection,
      Game6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game6Record>> queryGame6RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game6Record.collection,
      Game6Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game7Records (as a Stream and as a Future).
Future<int> queryGame7RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game7Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game7Record>> queryGame7Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game7Record.collection,
      Game7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game7Record>> queryGame7RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game7Record.collection,
      Game7Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv11Records (as a Stream and as a Future).
Future<int> queryVocalistLv11RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv11Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv11Record>> queryVocalistLv11Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv11Record.collection,
      VocalistLv11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv11Record>> queryVocalistLv11RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv11Record.collection,
      VocalistLv11Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv12Records (as a Stream and as a Future).
Future<int> queryVocalistLv12RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv12Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv12Record>> queryVocalistLv12Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv12Record.collection,
      VocalistLv12Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv12Record>> queryVocalistLv12RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv12Record.collection,
      VocalistLv12Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv14Records (as a Stream and as a Future).
Future<int> queryVocalistLv14RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv14Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv14Record>> queryVocalistLv14Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv14Record.collection,
      VocalistLv14Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv14Record>> queryVocalistLv14RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv14Record.collection,
      VocalistLv14Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv15Records (as a Stream and as a Future).
Future<int> queryVocalistLv15RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv15Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv15Record>> queryVocalistLv15Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv15Record.collection,
      VocalistLv15Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv15Record>> queryVocalistLv15RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv15Record.collection,
      VocalistLv15Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv16Records (as a Stream and as a Future).
Future<int> queryVocalistLv16RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv16Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv16Record>> queryVocalistLv16Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv16Record.collection,
      VocalistLv16Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv16Record>> queryVocalistLv16RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv16Record.collection,
      VocalistLv16Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv17Records (as a Stream and as a Future).
Future<int> queryVocalistLv17RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv17Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv17Record>> queryVocalistLv17Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv17Record.collection,
      VocalistLv17Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv17Record>> queryVocalistLv17RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv17Record.collection,
      VocalistLv17Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv18Records (as a Stream and as a Future).
Future<int> queryVocalistLv18RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv18Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv18Record>> queryVocalistLv18Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv18Record.collection,
      VocalistLv18Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv18Record>> queryVocalistLv18RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv18Record.collection,
      VocalistLv18Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv19Records (as a Stream and as a Future).
Future<int> queryVocalistLv19RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv19Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv19Record>> queryVocalistLv19Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv19Record.collection,
      VocalistLv19Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv19Record>> queryVocalistLv19RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv19Record.collection,
      VocalistLv19Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv20Records (as a Stream and as a Future).
Future<int> queryVocalistLv20RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv20Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv20Record>> queryVocalistLv20Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv20Record.collection,
      VocalistLv20Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv20Record>> queryVocalistLv20RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv20Record.collection,
      VocalistLv20Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv21Records (as a Stream and as a Future).
Future<int> queryVocalistLv21RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv21Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv21Record>> queryVocalistLv21Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv21Record.collection,
      VocalistLv21Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv21Record>> queryVocalistLv21RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv21Record.collection,
      VocalistLv21Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv22Records (as a Stream and as a Future).
Future<int> queryVocalistLv22RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv22Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv22Record>> queryVocalistLv22Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv22Record.collection,
      VocalistLv22Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv22Record>> queryVocalistLv22RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv22Record.collection,
      VocalistLv22Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv23Records (as a Stream and as a Future).
Future<int> queryVocalistLv23RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv23Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv23Record>> queryVocalistLv23Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv23Record.collection,
      VocalistLv23Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv23Record>> queryVocalistLv23RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv23Record.collection,
      VocalistLv23Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv24Records (as a Stream and as a Future).
Future<int> queryVocalistLv24RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv24Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv24Record>> queryVocalistLv24Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv24Record.collection,
      VocalistLv24Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv24Record>> queryVocalistLv24RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv24Record.collection,
      VocalistLv24Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv25Records (as a Stream and as a Future).
Future<int> queryVocalistLv25RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv25Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv25Record>> queryVocalistLv25Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv25Record.collection,
      VocalistLv25Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv25Record>> queryVocalistLv25RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv25Record.collection,
      VocalistLv25Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv26Records (as a Stream and as a Future).
Future<int> queryVocalistLv26RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv26Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv26Record>> queryVocalistLv26Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv26Record.collection,
      VocalistLv26Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv26Record>> queryVocalistLv26RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv26Record.collection,
      VocalistLv26Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv27Records (as a Stream and as a Future).
Future<int> queryVocalistLv27RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv27Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv27Record>> queryVocalistLv27Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv27Record.collection,
      VocalistLv27Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv27Record>> queryVocalistLv27RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv27Record.collection,
      VocalistLv27Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv28Records (as a Stream and as a Future).
Future<int> queryVocalistLv28RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv28Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv28Record>> queryVocalistLv28Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv28Record.collection,
      VocalistLv28Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv28Record>> queryVocalistLv28RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv28Record.collection,
      VocalistLv28Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv29Records (as a Stream and as a Future).
Future<int> queryVocalistLv29RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv29Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv29Record>> queryVocalistLv29Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv29Record.collection,
      VocalistLv29Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv29Record>> queryVocalistLv29RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv29Record.collection,
      VocalistLv29Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv30Records (as a Stream and as a Future).
Future<int> queryVocalistLv30RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv30Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv30Record>> queryVocalistLv30Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv30Record.collection,
      VocalistLv30Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv30Record>> queryVocalistLv30RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv30Record.collection,
      VocalistLv30Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game8Records (as a Stream and as a Future).
Future<int> queryGame8RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game8Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game8Record>> queryGame8Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game8Record.collection,
      Game8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game8Record>> queryGame8RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game8Record.collection,
      Game8Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query Game9Records (as a Stream and as a Future).
Future<int> queryGame9RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      Game9Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<Game9Record>> queryGame9Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      Game9Record.collection,
      Game9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<Game9Record>> queryGame9RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      Game9Record.collection,
      Game9Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query StroryBoardRecords (as a Stream and as a Future).
Future<int> queryStroryBoardRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      StroryBoardRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<StroryBoardRecord>> queryStroryBoardRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      StroryBoardRecord.collection,
      StroryBoardRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<StroryBoardRecord>> queryStroryBoardRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      StroryBoardRecord.collection,
      StroryBoardRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LearntVocaRecords (as a Stream and as a Future).
Future<int> queryLearntVocaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LearntVocaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LearntVocaRecord>> queryLearntVocaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LearntVocaRecord.collection,
      LearntVocaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LearntVocaRecord>> queryLearntVocaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LearntVocaRecord.collection,
      LearntVocaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query VocalistLv13Records (as a Stream and as a Future).
Future<int> queryVocalistLv13RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      VocalistLv13Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<VocalistLv13Record>> queryVocalistLv13Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      VocalistLv13Record.collection,
      VocalistLv13Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<VocalistLv13Record>> queryVocalistLv13RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      VocalistLv13Record.collection,
      VocalistLv13Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  getDocs(QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
