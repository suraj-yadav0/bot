import 'package:flutter/material.dart';

class GeminiChatScreen extends StatefulWidget {
  const GeminiChatScreen({super.key});

  @override
  State<GeminiChatScreen> createState() => _GeminiChatScreenState();
}

class _GeminiChatScreenState extends State<GeminiChatScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "AI",
              style:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text(
              "Psycholigist",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_active),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                child: Image.asset(
                  "assets/profile.jpg",
                  fit: BoxFit.cover,
                  scale: 1,
                ),
              )
            ],
          )
        ],
      ),

      body: Column(children: [SizedBox(height: 20,),
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Ask Anything!", hintText: "Kuch Pucho"),),
   )
      ],),
    ));
  }
}