// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatItemDto _$ChatItemDtoFromJson(Map<String, dynamic> json) {
  return _ChatItemDto.fromJson(json);
}

/// @nodoc
class _$ChatItemDtoTearOff {
  const _$ChatItemDtoTearOff();

  _ChatItemDto call({required String bot, required String human}) {
    return _ChatItemDto(
      bot: bot,
      human: human,
    );
  }

  ChatItemDto fromJson(Map<String, Object?> json) {
    return ChatItemDto.fromJson(json);
  }
}

/// @nodoc
const $ChatItemDto = _$ChatItemDtoTearOff();

/// @nodoc
mixin _$ChatItemDto {
  String get bot => throw _privateConstructorUsedError;
  String get human => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatItemDtoCopyWith<ChatItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemDtoCopyWith<$Res> {
  factory $ChatItemDtoCopyWith(
          ChatItemDto value, $Res Function(ChatItemDto) then) =
      _$ChatItemDtoCopyWithImpl<$Res>;
  $Res call({String bot, String human});
}

/// @nodoc
class _$ChatItemDtoCopyWithImpl<$Res> implements $ChatItemDtoCopyWith<$Res> {
  _$ChatItemDtoCopyWithImpl(this._value, this._then);

  final ChatItemDto _value;
  // ignore: unused_field
  final $Res Function(ChatItemDto) _then;

  @override
  $Res call({
    Object? bot = freezed,
    Object? human = freezed,
  }) {
    return _then(_value.copyWith(
      bot: bot == freezed
          ? _value.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as String,
      human: human == freezed
          ? _value.human
          : human // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatItemDtoCopyWith<$Res>
    implements $ChatItemDtoCopyWith<$Res> {
  factory _$ChatItemDtoCopyWith(
          _ChatItemDto value, $Res Function(_ChatItemDto) then) =
      __$ChatItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String bot, String human});
}

/// @nodoc
class __$ChatItemDtoCopyWithImpl<$Res> extends _$ChatItemDtoCopyWithImpl<$Res>
    implements _$ChatItemDtoCopyWith<$Res> {
  __$ChatItemDtoCopyWithImpl(
      _ChatItemDto _value, $Res Function(_ChatItemDto) _then)
      : super(_value, (v) => _then(v as _ChatItemDto));

  @override
  _ChatItemDto get _value => super._value as _ChatItemDto;

  @override
  $Res call({
    Object? bot = freezed,
    Object? human = freezed,
  }) {
    return _then(_ChatItemDto(
      bot: bot == freezed
          ? _value.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as String,
      human: human == freezed
          ? _value.human
          : human // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatItemDto implements _ChatItemDto {
  const _$_ChatItemDto({required this.bot, required this.human});

  factory _$_ChatItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChatItemDtoFromJson(json);

  @override
  final String bot;
  @override
  final String human;

  @override
  String toString() {
    return 'ChatItemDto(bot: $bot, human: $human)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatItemDto &&
            const DeepCollectionEquality().equals(other.bot, bot) &&
            const DeepCollectionEquality().equals(other.human, human));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bot),
      const DeepCollectionEquality().hash(human));

  @JsonKey(ignore: true)
  @override
  _$ChatItemDtoCopyWith<_ChatItemDto> get copyWith =>
      __$ChatItemDtoCopyWithImpl<_ChatItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatItemDtoToJson(this);
  }
}

abstract class _ChatItemDto implements ChatItemDto {
  const factory _ChatItemDto({required String bot, required String human}) =
      _$_ChatItemDto;

  factory _ChatItemDto.fromJson(Map<String, dynamic> json) =
      _$_ChatItemDto.fromJson;

  @override
  String get bot;
  @override
  String get human;
  @override
  @JsonKey(ignore: true)
  _$ChatItemDtoCopyWith<_ChatItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
