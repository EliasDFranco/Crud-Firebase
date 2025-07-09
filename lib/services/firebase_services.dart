import 'package:cloud_firestore/cloud_firestore.dart'

FirebaseFirestore database = FirebaseFirestore.instance;

Future<List> getPersonas() async {
  List personas = [];
  CollectionReference collectionReferencePersonas = database.collection('personas');

  QuerySnapshot queryPersonas = await collectionReferencesPersonas.get();
  queryPersonas.docs.forEach((documentos){
    personas.add(documentos.data())
  });

  await Future.delayed(const Duration(seconds: 5));
  
  return personas;

}














// EXPLICACIÓN DE CONCEPTOS

/*Sí, en Dart, Future es una instancia de la clase Future. Representa el resultado de una operación asíncrona que se completará en el futuro, ya sea con un valor o con un error. Los objetos Future son fundamentales para el manejo de tareas asíncronas en Dart y se utilizan junto con las palabras clave async y await. 
Explicación:
Clase Future: Future es una clase en Dart que se encuentra en el paquete dart:async. 
Instancia: Cuando se crea una operación asíncrona, como una solicitud de red o una lectura de archivo, se devuelve un objeto Future que representa el resultado de esa operación. 
Estados: Un Future puede estar en dos estados: incompleto (aún no se ha completado) o completado (con un valor o con un error). 
Operaciones asíncronas: Las palabras clave async y await se utilizan para trabajar con futuros. async se usa para marcar una función como asíncrona, y await se usa dentro de una función async para esperar a que un Future se complete. */