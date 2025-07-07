import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class _HomePageState extends StatefulWidget {
  const _HomePageState({super.key});

  @override
  State<_HomePageState> createState() => __HomePageStateState();
}

class __HomePageStateState extends State<_HomePageState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Page",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App"),
        ),
        body: const Center(
          child: Text("Hello my friend, thats is just a  test in Firebase"),
        ),
      ),
    );
  }
}


