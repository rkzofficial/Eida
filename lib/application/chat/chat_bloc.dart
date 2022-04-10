import 'package:bloc/bloc.dart';
import 'package:eida/domain/chat/chat.dart';
import 'package:eida/domain/chat/chat_failure.dart';
import 'package:eida/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/chat/i_chat_repository.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;
  final List<ChatItem> chatItems = [];
  Chat? _chat;

  ChatBloc(this._chatRepository) : super(const ChatState.loading()) {
    on<ChatEvent>(_onEvent);
  }

  void _onEvent(ChatEvent event, Emitter<ChatState> emit) async {
    await event.map(
      getChat: (e) async {
        emit(const ChatState.loading());
        final failureOrChat = await _chatRepository.getChatByType(StringSingleLine(e.type));

        failureOrChat.fold((f) => emit(ChatState.error(f)), (chat) {
          _chat = chat;
          chatItems.add(_chat!.chatItems[0]);
          chatItems.add(_chat!.chatItems[1]);
          _chat!.chatItems.removeAt(0);
          _chat!.chatItems.removeAt(0);
          emit(ChatState.loaded(chat, Chat(id: chat.id, type: chat.type, chatItems: chatItems)));
        });
      },
      nextChat: (e) {
        if (_chat == null) {
          return;
        }

        chatItems.add(_chat!.chatItems[0]);
        chatItems.add(_chat!.chatItems[1]);
        _chat!.chatItems.removeAt(0);
        _chat!.chatItems.removeAt(0);

        emit(ChatState.loaded(_chat!, Chat(id: _chat!.id, type: _chat!.type, chatItems: chatItems)));

        // if (chatItems.length == _chat!.chatItems.length) {
        //   emit(const ChatState.finished());
        //   return;
        // }

        // chatItems.add(_chat!.chatItems[chatItems.length]);
        // emit(ChatState.loaded(_chat!, Chat(id: _chat!.id, type: _chat!.type, chatItems: chatItems)));
      },
    );
  }
}
