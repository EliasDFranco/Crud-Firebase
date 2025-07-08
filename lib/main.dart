import 'package:flutter/material.dart';

// Importaciones de Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
    );
  runApp(MyApp()),
};

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Crud en Firebase",
      home: Scaffold(
        appBar: AppBar(
          title: const("Welcome to Firebase"),
        ),
        body: const Center(
          child: Text("Esto es un crud hecho con Flutter, Dart y Firebase"),
        )
      ),
      );
  }
}