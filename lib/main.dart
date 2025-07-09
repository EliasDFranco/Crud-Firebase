import 'package:flutter/material.dart';

// Importaciones de Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// Servicios
import 'package:crud_firebase/services/firebase_services.dart';

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
        body: FutureBuilder(
          future: getPersonas(),
          builder: ((context, snapshot){
            if (snapshot.hasData){
               return ListView.builder(
                 itemCount: snapshot.data?.length,
                 itemBuilder: (context, index){
                   return Text(snapshot.data[index]['nombre']);
              }
            );
           }
            else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }
        )),
      ),
      );
  }
}