import 'package:bloc/bloc.dart';
import 'package:eida/domain/chat/chat.dart';
import 'package:eida/domain/chat/i_chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final IChatRepository _chatRepository;

  int tries = 0;

  DashboardBloc(this._chatRepository) : super(DashboardState.initial()) {
    on<DashboardEvent>(_onEvent);
  }

  void _onEvent(DashboardEvent event, Emitter<DashboardState> emit) async {
    await event.when(getSavedChats: () async {
      final failureOrChats = await _chatRepository.getSavedChats();
      tries++;
      failureOrChats.fold((l) => null, (r) => emit(state.copyWith(chats: r, tries: tries)));
    });
  }
}
