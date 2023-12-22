import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            top: 8,
            bottom: 8,
          ),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const BackButton(color: Colors.grey),
          ),
        ),
        title: const Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Text(
              "AI",
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            Text(
              "Psycholigist",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Image.asset( "assets/g12.png",
                scale: 3,),
            ),
          ],
        ),
      ),
      
    );
  }
}