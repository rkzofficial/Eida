import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'mic_bloc.freezed.dart';
part 'mic_event.dart';
part 'mic_state.dart';

@singleton
class MicBloc extends Bloc<MicEvent, MicState> {
  final _speechToText = SpeechToText();

  MicBloc() : super(MicState.initial()) {
    _initSpeech();
    on<MicEvent>(_onEvent);
  }

  void _onEvent(MicEvent event, Emitter<MicState> emit) async {
    await event.when(start: () async => await _startListening(emit), stop: () async => await _stopListening(emit));
  }

  /// This has to happen only once per app
  void _initSpeech() async {
    await _speechToText.initialize();
  }

  /// Each time to start a speech recognition session
  Future<void> _startListening(Emitter<MicState> emit) async {
    emit(state.copyWith(isListening: true));

    final result = await listen();

    emit(state.copyWith(isListening: false, lastWords: result));
  }

  Future<String> listen() async {
    final completer = Completer<String>();

    await _speechToText.listen(onResult: (result) => completer.complete(result.recognizedWords), partialResults: false);

    return completer.future;
  }

  /// Manually stop the active speech recognition session
  /// Note that there are also timeouts that each platform enforces
  /// and the SpeechToText plugin supports setting timeouts on the
  /// listen method.
  Future<void> _stopListening(Emitter<MicState> emit) async {
    await _speechToText.stop();
    emit(state.copyWith(isListening: false, lastWords: ''));
  }
}
