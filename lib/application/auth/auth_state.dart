part of 'auth_bloc.dart';

/// The state of the [AuthBloc].
///
/// It already overrides equality.
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(User user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
