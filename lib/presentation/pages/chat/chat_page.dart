import 'package:auto_route/auto_route.dart';
import 'package:eida/application/chat/mic/mic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/chat/chat_bloc.dart';
import '../../../injection.dart';

class ChatPage extends StatelessWidget with AutoRouteWrapper {
  final String chatType;

  const ChatPage({Key? key, required this.chatType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChatBloc _chatBloc = getIt<ChatBloc>()..add(ChatEvent.getChat(chatType));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chat'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<ChatBloc, ChatState>(
        bloc: _chatBloc,
        builder: (context, state) => state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error) => Center(child: Text('Error: $error')),
          finished: () => const Center(child: Text('Finished')),
          loaded: (chat, currentChat) => Column(
            children: [
              ListView.builder(
                itemCount: currentChat.chatItems.length,
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
              BlocConsumer<MicBloc, MicState>(
                listener: (context, state) {
                  print(state);
                },
                builder: (context, state) => state.isListening
                    ? Container(
                        padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade200,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                            child: Text(
                              'Your mic is listening...',
                              style: TextStyle(fontSize: 12, color: Colors.grey.shade600, fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      )
                    : state.lastWords.isNotEmpty
                        ? Container(
                            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade200,
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                                child: Text(
                                  state.lastWords,
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600, fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                          )
                        : Container(),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: BlocBuilder<MicBloc, MicState>(
          builder: (context, state) {
            final bloc = context.read<MicBloc>();

            return FloatingActionButton(
              onPressed: !state.isListening
                  ? () => bloc.add(const MicEvent.start())
                  : () => bloc.add(const MicEvent.stop()), // If not yet listening for speech start, otherwise stop
              child: Icon(!state.isListening ? Icons.mic_off_outlined : Icons.mic_none),
              backgroundColor: !state.isListening ? const Color(0xff2972ff) : Colors.red,
            );
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<MicBloc>(), child: this);
  }
}
