// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CountStruct extends FFFirebaseStruct {
  CountStruct({
    String? note,
    String? quantity,
    String? vocaName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _note = note,
        _quantity = quantity,
        _vocaName = vocaName,
        super(firestoreUtilData);

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  set quantity(String? val) => _quantity = val;

  bool hasQuantity() => _quantity != null;

  // "vocaName" field.
  String? _vocaName;
  String get vocaName => _vocaName ?? '';
  set vocaName(String? val) => _vocaName = val;

  bool hasVocaName() => _vocaName != null;

  static CountStruct fromMap(Map<String, dynamic> data) => CountStruct(
        note: data['note'] as String?,
        quantity: data['quantity'] as String?,
        vocaName: data['vocaName'] as String?,
      );

  static CountStruct? maybeFromMap(dynamic data) =>
      data is Map ? CountStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'note': _note,
        'quantity': _quantity,
        'vocaName': _vocaName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.String,
        ),
        'vocaName': serializeParam(
          _vocaName,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountStruct(
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.String,
          false,
        ),
        vocaName: deserializeParam(
          data['vocaName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountStruct &&
        note == other.note &&
        quantity == other.quantity &&
        vocaName == other.vocaName;
  }

  @override
  int get hashCode => const ListEquality().hash([note, quantity, vocaName]);
}

CountStruct createCountStruct({
  String? note,
  String? quantity,
  String? vocaName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountStruct(
      note: note,
      quantity: quantity,
      vocaName: vocaName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CountStruct? updateCountStruct(
  CountStruct? count, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    count
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCountStructData(
  Map<String, dynamic> firestoreData,
  CountStruct? count,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (count == null) {
    return;
  }
  if (count.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && count.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final countData = getCountFirestoreData(count, forFieldValue);
  final nestedData = countData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = count.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCountFirestoreData(
  CountStruct? count, [
  bool forFieldValue = false,
]) {
  if (count == null) {
    return {};
  }
  final firestoreData = mapToFirestore(count.toMap());

  // Add any Firestore field values
  count.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCountListFirestoreData(
  List<CountStruct>? counts,
) =>
    counts?.map((e) => getCountFirestoreData(e, true)).toList() ?? [];
