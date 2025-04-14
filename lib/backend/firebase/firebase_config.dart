import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDDYBWGnxDC-gNhucQMxyY0m0bEG6felDI",
            authDomain: "diplom-uoa69n.firebaseapp.com",
            projectId: "diplom-uoa69n",
            storageBucket: "diplom-uoa69n.firebasestorage.app",
            messagingSenderId: "748826741436",
            appId: "1:748826741436:web:f0bb8d7a8fc2d32d5adeb9"));
  } else {
    await Firebase.initializeApp();
  }
}
