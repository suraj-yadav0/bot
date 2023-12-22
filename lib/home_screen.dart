import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 7, 76, 103),
      appBar: AppBar(actions: []),
      body: Column(children: [
        
        Center(child: Image.asset("assets/g10.png"),)
      ],),
    );
  }
}
