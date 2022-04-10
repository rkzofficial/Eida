import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:eida/infrastructure/chat/chat_dtos.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../domain/chat/chat.dart';
import '../../domain/chat/chat_failure.dart';
import '../../domain/chat/i_chat_repository.dart';
import '../../domain/core/value_objects.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final Box _box;

  ChatRepository(this._box);

  @override
  Future<Either<ChatFailure, Chat>> getChatByType(StringSingleLine chatType) async {
    try {
      final chatResponse = await http.get(Uri.parse('https://my-json-server.typicode.com/tryninjastudy/dummyapi/db'));

      final chat = jsonDecode(chatResponse.body) as Map;

      if (!chat.containsKey(chatType.getOrCrash())) {
        return left(const ChatFailure.unexpected());
      }

      return right(
        Chat(
          id: UniqueId(),
          type: chatType,
          chatItems: (chat[chatType.getOrCrash()] as List).map((e) => ChatItemDto.fromJson(e).toDomain()).toList().expand((i) => i).toList(),
        ),
      );
    } catch (e) {
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, List<Chat>>> getSavedChats() async {
    try {
      final chats = _box.values.map((e) {
        final chat = jsonDecode(e) as Map;
        return Chat(
          id: UniqueId.fromUniqueString(chat['id']),
          type: StringSingleLine(chat['type']),
          chatItems: chat['chatItems']
              .map<ChatItem>(
                (e) => ChatItem(
                  id: UniqueId.fromUniqueString(e['id']),
                  user: StringSingleLine(e['user']),
                  message: StringSingleLine(
                    e['message'],
                  ),
                ),
              )
              .toList(),
        );
      }).toList();
      return right(chats);
    } catch (e) {
      return left(const ChatFailure.cacheError());
    }
  }

  @override
  Future<Either<ChatFailure, Unit>> saveChat(Chat chat) async {
    try {
      final json = {
        'id': chat.id.getOrCrash(),
        'type': chat.type.getOrCrash(),
        'chatItems': chat.chatItems
            .map((e) => {
                  'id': e.id.getOrCrash(),
                  'user': e.user.getOrCrash(),
                  'message': e.message.getOrCrash(),
                })
            .toList()
      };
      final res = jsonEncode(json);
      await _box.put(chat.id.getOrCrash(), res);
      return right(unit);
    } catch (e) {
      return left(const ChatFailure.cacheError());
    }
  }

  @override
  Future<Either<ChatFailure, Unit>> deleteChat(Chat chat) async {
    try {
      await _box.delete(chat.id.getOrCrash());
      return right(unit);
    } catch (e) {
      return left(const ChatFailure.cacheError());
    }
  }
}
