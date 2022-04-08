part of 'auth_bloc.dart';

/// The event of the [AuthBloc].
///
/// It contains events that are responsible for authenticating the user.
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}
