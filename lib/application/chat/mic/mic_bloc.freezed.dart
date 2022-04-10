// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MicEventTearOff {
  const _$MicEventTearOff();

  StartMic start() {
    return const StartMic();
  }

  StopMic stop() {
    return const StopMic();
  }
}

/// @nodoc
const $MicEvent = _$MicEventTearOff();

/// @nodoc
mixin _$MicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartMic value) start,
    required TResult Function(StopMic value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartMic value)? start,
    TResult Function(StopMic value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartMic value)? start,
    TResult Function(StopMic value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicEventCopyWith<$Res> {
  factory $MicEventCopyWith(MicEvent value, $Res Function(MicEvent) then) =
      _$MicEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MicEventCopyWithImpl<$Res> implements $MicEventCopyWith<$Res> {
  _$MicEventCopyWithImpl(this._value, this._then);

  final MicEvent _value;
  // ignore: unused_field
  final $Res Function(MicEvent) _then;
}

/// @nodoc
abstract class $StartMicCopyWith<$Res> {
  factory $StartMicCopyWith(StartMic value, $Res Function(StartMic) then) =
      _$StartMicCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartMicCopyWithImpl<$Res> extends _$MicEventCopyWithImpl<$Res>
    implements $StartMicCopyWith<$Res> {
  _$StartMicCopyWithImpl(StartMic _value, $Res Function(StartMic) _then)
      : super(_value, (v) => _then(v as StartMic));

  @override
  StartMic get _value => super._value as StartMic;
}

/// @nodoc

class _$StartMic implements StartMic {
  const _$StartMic();

  @override
  String toString() {
    return 'MicEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartMic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartMic value) start,
    required TResult Function(StopMic value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartMic value)? start,
    TResult Function(StopMic value)? stop,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartMic value)? start,
    TResult Function(StopMic value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartMic implements MicEvent {
  const factory StartMic() = _$StartMic;
}

/// @nodoc
abstract class $StopMicCopyWith<$Res> {
  factory $StopMicCopyWith(StopMic value, $Res Function(StopMic) then) =
      _$StopMicCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopMicCopyWithImpl<$Res> extends _$MicEventCopyWithImpl<$Res>
    implements $StopMicCopyWith<$Res> {
  _$StopMicCopyWithImpl(StopMic _value, $Res Function(StopMic) _then)
      : super(_value, (v) => _then(v as StopMic));

  @override
  StopMic get _value => super._value as StopMic;
}

/// @nodoc

class _$StopMic implements StopMic {
  const _$StopMic();

  @override
  String toString() {
    return 'MicEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StopMic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartMic value) start,
    required TResult Function(StopMic value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartMic value)? start,
    TResult Function(StopMic value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartMic value)? start,
    TResult Function(StopMic value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class StopMic implements MicEvent {
  const factory StopMic() = _$StopMic;
}

/// @nodoc
class _$MicStateTearOff {
  const _$MicStateTearOff();

  _MicState call({required String lastWords, required bool isListening}) {
    return _MicState(
      lastWords: lastWords,
      isListening: isListening,
    );
  }
}

/// @nodoc
const $MicState = _$MicStateTearOff();

/// @nodoc
mixin _$MicState {
  String get lastWords => throw _privateConstructorUsedError;
  bool get isListening => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MicStateCopyWith<MicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicStateCopyWith<$Res> {
  factory $MicStateCopyWith(MicState value, $Res Function(MicState) then) =
      _$MicStateCopyWithImpl<$Res>;
  $Res call({String lastWords, bool isListening});
}

/// @nodoc
class _$MicStateCopyWithImpl<$Res> implements $MicStateCopyWith<$Res> {
  _$MicStateCopyWithImpl(this._value, this._then);

  final MicState _value;
  // ignore: unused_field
  final $Res Function(MicState) _then;

  @override
  $Res call({
    Object? lastWords = freezed,
    Object? isListening = freezed,
  }) {
    return _then(_value.copyWith(
      lastWords: lastWords == freezed
          ? _value.lastWords
          : lastWords // ignore: cast_nullable_to_non_nullable
              as String,
      isListening: isListening == freezed
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MicStateCopyWith<$Res> implements $MicStateCopyWith<$Res> {
  factory _$MicStateCopyWith(_MicState value, $Res Function(_MicState) then) =
      __$MicStateCopyWithImpl<$Res>;
  @override
  $Res call({String lastWords, bool isListening});
}

/// @nodoc
class __$MicStateCopyWithImpl<$Res> extends _$MicStateCopyWithImpl<$Res>
    implements _$MicStateCopyWith<$Res> {
  __$MicStateCopyWithImpl(_MicState _value, $Res Function(_MicState) _then)
      : super(_value, (v) => _then(v as _MicState));

  @override
  _MicState get _value => super._value as _MicState;

  @override
  $Res call({
    Object? lastWords = freezed,
    Object? isListening = freezed,
  }) {
    return _then(_MicState(
      lastWords: lastWords == freezed
          ? _value.lastWords
          : lastWords // ignore: cast_nullable_to_non_nullable
              as String,
      isListening: isListening == freezed
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MicState implements _MicState {
  const _$_MicState({required this.lastWords, required this.isListening});

  @override
  final String lastWords;
  @override
  final bool isListening;

  @override
  String toString() {
    return 'MicState(lastWords: $lastWords, isListening: $isListening)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MicState &&
            const DeepCollectionEquality().equals(other.lastWords, lastWords) &&
            const DeepCollectionEquality()
                .equals(other.isListening, isListening));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lastWords),
      const DeepCollectionEquality().hash(isListening));

  @JsonKey(ignore: true)
  @override
  _$MicStateCopyWith<_MicState> get copyWith =>
      __$MicStateCopyWithImpl<_MicState>(this, _$identity);
}

abstract class _MicState implements MicState {
  const factory _MicState(
      {required String lastWords, required bool isListening}) = _$_MicState;

  @override
  String get lastWords;
  @override
  bool get isListening;
  @override
  @JsonKey(ignore: true)
  _$MicStateCopyWith<_MicState> get copyWith =>
      throw _privateConstructorUsedError;
}
