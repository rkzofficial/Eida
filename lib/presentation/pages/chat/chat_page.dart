import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String chatType;

  const ChatPage({Key? key, required this.chatType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chat'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: const Center(child: Text('Chat Page')),
    );
  }
}
