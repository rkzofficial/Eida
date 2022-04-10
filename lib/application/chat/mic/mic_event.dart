part of 'mic_bloc.dart';

@freezed
class MicEvent with _$MicEvent {
  const factory MicEvent.start() = StartMic;
  const factory MicEvent.stop() = StopMic;
}
