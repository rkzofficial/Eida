part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({required List<Chat> chats, required int tries}) = _DashboardState;

  factory DashboardState.initial() => const DashboardState(chats: [], tries: 0);
}
