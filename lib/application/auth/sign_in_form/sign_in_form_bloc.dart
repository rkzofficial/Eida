import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

/// The [SignInFormBloc] is responsible for handling the [SignInFormEvent]s.
///
/// It is a [Bloc] that is used to handle the sign in of the user.
@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
      SignInFormEvent event, Emitter<SignInFormState> emit) async {
    await event.when(
      emailChanged: (emailStr) {
        emit(state.copyWith(
          emailAddress: EmailAddress(emailStr),
          authFailureOrSuccessOption: none(),
        ));
      },
      passwordChanged: (passwordStr) {
        emit(
          state.copyWith(
            password: Password(passwordStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      registerWithEmailAndPasswordPressed: () async {
        await _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
          emit,
        );
      },
      signInWithEmailAndPasswordPressed: () async {
        await _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
          emit,
        );
      },
      signInWithGooglePressed: () async {
        await _performActionOnProviderSignIn(
            _authFacade.signInWithGoogle, emit);
      },
    );
  }

  Future<void> _performActionOnProviderSignIn(
    Future<Either<AuthFailure, Unit>> Function() signIn,
    Emitter<SignInFormState> emit,
  ) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await signIn();

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function({
    required EmailAddress emailAddress,
    required Password password,
  })
          forwardedCall,
      Emitter<SignInFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
