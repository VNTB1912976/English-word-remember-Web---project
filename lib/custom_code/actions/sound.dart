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

import 'package:flutter_tts/flutter_tts.dart';

Future<void> sound(
  String text,
  int delay,
  String languageCode, // Changed to String for clarity
) async {
  FlutterTts flutterTts = FlutterTts();

  // Setting language based on languageCode directly
  await flutterTts.setLanguage(languageCode);

  // Optional: Set voice based on languageCode
  if (languageCode == "ko-KR") {
    await flutterTts.setVoice({"name": "Yuna", "locale": "ko-KR"});
  } else if (languageCode == "en-US") {
    await flutterTts.setVoice({"name": "Karen", "locale": "en-US"});
  }

  // Calculate speech rate based on text length
  int wordCount = text.split(' ').length;
  double speechRate = wordCount <= 10 ? 0.8 : (wordCount <= 20 ? 0.7 : 0.6);

  await flutterTts.setSpeechRate(speechRate);

  // Delayed speech without pause
  await Future.delayed(Duration(milliseconds: delay), () async {
    await flutterTts.speak(text);
  });
}
