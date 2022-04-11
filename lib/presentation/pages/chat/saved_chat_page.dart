import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../domain/chat/chat.dart';

class SavedChatPage extends HookWidget {
  final Chat chat;

  const SavedChatPage({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scrollController = useScrollController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chat'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: ListView.builder(
          itemCount: chat.chatItems.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final chatItem = chat.chatItems[index];
            final user = chatItem.user.getOrCrash();
            final message = chatItem.message.getOrCrash();

            return Container(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 10),
              child: Align(
                alignment: user == 'bot' ? Alignment.topLeft : Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: user == 'bot' ? Colors.grey.shade200 : Colors.blue[200],
                  ),
                  padding: const EdgeInsets.all(14),
                  child: Text(message, style: const TextStyle(fontSize: 15)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
