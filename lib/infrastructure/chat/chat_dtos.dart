import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/chat/chat.dart';
import '../../domain/core/value_objects.dart';

part 'chat_dtos.freezed.dart';
part 'chat_dtos.g.dart';

@freezed
class ChatItemDto with _$ChatItemDto {
  const factory ChatItemDto({
    required String bot,
    required String human,
  }) = _ChatItemDto;

  factory ChatItemDto.fromJson(Map<String, dynamic> json) => _$ChatItemDtoFromJson(json);
}

extension ChatItemDtoX on ChatItemDto {
  List<ChatItem> toDomain() {
    return [
      ChatItem(
        id: UniqueId(),
        user: StringSingleLine('bot'),
        message: StringSingleLine(bot),
      ),
      ChatItem(
        id: UniqueId(),
        user: StringSingleLine('human'),
        message: StringSingleLine(human),
      )
    ];
  }
}
