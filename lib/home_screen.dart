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
      // backgroundColor: Color.fromARGB(255, 1, 66, 92),
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "AI",
              style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),
            ),
            Text(
              "Psycholigist",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            )
          ],
        ),
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
            child: Image.asset("assets/g12.png",scale: 3,),
          ),)
        ],
      ),
    );
  }
}
