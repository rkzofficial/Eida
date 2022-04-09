// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required UniqueId id,
      required StringSingleLine type,
      required List<ChatItem> chatItems}) {
    return _Chat(
      id: id,
      type: type,
      chatItems: chatItems,
    );
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get type => throw _privateConstructorUsedError;
  List<ChatItem> get chatItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call({UniqueId id, StringSingleLine type, List<ChatItem> chatItems});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? chatItems = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as List<ChatItem>,
    ));
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, StringSingleLine type, List<ChatItem> chatItems});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? chatItems = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as List<ChatItem>,
    ));
  }
}

/// @nodoc

class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.id, required this.type, required this.chatItems});

  @override
  final UniqueId id;
  @override
  final StringSingleLine type;
  @override
  final List<ChatItem> chatItems;

  @override
  String toString() {
    return 'Chat(id: $id, type: $type, chatItems: $chatItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chat &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.chatItems, chatItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(chatItems));

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required UniqueId id,
      required StringSingleLine type,
      required List<ChatItem> chatItems}) = _$_Chat;

  @override
  UniqueId get id;
  @override
  StringSingleLine get type;
  @override
  List<ChatItem> get chatItems;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatItemTearOff {
  const _$ChatItemTearOff();

  _ChatItem call(
      {required UniqueId id,
      required StringSingleLine bot,
      required StringSingleLine human}) {
    return _ChatItem(
      id: id,
      bot: bot,
      human: human,
    );
  }
}

/// @nodoc
const $ChatItem = _$ChatItemTearOff();

/// @nodoc
mixin _$ChatItem {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get bot => throw _privateConstructorUsedError;
  StringSingleLine get human => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatItemCopyWith<ChatItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemCopyWith<$Res> {
  factory $ChatItemCopyWith(ChatItem value, $Res Function(ChatItem) then) =
      _$ChatItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, StringSingleLine bot, StringSingleLine human});
}

/// @nodoc
class _$ChatItemCopyWithImpl<$Res> implements $ChatItemCopyWith<$Res> {
  _$ChatItemCopyWithImpl(this._value, this._then);

  final ChatItem _value;
  // ignore: unused_field
  final $Res Function(ChatItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? bot = freezed,
    Object? human = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      bot: bot == freezed
          ? _value.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      human: human == freezed
          ? _value.human
          : human // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
    ));
  }
}

/// @nodoc
abstract class _$ChatItemCopyWith<$Res> implements $ChatItemCopyWith<$Res> {
  factory _$ChatItemCopyWith(_ChatItem value, $Res Function(_ChatItem) then) =
      __$ChatItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, StringSingleLine bot, StringSingleLine human});
}

/// @nodoc
class __$ChatItemCopyWithImpl<$Res> extends _$ChatItemCopyWithImpl<$Res>
    implements _$ChatItemCopyWith<$Res> {
  __$ChatItemCopyWithImpl(_ChatItem _value, $Res Function(_ChatItem) _then)
      : super(_value, (v) => _then(v as _ChatItem));

  @override
  _ChatItem get _value => super._value as _ChatItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? bot = freezed,
    Object? human = freezed,
  }) {
    return _then(_ChatItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      bot: bot == freezed
          ? _value.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      human: human == freezed
          ? _value.human
          : human // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
    ));
  }
}

/// @nodoc

class _$_ChatItem implements _ChatItem {
  const _$_ChatItem({required this.id, required this.bot, required this.human});

  @override
  final UniqueId id;
  @override
  final StringSingleLine bot;
  @override
  final StringSingleLine human;

  @override
  String toString() {
    return 'ChatItem(id: $id, bot: $bot, human: $human)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.bot, bot) &&
            const DeepCollectionEquality().equals(other.human, human));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(bot),
      const DeepCollectionEquality().hash(human));

  @JsonKey(ignore: true)
  @override
  _$ChatItemCopyWith<_ChatItem> get copyWith =>
      __$ChatItemCopyWithImpl<_ChatItem>(this, _$identity);
}

abstract class _ChatItem implements ChatItem {
  const factory _ChatItem(
      {required UniqueId id,
      required StringSingleLine bot,
      required StringSingleLine human}) = _$_ChatItem;

  @override
  UniqueId get id;
  @override
  StringSingleLine get bot;
  @override
  StringSingleLine get human;
  @override
  @JsonKey(ignore: true)
  _$ChatItemCopyWith<_ChatItem> get copyWith =>
      throw _privateConstructorUsedError;
}
