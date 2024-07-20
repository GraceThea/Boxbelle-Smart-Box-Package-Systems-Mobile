import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBeRKD0TGMy7hCMqkPdrseu89jHk1yIJBQ",
            authDomain: "boxbelle-rv5ssi.firebaseapp.com",
            projectId: "boxbelle-rv5ssi",
            storageBucket: "boxbelle-rv5ssi.appspot.com",
            messagingSenderId: "544420797081",
            appId: "1:544420797081:web:afd5a3bff21d510331f608"));
  } else {
    await Firebase.initializeApp();
  }
}
