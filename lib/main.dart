
import 'package:crudetest/pages/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyANtIZtE7l90xngd80dEli0bGXVrryVrOs",
      appId: "1:985312890850:android:7934317fe7a3067ac9f3bb",
      messagingSenderId: "985312890850",
      projectId: "crude-test-df937" ,
    ),
  );
 runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
