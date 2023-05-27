import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cereusfirebase/views/home.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const StaticApp());
}

class StaticApp extends StatelessWidget {
  const StaticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: CardTheme(
          color: const Color.fromARGB(255, 15, 16, 17),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        primaryColor: const Color.fromARGB(255, 9, 11, 24),
        appBarTheme: const AppBarTheme(
          elevation: 5,
          titleTextStyle: TextStyle(
            fontFamily: 'LeckerliOne',
            fontSize: 24,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
