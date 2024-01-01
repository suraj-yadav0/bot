import 'package:bot/api/gemini_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeminiChatScreen extends StatefulWidget {
  const GeminiChatScreen({super.key});

  @override
  State<GeminiChatScreen> createState() => _GeminiChatScreenState();
}

class _GeminiChatScreenState extends State<GeminiChatScreen> {
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    RxString result = ''.obs;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Neural",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text(
              "Speak",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Ask Anything!",
                  hintText: "Kuch Pucho",
                ),
                controller: textController,
              ),
            ),
            Center(
              child: IconButton(
                  onPressed: () async {
                    result.value = await GeminiApi.getGeminiData(textController.text);
                  }, icon: const Icon(Icons.send_outlined)),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(color: Colors.white30, border: Border.all(color: Colors.black) ),
              child: Obx(() => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(result.value,style: const TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w400),),
              )),
            )
          ],
        ),
      ),
    ));
  }
}
