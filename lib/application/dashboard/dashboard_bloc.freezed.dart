// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardEventTearOff {
  const _$DashboardEventTearOff();

  GetSavedChats getSavedChats() {
    return const GetSavedChats();
  }
}

/// @nodoc
const $DashboardEvent = _$DashboardEventTearOff();

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSavedChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedChats value) getSavedChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSavedChats value)? getSavedChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedChats value)? getSavedChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  final DashboardEvent _value;
  // ignore: unused_field
  final $Res Function(DashboardEvent) _then;
}

/// @nodoc
abstract class $GetSavedChatsCopyWith<$Res> {
  factory $GetSavedChatsCopyWith(
          GetSavedChats value, $Res Function(GetSavedChats) then) =
      _$GetSavedChatsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSavedChatsCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements $GetSavedChatsCopyWith<$Res> {
  _$GetSavedChatsCopyWithImpl(
      GetSavedChats _value, $Res Function(GetSavedChats) _then)
      : super(_value, (v) => _then(v as GetSavedChats));

  @override
  GetSavedChats get _value => super._value as GetSavedChats;
}

/// @nodoc

class _$GetSavedChats implements GetSavedChats {
  const _$GetSavedChats();

  @override
  String toString() {
    return 'DashboardEvent.getSavedChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetSavedChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSavedChats,
  }) {
    return getSavedChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSavedChats,
  }) {
    return getSavedChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSavedChats,
    required TResult orElse(),
  }) {
    if (getSavedChats != null) {
      return getSavedChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSavedChats value) getSavedChats,
  }) {
    return getSavedChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSavedChats value)? getSavedChats,
  }) {
    return getSavedChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSavedChats value)? getSavedChats,
    required TResult orElse(),
  }) {
    if (getSavedChats != null) {
      return getSavedChats(this);
    }
    return orElse();
  }
}

abstract class GetSavedChats implements DashboardEvent {
  const factory GetSavedChats() = _$GetSavedChats;
}

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _DashboardState call({required List<Chat> chats, required int tries}) {
    return _DashboardState(
      chats: chats,
      tries: tries,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  List<Chat> get chats => throw _privateConstructorUsedError;
  int get tries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call({List<Chat> chats, int tries});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? chats = freezed,
    Object? tries = freezed,
  }) {
    return _then(_value.copyWith(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      tries: tries == freezed
          ? _value.tries
          : tries // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Chat> chats, int tries});
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object? chats = freezed,
    Object? tries = freezed,
  }) {
    return _then(_DashboardState(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      tries: tries == freezed
          ? _value.tries
          : tries // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState({required this.chats, required this.tries});

  @override
  final List<Chat> chats;
  @override
  final int tries;

  @override
  String toString() {
    return 'DashboardState(chats: $chats, tries: $tries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardState &&
            const DeepCollectionEquality().equals(other.chats, chats) &&
            const DeepCollectionEquality().equals(other.tries, tries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chats),
      const DeepCollectionEquality().hash(tries));

  @JsonKey(ignore: true)
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required List<Chat> chats, required int tries}) = _$_DashboardState;

  @override
  List<Chat> get chats;
  @override
  int get tries;
  @override
  @JsonKey(ignore: true)
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
