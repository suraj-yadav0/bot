import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import 'package:flutter_chat_ui/flutter_chat_ui.dart';


class NewChatScreen extends StatefulWidget {
  const NewChatScreen({super.key});

  @override
  State<NewChatScreen> createState() => _NewChatScreenState();
}

class _NewChatScreenState extends State<NewChatScreen> {
  List<types.Message> messages = [];
    final user = const types.User(id: 'user', firstName: 'Suraj');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text(
              "Psycholigist",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Chat(messages: messages, onSendPressed: onSendPressed, user: user),
    ));
  }


 void onSendPressed (types.PartialText messages) {

 }
}
