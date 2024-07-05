import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD-2eJQf2D7sfHZ9P8JtAVyQiotXlcZ8sk",
            authDomain: "game-web-1.firebaseapp.com",
            projectId: "game-web-1",
            storageBucket: "game-web-1.appspot.com",
            messagingSenderId: "265282367408",
            appId: "1:265282367408:web:fbae321f34252d4426b075",
            measurementId: "G-GKHK281DHM"));
  } else {
    await Firebase.initializeApp();
  }
}
