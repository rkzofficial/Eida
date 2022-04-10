part of 'mic_bloc.dart';

/// The state of the [SignInFormBloc].
///
/// It already overrides equality.
@freezed
class MicState with _$MicState {
  const factory MicState({
    required String lastWords,
    required bool isListening,
  }) = _MicState;

  factory MicState.initial() => const MicState(lastWords: '', isListening: false);
}
