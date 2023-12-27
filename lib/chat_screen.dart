import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
              child: Lottie.asset(
                "assets/bot.json",height: 200,
                animate: false,
              ),
            ),
            const Center(
              child: Text(
                "What Can I ",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
             const Center(
              child: Text(
                "Do For You ? ",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
           Center(child: Lottie.asset("assets/wave2.json",height: 60 ,),),
           const SizedBox(height: 20,),
 Lottie.asset("assets/soundwave.json",width: double.infinity)
          ],
        ),
      ),
    );
  }
}
