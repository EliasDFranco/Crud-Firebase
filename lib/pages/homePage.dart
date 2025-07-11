// Material
import 'package:flutter/material.dart';
// Services
import 'package:crud_firebase/services/firebase_services.dart';

class Home extends StatefulWidget{
  const Home ({
    Key? key,
  } ): super(key: key);

  @override
  State<Home> createState() => _HomeState();
  }

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: FutureBuilder(
        future: getPersonas(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: ((context, index){
                return Text(snapshot.data?[index]['nombre']);
              })
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      )
    );
   }
}