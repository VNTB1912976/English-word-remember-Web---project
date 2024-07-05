// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VocalB1Struct extends FFFirebaseStruct {
  VocalB1Struct({
    List<String>? id,
    List<String>? englist,
    List<String>? korea,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _englist = englist,
        _korea = korea,
        super(firestoreUtilData);

  // "id" field.
  List<String>? _id;
  List<String> get id => _id ?? const [];
  set id(List<String>? val) => _id = val;

  void updateId(Function(List<String>) updateFn) {
    updateFn(_id ??= []);
  }

  bool hasId() => _id != null;

  // "englist" field.
  List<String>? _englist;
  List<String> get englist => _englist ?? const [];
  set englist(List<String>? val) => _englist = val;

  void updateEnglist(Function(List<String>) updateFn) {
    updateFn(_englist ??= []);
  }

  bool hasEnglist() => _englist != null;

  // "korea" field.
  List<String>? _korea;
  List<String> get korea => _korea ?? const [];
  set korea(List<String>? val) => _korea = val;

  void updateKorea(Function(List<String>) updateFn) {
    updateFn(_korea ??= []);
  }

  bool hasKorea() => _korea != null;

  static VocalB1Struct fromMap(Map<String, dynamic> data) => VocalB1Struct(
        id: getDataList(data['id']),
        englist: getDataList(data['englist']),
        korea: getDataList(data['korea']),
      );

  static VocalB1Struct? maybeFromMap(dynamic data) =>
      data is Map ? VocalB1Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'englist': _englist,
        'korea': _korea,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
          isList: true,
        ),
        'englist': serializeParam(
          _englist,
          ParamType.String,
          isList: true,
        ),
        'korea': serializeParam(
          _korea,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static VocalB1Struct fromSerializableMap(Map<String, dynamic> data) =>
      VocalB1Struct(
        id: deserializeParam<String>(
          data['id'],
          ParamType.String,
          true,
        ),
        englist: deserializeParam<String>(
          data['englist'],
          ParamType.String,
          true,
        ),
        korea: deserializeParam<String>(
          data['korea'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'VocalB1Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VocalB1Struct &&
        listEquality.equals(id, other.id) &&
        listEquality.equals(englist, other.englist) &&
        listEquality.equals(korea, other.korea);
  }

  @override
  int get hashCode => const ListEquality().hash([id, englist, korea]);
}

VocalB1Struct createVocalB1Struct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VocalB1Struct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VocalB1Struct? updateVocalB1Struct(
  VocalB1Struct? vocalB1, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vocalB1
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVocalB1StructData(
  Map<String, dynamic> firestoreData,
  VocalB1Struct? vocalB1,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vocalB1 == null) {
    return;
  }
  if (vocalB1.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vocalB1.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vocalB1Data = getVocalB1FirestoreData(vocalB1, forFieldValue);
  final nestedData = vocalB1Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vocalB1.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVocalB1FirestoreData(
  VocalB1Struct? vocalB1, [
  bool forFieldValue = false,
]) {
  if (vocalB1 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vocalB1.toMap());

  // Add any Firestore field values
  vocalB1.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVocalB1ListFirestoreData(
  List<VocalB1Struct>? vocalB1s,
) =>
    vocalB1s?.map((e) => getVocalB1FirestoreData(e, true)).toList() ?? [];
