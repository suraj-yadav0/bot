import 'package:bot/chat_screen.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 75,
          ),
          Center(
            child: Image.asset(
              "assets/g12.png",
              scale: 3,
            ),
          ),
          const Center(
            child: Text(
              "Hi, John",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text(
              "I'm your AI Psychologist",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Imagine having a supportive, non-judgmental therapist available 24/7, right on your phone."
                " That's the AI Psychologist app.",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()));
                  },
                  child: const Text(
                    "Start Chat",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
