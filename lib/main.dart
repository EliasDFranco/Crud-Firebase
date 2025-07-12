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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Crud en Firebase",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Firebase'),
        ),
        body: FutureBuilder(
          future: getPersonas(),
          builder: ((context, snapshot){
            if (snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index){
                    return Text(snapshot.data?[index]['nombre']);
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


/*
=========================
🔁 Sincrónico vs Asíncrono
=========================

1️⃣ Sincrónico:
  - Ejecuta una instrucción a la vez.
  - El programa se detiene hasta que termine la instrucción actual.
  - Ideal para tareas rápidas que no dependen de internet o base de datos.
  - Ejemplo: operaciones matemáticas, prints, validaciones simples.

2️⃣ Asíncrono:
  - Ejecuta múltiples tareas sin bloquear la ejecución principal.
  - Usa palabras clave como `async`, `await`, y tipos como `Future`.
  - Ideal para operaciones que tardan: llamadas HTTP, bases de datos, archivos.
  - Ejemplo: FutureBuilder para mostrar datos cuando están listos.

💡 En Flutter, lo asíncrono se usa para evitar que la UI se congele
    mientras esperamos datos (como una consulta a Firebase o MySQL).
*/

// 🔄 Función asíncrona: obtiene datos desde una fuente externa sin bloquear la UI
// Future<List<Map<String, dynamic>>> getPersonas() async {}
// lógica para obtener datos

/*
🧱 FutureBuilder:
  - Widget especial que construye su contenido basándose en un `Future`.
  - Muestra un loading (CircularProgressIndicator) mientras espera.
  - Ideal para mostrar datos de forma dinámica cuando vienen de una DB/API.
*/