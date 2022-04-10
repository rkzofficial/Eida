import 'package:eida/domain/core/entity.dart';
import 'package:eida/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat implements IEntity {
  const factory Chat({
    required UniqueId id,
    required StringSingleLine type,
    required List<ChatItem> chatItems,
  }) = _Chat;
}

@freezed
class ChatItem with _$ChatItem implements IEntity {
  const factory ChatItem({
    required UniqueId id,
    required StringSingleLine user,
    required StringSingleLine message,
  }) = _ChatItem;
}
