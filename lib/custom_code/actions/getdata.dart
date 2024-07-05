// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> getdata(VocalB1Struct? datatype, int index) async {
  // Kiểm tra xem datatype có null không để tránh lỗi.
  if (datatype == null) {
    throw Exception("Data type is null");
  }

  // Kiểm tra xem index có nằm trong giới hạn của list các id không.
  if (index < 0 || index >= datatype.id.length) {
    throw Exception("Index out of range");
  }

  // Trả về giá trị tại index cụ thể.
  return datatype.id[index];
}
