// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  GetChat getChat(String type) {
    return GetChat(
      type,
    );
  }

  NextChat nextChat() {
    return const NextChat();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) getChat,
    required TResult Function() nextChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type)? getChat,
    TResult Function()? nextChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? getChat,
    TResult Function()? nextChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetChat value) getChat,
    required TResult Function(NextChat value) nextChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetChat value)? getChat,
    TResult Function(NextChat value)? nextChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetChat value)? getChat,
    TResult Function(NextChat value)? nextChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class $GetChatCopyWith<$Res> {
  factory $GetChatCopyWith(GetChat value, $Res Function(GetChat) then) =
      _$GetChatCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class _$GetChatCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $GetChatCopyWith<$Res> {
  _$GetChatCopyWithImpl(GetChat _value, $Res Function(GetChat) _then)
      : super(_value, (v) => _then(v as GetChat));

  @override
  GetChat get _value => super._value as GetChat;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(GetChat(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetChat implements GetChat {
  const _$GetChat(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'ChatEvent.getChat(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetChat &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  $GetChatCopyWith<GetChat> get copyWith =>
      _$GetChatCopyWithImpl<GetChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) getChat,
    required TResult Function() nextChat,
  }) {
    return getChat(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type)? getChat,
    TResult Function()? nextChat,
  }) {
    return getChat?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? getChat,
    TResult Function()? nextChat,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetChat value) getChat,
    required TResult Function(NextChat value) nextChat,
  }) {
    return getChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetChat value)? getChat,
    TResult Function(NextChat value)? nextChat,
  }) {
    return getChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetChat value)? getChat,
    TResult Function(NextChat value)? nextChat,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(this);
    }
    return orElse();
  }
}

abstract class GetChat implements ChatEvent {
  const factory GetChat(String type) = _$GetChat;

  String get type;
  @JsonKey(ignore: true)
  $GetChatCopyWith<GetChat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextChatCopyWith<$Res> {
  factory $NextChatCopyWith(NextChat value, $Res Function(NextChat) then) =
      _$NextChatCopyWithImpl<$Res>;
}

/// @nodoc
class _$NextChatCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $NextChatCopyWith<$Res> {
  _$NextChatCopyWithImpl(NextChat _value, $Res Function(NextChat) _then)
      : super(_value, (v) => _then(v as NextChat));

  @override
  NextChat get _value => super._value as NextChat;
}

/// @nodoc

class _$NextChat implements NextChat {
  const _$NextChat();

  @override
  String toString() {
    return 'ChatEvent.nextChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NextChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) getChat,
    required TResult Function() nextChat,
  }) {
    return nextChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String type)? getChat,
    TResult Function()? nextChat,
  }) {
    return nextChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? getChat,
    TResult Function()? nextChat,
    required TResult orElse(),
  }) {
    if (nextChat != null) {
      return nextChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetChat value) getChat,
    required TResult Function(NextChat value) nextChat,
  }) {
    return nextChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetChat value)? getChat,
    TResult Function(NextChat value)? nextChat,
  }) {
    return nextChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetChat value)? getChat,
    TResult Function(NextChat value)? nextChat,
    required TResult orElse(),
  }) {
    if (nextChat != null) {
      return nextChat(this);
    }
    return orElse();
  }
}

abstract class NextChat implements ChatEvent {
  const factory NextChat() = _$NextChat;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  ChatLoading loading() {
    return const ChatLoading();
  }

  ChatLoaded loaded(Chat chat, Chat currentChat, int tries, bool isFinished) {
    return ChatLoaded(
      chat,
      currentChat,
      tries,
      isFinished,
    );
  }

  ChatError error(ChatFailure failure) {
    return ChatError(
      failure,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Chat chat, Chat currentChat, int tries, bool isFinished)
        loaded,
    required TResult Function(ChatFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatLoaded value) loaded,
    required TResult Function(ChatError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class $ChatLoadingCopyWith<$Res> {
  factory $ChatLoadingCopyWith(
          ChatLoading value, $Res Function(ChatLoading) then) =
      _$ChatLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatLoadingCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatLoadingCopyWith<$Res> {
  _$ChatLoadingCopyWithImpl(
      ChatLoading _value, $Res Function(ChatLoading) _then)
      : super(_value, (v) => _then(v as ChatLoading));

  @override
  ChatLoading get _value => super._value as ChatLoading;
}

/// @nodoc

class _$ChatLoading implements ChatLoading {
  const _$ChatLoading();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Chat chat, Chat currentChat, int tries, bool isFinished)
        loaded,
    required TResult Function(ChatFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatLoaded value) loaded,
    required TResult Function(ChatError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatLoading implements ChatState {
  const factory ChatLoading() = _$ChatLoading;
}

/// @nodoc
abstract class $ChatLoadedCopyWith<$Res> {
  factory $ChatLoadedCopyWith(
          ChatLoaded value, $Res Function(ChatLoaded) then) =
      _$ChatLoadedCopyWithImpl<$Res>;
  $Res call({Chat chat, Chat currentChat, int tries, bool isFinished});

  $ChatCopyWith<$Res> get chat;
  $ChatCopyWith<$Res> get currentChat;
}

/// @nodoc
class _$ChatLoadedCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatLoadedCopyWith<$Res> {
  _$ChatLoadedCopyWithImpl(ChatLoaded _value, $Res Function(ChatLoaded) _then)
      : super(_value, (v) => _then(v as ChatLoaded));

  @override
  ChatLoaded get _value => super._value as ChatLoaded;

  @override
  $Res call({
    Object? chat = freezed,
    Object? currentChat = freezed,
    Object? tries = freezed,
    Object? isFinished = freezed,
  }) {
    return _then(ChatLoaded(
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      currentChat == freezed
          ? _value.currentChat
          : currentChat // ignore: cast_nullable_to_non_nullable
              as Chat,
      tries == freezed
          ? _value.tries
          : tries // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }

  @override
  $ChatCopyWith<$Res> get currentChat {
    return $ChatCopyWith<$Res>(_value.currentChat, (value) {
      return _then(_value.copyWith(currentChat: value));
    });
  }
}

/// @nodoc

class _$ChatLoaded implements ChatLoaded {
  const _$ChatLoaded(this.chat, this.currentChat, this.tries, this.isFinished);

  @override
  final Chat chat;
  @override
  final Chat currentChat;
  @override
  final int tries;
  @override
  final bool isFinished;

  @override
  String toString() {
    return 'ChatState.loaded(chat: $chat, currentChat: $currentChat, tries: $tries, isFinished: $isFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatLoaded &&
            const DeepCollectionEquality().equals(other.chat, chat) &&
            const DeepCollectionEquality()
                .equals(other.currentChat, currentChat) &&
            const DeepCollectionEquality().equals(other.tries, tries) &&
            const DeepCollectionEquality()
                .equals(other.isFinished, isFinished));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chat),
      const DeepCollectionEquality().hash(currentChat),
      const DeepCollectionEquality().hash(tries),
      const DeepCollectionEquality().hash(isFinished));

  @JsonKey(ignore: true)
  @override
  $ChatLoadedCopyWith<ChatLoaded> get copyWith =>
      _$ChatLoadedCopyWithImpl<ChatLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Chat chat, Chat currentChat, int tries, bool isFinished)
        loaded,
    required TResult Function(ChatFailure failure) error,
  }) {
    return loaded(chat, currentChat, tries, isFinished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
  }) {
    return loaded?.call(chat, currentChat, tries, isFinished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chat, currentChat, tries, isFinished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatLoaded value) loaded,
    required TResult Function(ChatError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChatLoaded implements ChatState {
  const factory ChatLoaded(
      Chat chat, Chat currentChat, int tries, bool isFinished) = _$ChatLoaded;

  Chat get chat;
  Chat get currentChat;
  int get tries;
  bool get isFinished;
  @JsonKey(ignore: true)
  $ChatLoadedCopyWith<ChatLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatErrorCopyWith<$Res> {
  factory $ChatErrorCopyWith(ChatError value, $Res Function(ChatError) then) =
      _$ChatErrorCopyWithImpl<$Res>;
  $Res call({ChatFailure failure});

  $ChatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ChatErrorCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatErrorCopyWith<$Res> {
  _$ChatErrorCopyWithImpl(ChatError _value, $Res Function(ChatError) _then)
      : super(_value, (v) => _then(v as ChatError));

  @override
  ChatError get _value => super._value as ChatError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(ChatError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ChatFailure,
    ));
  }

  @override
  $ChatFailureCopyWith<$Res> get failure {
    return $ChatFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ChatError implements ChatError {
  const _$ChatError(this.failure);

  @override
  final ChatFailure failure;

  @override
  String toString() {
    return 'ChatState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $ChatErrorCopyWith<ChatError> get copyWith =>
      _$ChatErrorCopyWithImpl<ChatError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Chat chat, Chat currentChat, int tries, bool isFinished)
        loaded,
    required TResult Function(ChatFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Chat chat, Chat currentChat, int tries, bool isFinished)?
        loaded,
    TResult Function(ChatFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatLoaded value) loaded,
    required TResult Function(ChatError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatLoaded value)? loaded,
    TResult Function(ChatError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatError implements ChatState {
  const factory ChatError(ChatFailure failure) = _$ChatError;

  ChatFailure get failure;
  @JsonKey(ignore: true)
  $ChatErrorCopyWith<ChatError> get copyWith =>
      throw _privateConstructorUsedError;
}
