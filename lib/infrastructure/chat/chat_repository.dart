import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:eida/infrastructure/chat/chat_dtos.dart';
import 'package:injectable/injectable.dart';

import '../../domain/chat/chat.dart';
import '../../domain/chat/chat_failure.dart';
import '../../domain/chat/i_chat_repository.dart';
import '../../domain/core/value_objects.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  @override
  Future<Either<ChatFailure, Chat>> getChatByType(
      StringSingleLine chatType) async {
    try {
      final chatResponse = await http.get(Uri.parse(
          'https://my-json-server.typicode.com/tryninjastudy/dummyapi/db'));

      final chat = jsonDecode(chatResponse.body) as Map;

      if (chat[chatType] == null) {
        return left(const ChatFailure.unexpected());
      }
      return right(
        Chat(
          id: UniqueId(),
          type: chat[chatType],
          chatItems: (chat[chatType] as List)
              .map((e) => ChatItemDto.fromJson(e).toDomain())
              .toList(),
        ),
      );
    } catch (e) {
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, List<Chat>>> getSavedChats() {
    // TODO: implement getSavedChats
    throw UnimplementedError();
  }

  @override
  Future<Either<ChatFailure, Unit>> saveChat(Chat chat) {
    // TODO: implement saveChat
    throw UnimplementedError();
  }
}
