// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class VocalStruct extends FFFirebaseStruct {
  VocalStruct({
    String? english,
    String? korean,
    int? num,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _english = english,
        _korean = korean,
        _num = num,
        super(firestoreUtilData);

  // "english" field.
  String? _english;
  String get english => _english ?? '';
  set english(String? val) => _english = val;

  bool hasEnglish() => _english != null;

  // "korean" field.
  String? _korean;
  String get korean => _korean ?? '';
  set korean(String? val) => _korean = val;

  bool hasKorean() => _korean != null;

  // "num" field.
  int? _num;
  int get num => _num ?? 0;
  set num(int? val) => _num = val;

  void incrementNum(int amount) => num = num + amount;

  bool hasNum() => _num != null;

  static VocalStruct fromMap(Map<String, dynamic> data) => VocalStruct(
        english: data['english'] as String?,
        korean: data['korean'] as String?,
        num: castToType<int>(data['num']),
      );

  static VocalStruct? maybeFromMap(dynamic data) =>
      data is Map ? VocalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'english': _english,
        'korean': _korean,
        'num': _num,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'english': serializeParam(
          _english,
          ParamType.String,
        ),
        'korean': serializeParam(
          _korean,
          ParamType.String,
        ),
        'num': serializeParam(
          _num,
          ParamType.int,
        ),
      }.withoutNulls;

  static VocalStruct fromSerializableMap(Map<String, dynamic> data) =>
      VocalStruct(
        english: deserializeParam(
          data['english'],
          ParamType.String,
          false,
        ),
        korean: deserializeParam(
          data['korean'],
          ParamType.String,
          false,
        ),
        num: deserializeParam(
          data['num'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VocalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VocalStruct &&
        english == other.english &&
        korean == other.korean &&
        num == other.num;
  }

  @override
  int get hashCode => const ListEquality().hash([english, korean, num]);
}

VocalStruct createVocalStruct({
  String? english,
  String? korean,
  int? num,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VocalStruct(
      english: english,
      korean: korean,
      num: num,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VocalStruct? updateVocalStruct(
  VocalStruct? vocal, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vocal
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVocalStructData(
  Map<String, dynamic> firestoreData,
  VocalStruct? vocal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vocal == null) {
    return;
  }
  if (vocal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vocal.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vocalData = getVocalFirestoreData(vocal, forFieldValue);
  final nestedData = vocalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vocal.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVocalFirestoreData(
  VocalStruct? vocal, [
  bool forFieldValue = false,
]) {
  if (vocal == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vocal.toMap());

  // Add any Firestore field values
  vocal.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVocalListFirestoreData(
  List<VocalStruct>? vocals,
) =>
    vocals?.map((e) => getVocalFirestoreData(e, true)).toList() ?? [];
