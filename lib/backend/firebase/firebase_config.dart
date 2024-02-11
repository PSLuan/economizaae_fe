import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA4tAk_UOkqFHIUF0EPYQNYBqkAWoASZew",
            authDomain: "economiza-ae-eap0gb.firebaseapp.com",
            projectId: "economiza-ae-eap0gb",
            storageBucket: "economiza-ae-eap0gb.appspot.com",
            messagingSenderId: "273416080644",
            appId: "1:273416080644:web:469244590b7812b0431451"));
  } else {
    await Firebase.initializeApp();
  }
}
