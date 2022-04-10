import 'package:dartz/dartz.dart';

import '../core/value_objects.dart';
import 'chat.dart';
import 'chat_failure.dart';

abstract class IChatRepository {
  Future<Either<ChatFailure, Chat>> getChatByType(StringSingleLine chatType);
  Future<Either<ChatFailure, Unit>> saveChat(Chat chat);
  Future<Either<ChatFailure, Unit>> deleteChat(Chat chat);
  Future<Either<ChatFailure, List<Chat>>> getSavedChats();
}
