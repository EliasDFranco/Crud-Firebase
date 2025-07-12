import 'package: flutter/material.dart';

class AddName extends StatefulWidget{
  const AddName({super.key}),

  @override
  State<AddName> createState => _AddNameState();
}

class _AddNameState extends State<AddName>{
  @override
  Widget(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Tetx('ADD NAME PAGE'),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: const InputDecoration(
              hintText: 'Ingrese un nuevo nombre ',
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Guardar"))
        ],
      ),
    );
  }
}