part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = ChatLoading;
  const factory ChatState.loaded(Chat chat, Chat currentChat, int tries, bool isFinished) = ChatLoaded;
  const factory ChatState.error(ChatFailure failure) = ChatError;
}
