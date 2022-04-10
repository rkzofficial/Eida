part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getChat(String type) = GetChat;
  const factory ChatEvent.nextChat() = NextChat;
}
