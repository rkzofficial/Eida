part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.getSavedChats() = GetSavedChats;
  const factory DashboardEvent.deleteChat(Chat chat) = DeleteChat;
}
