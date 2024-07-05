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

import 'dart:math';

Future<List<String>> listxaotron(List<String> listToShuffle) async {
  // Add your function code here!
  var random = Random();
  // Xáo trộn danh sách
  for (var i = listToShuffle.length - 1; i > 0; i--) {
    var n = random.nextInt(i + 1);
    var temp = listToShuffle[i];
    listToShuffle[i] = listToShuffle[n];
    listToShuffle[n] = temp;
  }
  return listToShuffle;
}
